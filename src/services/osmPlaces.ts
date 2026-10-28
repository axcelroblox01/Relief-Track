import type { Coordinates } from '../types/domain';

const OVERPASS_URL = 'https://overpass-api.de/api/interpreter';
const CACHE_PREFIX = 'relieftrack.overpass.v1:';
const CACHE_TTL = 24 * 60 * 60 * 1000;
const FAILURE_TTL = 60 * 1000;
const MIN_REQUEST_GAP = 10000;

interface OverpassElement {
  type: 'node' | 'way' | 'relation';
  id: number;
  lat?: number;
  lon?: number;
  center?: { lat: number; lon: number };
  tags?: Record<string, string>;
}

interface CachedElements {
  expiresAt: number;
  elements: OverpassElement[];
}

export interface OsmPlace {
  id: number;
  type: OverpassElement['type'];
  name: string;
  category: string;
  address: string;
  coordinates: Coordinates;
  phone?: string;
  website?: string;
  openingHours?: string;
  description?: string;
}

const memoryCache = new Map<string, CachedElements>();
const failedAreas = new Map<string, number>();
let nextRequestAt = 0;

function areaKey([latitude, longitude]: Coordinates) {
  return `${latitude.toFixed(4)},${longitude.toFixed(4)}`;
}

function readCache(key: string): OverpassElement[] | null {
  const cached = memoryCache.get(key);
  if (cached && cached.expiresAt > Date.now()) return cached.elements;
  try {
    const persisted = sessionStorage.getItem(CACHE_PREFIX + key);
    if (!persisted) return null;
    const entry = JSON.parse(persisted) as CachedElements;
    if (entry.expiresAt <= Date.now() || !Array.isArray(entry.elements)) {
      sessionStorage.removeItem(CACHE_PREFIX + key);
      return null;
    }
    memoryCache.set(key, entry);
    return entry.elements;
  } catch {
    return null;
  }
}

function writeCache(key: string, elements: OverpassElement[]) {
  const entry = { expiresAt: Date.now() + CACHE_TTL, elements };
  memoryCache.set(key, entry);
  try { sessionStorage.setItem(CACHE_PREFIX + key, JSON.stringify(entry)); } catch { /* Cache is optional when browser storage is full or unavailable. */ }
}

function waitForRequestSlot(signal: AbortSignal) {
  const now = Date.now();
  const slot = Math.max(now, nextRequestAt);
  nextRequestAt = slot + MIN_REQUEST_GAP;
  const delay = slot - now;
  if (delay === 0) return Promise.resolve();
  return new Promise<void>((resolve, reject) => {
    const timer = window.setTimeout(() => {
      signal.removeEventListener('abort', cancel);
      resolve();
    }, delay);
    const cancel = () => {
      window.clearTimeout(timer);
      reject(new DOMException('Aborted', 'AbortError'));
    };
    signal.addEventListener('abort', cancel, { once: true });
  });
}

async function fetchAreaElements(key: string, signal: AbortSignal): Promise<OverpassElement[]> {
  const cached = readCache(key);
  if (cached) return cached;
  const retryAfter = failedAreas.get(key) ?? 0;
  if (retryAfter > Date.now()) throw new Error('OpenStreetMap place lookup is temporarily unavailable.');

  await waitForRequestSlot(signal);
  if (signal.aborted) throw new DOMException('Aborted', 'AbortError');

  const [latitude, longitude] = key.split(',').map(Number);
  const radius = 65;
  const query = `[out:json][timeout:10];(nwr(around:${radius},${latitude},${longitude})["name"];nwr(around:${radius},${latitude},${longitude})["amenity"];nwr(around:${radius},${latitude},${longitude})["shop"];nwr(around:${radius},${latitude},${longitude})["tourism"];nwr(around:${radius},${latitude},${longitude})["building"];nwr(around:${radius},${latitude},${longitude})["office"];nwr(around:${radius},${latitude},${longitude})["leisure"];nwr(around:${radius},${latitude},${longitude})["healthcare"];);out center tags 100;`;

  try {
    const controller = new AbortController();
    const timeout = window.setTimeout(() => controller.abort(), 12000);
    const abortRequest = () => controller.abort();
    signal.addEventListener('abort', abortRequest, { once: true });
    try {
      const response = await fetch(OVERPASS_URL, {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8', Accept: 'application/json' },
        body: `data=${encodeURIComponent(query)}`,
        signal: controller.signal
      });
      if (!response.ok) throw new Error(`OpenStreetMap lookup failed (${response.status}).`);
      const result = await response.json() as { elements?: OverpassElement[] };
      const elements = Array.isArray(result.elements) ? result.elements : [];
      writeCache(key, elements);
      failedAreas.delete(key);
      return elements;
    } finally {
      window.clearTimeout(timeout);
      signal.removeEventListener('abort', abortRequest);
    }
  } catch (error) {
    if (signal.aborted) throw new DOMException('Aborted', 'AbortError');
    failedAreas.set(key, Date.now() + FAILURE_TTL);
    throw error;
  }
}

const categoryKeys = ['amenity', 'shop', 'tourism', 'leisure', 'healthcare', 'office', 'craft', 'public_transport', 'building'] as const;
const displayCategory = (value: string) => value === 'yes' ? 'Building' : value.replace(/_/g, ' ').replace(/\b\w/g, (letter) => letter.toUpperCase());

function placeFromElement(element: OverpassElement, point: Coordinates): { place: OsmPlace; distance: number } | null {
  const tags = element.tags ?? {};
  const latitude = element.center?.lat ?? element.lat;
  const longitude = element.center?.lon ?? element.lon;
  if (latitude === undefined || longitude === undefined) return null;
  const category = categoryKeys.map((key) => tags[key]).find(Boolean);
  if (!category && !tags.name && !tags['addr:full']) return null;
  const address = tags['addr:full'] || [
    [tags['addr:housenumber'], tags['addr:street']].filter(Boolean).join(' '),
    tags['addr:place'], tags['addr:suburb'], tags['addr:city'] || tags['addr:town'] || tags['addr:village'], tags['addr:postcode']
  ].filter(Boolean).join(', ');
  const toRadians = (degrees: number) => degrees * Math.PI / 180;
  const latDiff = toRadians(latitude - point[0]);
  const lonDiff = toRadians(longitude - point[1]);
  const distance = 6371000 * 2 * Math.asin(Math.sqrt(Math.sin(latDiff / 2) ** 2 + Math.cos(toRadians(point[0])) * Math.cos(toRadians(latitude)) * Math.sin(lonDiff / 2) ** 2));
  return {
    distance,
    place: {
      id: element.id,
      type: element.type,
      name: tags.name ?? '',
      category: category ? displayCategory(category) : '',
      address,
      coordinates: [latitude, longitude],
      phone: tags['contact:phone'] || tags.phone,
      website: tags['contact:website'] || tags.website,
      openingHours: tags.opening_hours,
      description: tags.description
    }
  };
}

export async function findOsmPlace(point: Coordinates, signal: AbortSignal): Promise<OsmPlace | null> {
  const elements = await fetchAreaElements(areaKey(point), signal);
  const nearest = elements.map((element) => placeFromElement(element, point)).filter((candidate): candidate is { place: OsmPlace; distance: number } => candidate !== null && candidate.distance <= 90)
    .sort((a, b) => a.distance - b.distance || Number(Boolean(b.place.name)) - Number(Boolean(a.place.name)))[0];
  return nearest?.place ?? null;
}
