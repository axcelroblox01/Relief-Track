-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2026 at 03:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `relieftrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `action` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_id`, `staff_id`, `action`, `description`, `module`, `reference_id`, `created_at`) VALUES
(1, 1, 'Created Operation', 'Created Typhoon Relief Operation.', 'Operations', 1, '2026-09-09 09:57:17'),
(2, 2, 'Approved Volunteer', 'Approved John Reyes as a volunteer.', 'Volunteers', 1, '2026-09-09 09:57:17'),
(3, 1, 'Verified Donation', 'Verified donation from ABC Foundation.', 'Donations', 1, '2026-09-09 09:57:17'),
(4, 2, 'Created Shipment', 'Created shipment SHIP-2026-001.', 'Shipments', 1, '2026-09-09 09:57:17'),
(5, 1, 'Updated Donation', 'Updated donation checkpoint to verified', 'Donations', 1, '2026-10-08 12:23:31'),
(6, 1, 'Updated Donation', 'Updated donation checkpoint to verified', 'Donations', 3, '2026-10-08 12:23:42'),
(7, 1, 'Updated Donation', 'Updated donation checkpoint to allocated', 'Donations', 1, '2026-10-08 13:29:56'),
(8, 1, 'Updated Donation', 'Updated donation checkpoint to allocated', 'Donations', 3, '2026-10-08 13:30:02'),
(9, 1, 'Created Operation', '11th ave Warehouse was added to the response plan.', 'Operations', 3, '2026-10-08 13:38:06'),
(10, NULL, 'Pledged Donation', 'Test Donor created donation RT-000007.', 'Donations', 7, '2026-10-08 13:46:06'),
(11, NULL, 'Pledged Donation', 'Jan Andrew Rabino created donation RT-000008.', 'Donations', 8, '2026-10-08 14:20:20'),
(12, NULL, 'Pledged Donation', 'Jan Andrew Rabino created donation RT-000009.', 'Donations', 9, '2026-10-20 15:51:28'),
(13, 1, 'Updated Donation', 'Updated donation checkpoint to received', 'Donations', 9, '2026-10-20 15:52:56'),
(14, 1, 'Updated Donation', 'Updated donation checkpoint to verified', 'Donations', 9, '2026-10-20 15:52:56'),
(15, 1, 'Updated Donation', 'Updated donation checkpoint to allocated', 'Donations', 9, '2026-10-20 15:52:57'),
(16, 1, 'Updated Donation', 'Updated donation checkpoint to in_transit', 'Donations', 9, '2026-10-20 15:52:58'),
(17, 1, 'Updated Donation', 'Updated donation checkpoint to distributed', 'Donations', 9, '2026-10-20 15:52:58'),
(18, NULL, 'Registered Volunteer', 'Jan Andrew Rabino registered as a volunteer.', 'Volunteers', 4, '2026-10-20 15:55:06'),
(19, NULL, 'Pledged Donation', 'ReliefTrack Audit Smoke Test created donation RT-000010.', 'Donations', 10, '2026-10-20 16:34:37'),
(20, NULL, 'Pledged Donation', 'ReliefTrack API Smoke Test created donation RT-000011.', 'Donations', 11, '2026-10-20 17:34:20'),
(21, NULL, 'Pledged Donation', 'Roundtrip Test created donation RT-000012.', 'Donations', 12, '2026-10-20 17:45:31'),
(22, NULL, 'Pledged Donation', 'Proxy Test created donation RT-000013.', 'Donations', 13, '2026-10-20 17:50:18'),
(23, NULL, 'Pledged Donation', 'ReliefTrack API Smoke Test created donation RT-000014.', 'Donations', 14, '2026-10-20 18:08:33'),
(24, NULL, 'Pledged Donation', 'Persistence Check created donation RT-000015.', 'Donations', 15, '2026-10-20 18:13:24'),
(25, NULL, 'Pledged Donation', 'ReliefTrack API Smoke Test created donation RT-000016.', 'Donations', 16, '2026-10-20 18:15:27'),
(26, 1, 'Checked In Volunteer', 'Jan Andrew Rabino checked in for Morning Warehouse Shift.', 'Volunteers', 4, '2026-10-22 16:05:26'),
(27, NULL, 'Registered Volunteer', 'jose rizal registered as a volunteer.', 'Volunteers', 5, '2026-10-22 16:07:48'),
(28, NULL, 'Registered Volunteer', 'J Rabino registered as a volunteer.', 'Volunteers', 4, '2026-10-22 16:10:59'),
(29, NULL, 'Registered Volunteer', 'John Rabino registered as a volunteer.', 'Volunteers', 4, '2026-10-23 08:11:31'),
(30, NULL, 'Registered Volunteer', 'Test Volunteer registered as a volunteer.', 'Volunteers', 6, '2026-10-23 08:17:55'),
(31, NULL, 'Registered Volunteer', 'aldrin rabino registered as a volunteer.', 'Volunteers', 7, '2026-10-23 08:32:03'),
(32, NULL, 'Registered Volunteer', 'aldrin rabino registered as a volunteer.', 'Volunteers', 7, '2026-10-23 08:33:02'),
(33, NULL, 'Registered Volunteer', 'aldrin rabino registered as a volunteer.', 'Volunteers', 7, '2026-10-23 08:37:17'),
(34, 1, 'Checked In Volunteer', 'aldrin rabino checked in for Evacuation Center Assistance.', 'Volunteers', 7, '2026-10-23 08:58:27'),
(35, NULL, 'Registered Volunteer', 'naz registered as a volunteer.', 'Volunteers', 8, '2026-10-23 09:00:40'),
(36, 1, 'Checked In Volunteer', 'naz checked in for Evacuation Center Assistance.', 'Volunteers', 8, '2026-10-23 09:01:54'),
(37, NULL, 'Registered Volunteer', 'Verify Test registered as a volunteer.', 'Volunteers', 9, '2026-10-23 09:12:59'),
(38, 1, 'Approve Volunteer Verification', 'John Reyes verification was approved.', 'Volunteers', 1, '2026-10-23 09:13:24'),
(39, NULL, 'Registered Volunteer', 'jus registered as a volunteer.', 'Volunteers', 8, '2026-10-23 09:23:07'),
(40, NULL, 'Registered Volunteer', 'qwer registered as a volunteer.', 'Volunteers', 8, '2026-10-23 09:38:13'),
(41, NULL, 'Registered Volunteer', 'Jan Andrew Rabino registered as a volunteer.', 'Volunteers', 4, '2026-10-23 09:44:07'),
(42, NULL, 'Registered Volunteer', 'tqwer registered as a volunteer.', 'Volunteers', 10, '2026-10-23 09:49:59'),
(43, 1, 'Deleted Volunteer', 'Ana Cruz was removed.', 'Volunteers', 2, '2026-10-23 11:05:05'),
(44, 1, 'Deleted Volunteer', 'Jan Andrew Rabino was removed.', 'Volunteers', 4, '2026-10-23 11:05:05'),
(45, 1, 'Deleted Volunteer', 'jose rizal was removed.', 'Volunteers', 5, '2026-10-23 11:05:05'),
(46, 1, 'Deleted Volunteer', 'Pedro Garcia was removed.', 'Volunteers', 3, '2026-10-23 11:05:06'),
(47, 1, 'Deleted Volunteer', 'tqwer was removed.', 'Volunteers', 10, '2026-10-23 11:05:06'),
(48, NULL, 'Registered Volunteer', 'Jan Andrew Rabino registered as a volunteer.', 'Volunteers', 11, '2026-10-23 11:07:06'),
(49, NULL, 'Registered Volunteer', 'nazi registered as a volunteer.', 'Volunteers', 8, '2026-10-23 11:26:44'),
(50, 1, 'Updated Donation', 'Updated donation checkpoint to received', 'Donations', 8, '2026-10-23 12:06:35'),
(51, 1, 'Updated Donation', 'Updated donation checkpoint to verified', 'Donations', 8, '2026-10-23 12:06:36'),
(52, 1, 'Updated Donation', 'Updated donation checkpoint to allocated', 'Donations', 8, '2026-10-23 12:06:38'),
(53, 1, 'Updated Donation', 'Updated donation checkpoint to in_transit', 'Donations', 8, '2026-10-23 12:06:39'),
(54, 1, 'Deleted Donation', 'Donation RT-000009 was removed from the donation ledger.', 'Donations', 9, '2026-10-23 12:06:41'),
(55, NULL, 'Pledged Donation', 'Jan Andrew Rabino created donation RT-000017.', 'Donations', 17, '2026-10-23 12:46:10'),
(56, 1, 'Updated Donation', 'Updated donation checkpoint to received', 'Donations', 17, '2026-10-23 13:03:46'),
(57, 1, 'Shipment Packed', 'SHIP-2026-002 marked packed.', 'Shipments', 2, '2026-10-23 13:34:39'),
(58, NULL, 'Registered Volunteer', 'izhi registered as a volunteer.', 'Volunteers', 12, '2026-10-23 13:41:32'),
(59, NULL, 'Registered Volunteer', 'Jan registered as a volunteer.', 'Volunteers', 13, '2026-10-23 13:50:11'),
(60, 1, 'Created Driver Account', 'Jan can now sign in to view shipments for the assigned vehicle.', 'Logistics', 1, '2026-10-23 14:04:30'),
(61, 1, 'Updated Donation', 'Updated donation checkpoint to received', 'Donations', 7, '2026-10-23 14:05:04'),
(62, 1, 'Updated Donation', 'Updated donation checkpoint to verified', 'Donations', 7, '2026-10-23 14:05:06'),
(63, 1, 'Updated Donation', 'Updated donation checkpoint to allocated', 'Donations', 7, '2026-10-23 14:05:09'),
(64, 1, 'Updated Donation', 'Updated donation checkpoint to verified', 'Donations', 17, '2026-10-23 14:05:20'),
(65, NULL, 'Shipment Delivered', 'SHIP-2026-001 marked delivered.', 'Shipments', 1, '2026-10-23 14:06:28'),
(66, NULL, 'Pledged Donation', 'just created donation RT-000018.', 'Donations', 18, '2026-10-23 14:07:35'),
(67, 1, 'Updated Donation', 'Updated donation checkpoint to received', 'Donations', 18, '2026-10-23 14:08:12'),
(68, 1, 'Updated Donation', 'Updated donation checkpoint to verified', 'Donations', 18, '2026-10-23 14:08:28'),
(69, 1, 'Updated Donation', 'Updated donation checkpoint to allocated', 'Donations', 17, '2026-10-23 14:13:37'),
(70, 1, 'Updated Donation', 'Updated donation checkpoint to allocated', 'Donations', 18, '2026-10-23 14:19:37'),
(71, 1, 'Prepared Shipment', 'Shipment prepared for donation RT-000018.', 'Shipments', 3, '2026-10-23 14:19:58'),
(72, 1, 'Prepared Shipment', 'Shipment prepared for donation RT-000017.', 'Shipments', 4, '2026-10-23 14:33:39'),
(73, 1, 'Shipment Packed', 'SHIP-2026-000017-01 marked packed.', 'Shipments', 4, '2026-10-23 14:35:44'),
(74, 1, 'Shipment Packed', 'SHIP-2026-000018-01 marked packed.', 'Shipments', 3, '2026-10-23 14:35:51'),
(75, NULL, 'Shipment In transit', 'SHIP-2026-000018-01 marked in_transit.', 'Shipments', 3, '2026-10-23 14:40:59'),
(76, NULL, 'Shipment Delivered', 'SHIP-2026-000018-01 marked delivered.', 'Shipments', 3, '2026-10-23 14:42:55'),
(77, 1, 'Updated Donation', 'Updated donation checkpoint to distributed', 'Donations', 3, '2026-10-23 14:44:41'),
(78, 1, 'Updated Donation', 'Updated donation checkpoint to allocated', 'Donations', 2, '2026-10-23 14:44:45'),
(79, 1, 'Shipment Cancelled', 'SHIP-2026-000017-01 marked cancelled.', 'Shipments', 4, '2026-10-23 14:45:02'),
(80, 1, 'Shipment Cancelled', 'SHIP-2026-002 marked cancelled.', 'Shipments', 2, '2026-10-23 14:45:05'),
(81, 1, 'Cleared Volunteer Accounts', 'All volunteer accounts and their skills, shift signups, verifications, and login codes were removed so volunteers can register again.', 'Volunteers', 0, '2026-10-23 15:05:19'),
(82, NULL, 'Registered Volunteer', 'Jan Andrew Rabino registered as a volunteer.', 'Volunteers', 14, '2026-10-23 15:12:55'),
(83, NULL, 'Registered Volunteer', 'Ja registered as a volunteer.', 'Volunteers', 15, '2026-10-23 15:18:48'),
(84, 1, 'Approve Skill Verification', 'Ja First Aid verification was approved.', 'Volunteers', 15, '2026-10-23 15:26:09'),
(85, 1, 'Checked In Volunteer', 'Ja checked in for Relief Distribution Shift.', 'Volunteers', 15, '2026-10-23 15:37:32'),
(86, NULL, 'Registered Volunteer', 'Jan Andrew Rabino registered as a volunteer.', 'Volunteers', 15, '2026-10-23 15:44:46'),
(87, 1, 'Approve Skill Verification', 'Jan Andrew Rabino First Aid verification was approved.', 'Volunteers', 15, '2026-10-23 15:45:57'),
(88, NULL, 'Registered Volunteer', 'naz registered as a volunteer.', 'Volunteers', 16, '2026-10-23 15:48:01'),
(89, 1, 'Approve Skill Verification', 'naz First Aid verification was approved.', 'Volunteers', 16, '2026-10-23 15:49:33'),
(90, 1, 'Checked In Volunteer', 'naz checked in for Evacuation Center Assistance.', 'Volunteers', 16, '2026-10-23 15:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `alert_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `operation_id` int(11) DEFAULT NULL,
  `alert_type` enum('inventory','volunteer','donation','shipment','operation','system') DEFAULT 'system',
  `title` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `priority` enum('low','medium','high','critical') DEFAULT 'medium',
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`alert_id`, `staff_id`, `operation_id`, `alert_type`, `title`, `message`, `priority`, `is_read`, `created_at`) VALUES
(1, 1, 1, 'inventory', 'Low Rice Stock', 'The relief center has reached low stock for rice.', 'high', 0, '2026-09-09 09:57:17'),
(2, 1, 1, 'inventory', 'Low Water Stock', 'Bottled water at the relief center is below the minimum stock level.', 'high', 0, '2026-09-09 09:57:17'),
(3, 2, 1, 'donation', 'Donation Received', 'A new donation from ABC Foundation has been received.', 'medium', 0, '2026-09-09 09:57:17'),
(4, 2, 1, 'shipment', 'Shipment In Transit', 'Shipment SHIP-2026-001 is currently in transit.', 'medium', 0, '2026-09-09 09:57:17'),
(5, NULL, NULL, 'inventory', 'Low stock: Rice at Barangay Relief Center', 'Rice is low stock at Barangay Relief Center.', 'high', 0, '2026-10-20 17:34:20'),
(6, NULL, NULL, 'inventory', 'Low stock: Bottled Water at Barangay Relief Center', 'Bottled Water is low stock at Barangay Relief Center.', 'high', 0, '2026-10-20 17:34:20'),
(7, NULL, NULL, 'system', 'Critical need: Rice at Barangay Relief Center', 'Critical supplies are still required: Rice at Barangay Relief Center.', 'critical', 0, '2026-10-20 17:34:20'),
(8, NULL, NULL, 'system', 'Critical need: First Aid Kits at Community Evacuation Center', 'Critical supplies are still required: First Aid Kits at Community Evacuation Center.', 'critical', 0, '2026-10-20 17:34:20'),
(9, NULL, NULL, 'donation', 'Stalled donation: RT-000001', 'ABC Foundation · RT-000001 has had no checkpoint update for more than 3 days.', 'medium', 0, '2026-10-20 17:34:20'),
(10, NULL, NULL, 'donation', 'Stalled donation: RT-000003', 'Community Supporter · RT-000003 has had no checkpoint update for more than 3 days.', 'medium', 0, '2026-10-20 17:34:20'),
(11, NULL, NULL, 'donation', 'Stalled donation: RT-000007', 'Test Donor · RT-000007 has had no checkpoint update for more than 3 days.', 'medium', 0, '2026-10-20 17:34:20'),
(12, NULL, NULL, 'donation', 'Stalled donation: RT-000008', 'Jan Andrew Rabino · RT-000008 has had no checkpoint update for more than 3 days.', 'medium', 0, '2026-10-20 17:34:20'),
(13, NULL, NULL, 'inventory', 'Out of stock: First Aid Kits at Main Relief Warehouse', 'First Aid Kits is out of stock at Main Relief Warehouse.', 'critical', 0, '2026-10-23 15:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `api_rate_limits`
--

CREATE TABLE `api_rate_limits` (
  `limit_id` bigint(20) UNSIGNED NOT NULL,
  `endpoint` varchar(80) NOT NULL,
  `key_hash` char(64) NOT NULL,
  `requested_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_rate_limits`
--

INSERT INTO `api_rate_limits` (`limit_id`, `endpoint`, `key_hash`, `requested_at`) VALUES
(2, 'donation_list.php', '5a6ea8ba7acc82da773e18d3ae1033836a4f35f1e2ba1376a79097f3ad6d5104', '2026-10-23 10:48:42'),
(5, 'donation_list.php', '5a6ea8ba7acc82da773e18d3ae1033836a4f35f1e2ba1376a79097f3ad6d5104', '2026-10-23 10:52:01'),
(3, 'donation_list.php', 'b25b1c594b0f2141a755de83747083a084e43900f7351ebe5fbd2beb02e6a3ef', '2026-10-23 10:49:06'),
(4, 'donation_list.php', 'ddc0a2acae59adcec36ebcf109e26ab5cea17313c9158c5c37287ca8b39800de', '2026-10-23 10:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `donation_id` int(11) NOT NULL,
  `donor_name` varchar(150) NOT NULL,
  `donor_email` varchar(150) DEFAULT NULL,
  `donor_phone` varchar(30) DEFAULT NULL,
  `donation_type` enum('cash','goods','mixed') NOT NULL DEFAULT 'goods',
  `amount` decimal(12,2) DEFAULT 0.00,
  `operation_id` int(11) DEFAULT NULL,
  `preferred_location_id` int(11) DEFAULT NULL,
  `donor_preference` text DEFAULT NULL,
  `status` enum('pledged','received','verified','allocated','in_transit','distributed','cancelled') DEFAULT 'pledged',
  `donated_at` datetime DEFAULT current_timestamp(),
  `drop_off_location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`donation_id`, `donor_name`, `donor_email`, `donor_phone`, `donation_type`, `amount`, `operation_id`, `preferred_location_id`, `donor_preference`, `status`, `donated_at`, `drop_off_location_id`) VALUES
(1, 'ABC Foundation', 'contact@abcfoundation.org', '09170000001', 'goods', 0.00, 1, 1, 'Please prioritize food for affected families.', 'distributed', '2026-09-09 05:57:17', NULL),
(2, 'Juan Family', 'juanfamily@example.com', '09170000002', 'goods', 0.00, 1, 2, 'Donate to families affected by the typhoon.', 'allocated', '2026-09-09 05:57:17', NULL),
(3, 'Community Supporter', 'support@example.com', '09170000003', 'cash', 10000.00, 1, NULL, 'Use for essential relief supplies.', 'distributed', '2026-09-09 05:57:17', NULL),
(7, 'Test Donor', 'test@example.com', '09170000000', 'goods', 0.00, 1, 1, 'Test', 'allocated', '2026-10-08 09:46:06', NULL),
(8, 'Jan Andrew Rabino', 'janandrew1922@gmail.com', '09942552068', 'goods', 0.00, 3, NULL, 'Bringing goods to a drop-off center', 'in_transit', '2026-10-08 10:20:20', NULL),
(17, 'Jan Andrew Rabino', 'janandrew1922@gmail.com', '098765678', 'goods', 0.00, 1, 2, 'Goods for Barangay Relief Center · Drop-off center: Main Relief Warehouse', 'allocated', '2026-10-23 08:46:10', 1),
(18, 'just', 'just@gmail.com', '09878909822', 'goods', 0.00, 1, 3, 'Goods for Community Evacuation Center · Drop-off center: Main Relief Warehouse', 'distributed', '2026-10-23 10:07:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donation_items`
--

CREATE TABLE `donation_items` (
  `donation_item_id` int(11) NOT NULL,
  `donation_id` int(11) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit` varchar(50) DEFAULT 'pcs',
  `condition_status` enum('new','good','used','damaged') DEFAULT 'new',
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donation_items`
--

INSERT INTO `donation_items` (`donation_item_id`, `donation_id`, `item_name`, `category`, `quantity`, `unit`, `condition_status`, `notes`) VALUES
(1, 1, 'Rice', 'Food', 50, 'sacks', 'new', '25kg sacks'),
(2, 1, 'Bottled Water', 'Water', 200, 'bottles', 'new', NULL),
(3, 2, 'Blankets', 'Clothing', 50, 'pcs', 'new', NULL),
(4, 2, 'Canned Goods', 'Food', 100, 'cans', 'new', NULL),
(8, 7, 'Rice', 'Food', 1, 'sack', 'new', NULL),
(9, 8, 'First Aid Kits', 'Medical', 10, 'pcs', 'new', NULL),
(17, 17, 'Rice', 'Food', 5, 'pcs', 'new', NULL),
(18, 18, 'First Aid Kits', 'Medical', 15, 'pcs', 'new', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donation_updates`
--

CREATE TABLE `donation_updates` (
  `update_id` int(11) NOT NULL,
  `donation_id` int(11) NOT NULL,
  `status` enum('pledged','received','verified','allocated','in_transit','distributed','cancelled') NOT NULL,
  `message` text DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donation_updates`
--

INSERT INTO `donation_updates` (`update_id`, `donation_id`, `status`, `message`, `updated_by`, `created_at`, `location`) VALUES
(1, 1, 'pledged', 'Donation was registered in the system.', 1, '2026-09-09 09:57:17', NULL),
(2, 1, 'received', 'Donation arrived at the main warehouse.', 2, '2026-09-09 09:57:17', NULL),
(3, 1, 'verified', 'Donation contents were verified.', 1, '2026-09-09 09:57:17', NULL),
(4, 2, 'pledged', 'Donation was registered in the system.', 2, '2026-09-09 09:57:17', NULL),
(5, 2, 'received', 'Donation was received at the relief center.', 2, '2026-09-09 09:57:17', NULL),
(6, 1, 'verified', 'Contents verified confirmed at Main Relief Warehouse.', 1, '2026-10-08 12:23:31', NULL),
(7, 3, 'verified', 'Contents verified confirmed at Caloocan Distribution Hub.', 1, '2026-10-08 12:23:42', NULL),
(8, 1, 'allocated', 'Allocated to a community confirmed at Main Relief Warehouse.', 1, '2026-10-08 13:29:56', NULL),
(9, 3, 'allocated', 'Allocated to a community confirmed at Caloocan Distribution Hub.', 1, '2026-10-08 13:30:02', NULL),
(13, 7, 'pledged', 'Donation was registered in the system.', NULL, '2026-10-08 13:46:06', NULL),
(14, 8, 'pledged', 'Donation was registered in the system.', NULL, '2026-10-08 14:20:20', NULL),
(28, 8, 'received', 'Received at the hub confirmed at Caloocan Distribution Hub.', 1, '2026-10-23 12:06:35', NULL),
(29, 8, 'verified', 'Contents verified confirmed at Caloocan Distribution Hub.', 1, '2026-10-23 12:06:36', NULL),
(30, 8, 'allocated', 'Allocated to a community confirmed at Caloocan Distribution Hub.', 1, '2026-10-23 12:06:38', NULL),
(31, 8, 'in_transit', 'On the way confirmed at Caloocan Distribution Hub.', 1, '2026-10-23 12:06:39', NULL),
(32, 17, 'pledged', 'Donation was registered in the system.', NULL, '2026-10-23 12:46:10', NULL),
(33, 17, 'received', 'Received at the hub confirmed at Barangay Relief Center.', 1, '2026-10-23 13:03:46', 'Barangay Relief Center'),
(34, 7, 'received', 'Received at the hub confirmed at Main Relief Warehouse.', 1, '2026-10-23 14:05:04', 'Main Relief Warehouse'),
(35, 7, 'verified', 'Contents verified confirmed at Main Relief Warehouse.', 1, '2026-10-23 14:05:06', 'Main Relief Warehouse'),
(36, 7, 'allocated', 'Allocated to a community confirmed at Main Relief Warehouse.', 1, '2026-10-23 14:05:09', 'Main Relief Warehouse'),
(37, 17, 'verified', 'Contents verified confirmed at Barangay Relief Center.', 1, '2026-10-23 14:05:20', 'Barangay Relief Center'),
(38, 1, 'distributed', 'SHIP-2026-001 was delivered successfully.', NULL, '2026-10-23 14:06:28', 'Barangay Relief Center'),
(39, 18, 'pledged', 'Donation was registered in the system.', NULL, '2026-10-23 14:07:35', NULL),
(40, 18, 'received', 'Received at the hub confirmed at Main Relief Warehouse.', 1, '2026-10-23 14:08:12', 'Main Relief Warehouse'),
(41, 18, 'verified', 'Contents verified confirmed at Main Relief Warehouse.', 1, '2026-10-23 14:08:28', 'Main Relief Warehouse'),
(42, 17, 'allocated', 'Allocated to a community confirmed at Barangay Relief Center.', 1, '2026-10-23 14:13:37', 'Barangay Relief Center'),
(43, 18, 'allocated', 'Allocated to a community confirmed at Community Evacuation Center.', 1, '2026-10-23 14:19:37', 'Community Evacuation Center'),
(44, 17, 'allocated', 'Pickup site set while preparing the shipment.', 1, '2026-10-23 14:33:39', 'Main Relief Warehouse'),
(45, 18, 'in_transit', 'SHIP-2026-000018-01 departed the hub.', NULL, '2026-10-23 14:40:59', 'Main Relief Warehouse'),
(46, 18, 'distributed', 'SHIP-2026-000018-01 was delivered successfully.', NULL, '2026-10-23 14:42:55', 'Community Evacuation Center'),
(47, 3, 'distributed', 'Funds delivered confirmed at Caloocan Distribution Hub.', 1, '2026-10-23 14:44:41', 'Caloocan Distribution Hub'),
(48, 2, 'allocated', 'Allocated to a community confirmed at Barangay Relief Center.', 1, '2026-10-23 14:44:45', 'Barangay Relief Center'),
(49, 17, 'allocated', 'SHIP-2026-000017-01 was cancelled before dispatch. The donation remains allocated.', 1, '2026-10-23 14:45:02', 'Main Relief Warehouse'),
(50, 2, 'allocated', 'SHIP-2026-002 was cancelled before dispatch. The donation remains allocated.', 1, '2026-10-23 14:45:05', 'Main Relief Warehouse');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(190) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `full_name`, `email`, `password_hash`, `status`, `created_at`) VALUES
(1, 'Jan', 'driver@relieftrack.com', '$2y$10$vP6gFY4IMGXHRfsYja1tJ.QKsbENLXDZvHXia9ZvMuzvBbIvQr3pW', 'active', '2026-10-23 14:04:30'),
(2, 'Mark Santos', 'driver@relieftrack.local', '$2y$10$uBbPBE7MeIVSiL2MukqB4.FOnpkpDL803jr7Uy2L6k5yrX7v8Jfiy', 'active', '2026-10-23 14:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `item_name` varchar(150) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `unit` varchar(50) DEFAULT 'pcs',
  `minimum_stock` int(11) DEFAULT 0,
  `status` enum('available','low_stock','out_of_stock') DEFAULT 'available',
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `location_id`, `item_name`, `category`, `quantity`, `unit`, `minimum_stock`, `status`, `last_updated`) VALUES
(1, 1, 'Rice', 'Food', 75, 'sacks', 20, 'available', '2026-09-09 09:57:17'),
(2, 1, 'Bottled Water', 'Water', 300, 'bottles', 100, 'available', '2026-09-09 09:57:17'),
(3, 1, 'Canned Goods', 'Food', 150, 'cans', 50, 'available', '2026-09-09 09:57:17'),
(4, 1, 'Blankets', 'Clothing', 35, 'pcs', 30, 'available', '2026-09-09 09:57:17'),
(5, 2, 'Rice', 'Food', 15, 'sacks', 20, 'low_stock', '2026-09-09 09:57:17'),
(6, 2, 'Bottled Water', 'Water', 50, 'bottles', 100, 'low_stock', '2026-09-09 09:57:17'),
(7, NULL, 'Rice', 'Food', 1, 'sack', 0, 'available', '2026-10-23 14:05:06'),
(8, NULL, 'Rice', 'Food', 5, 'pcs', 0, 'available', '2026-10-23 14:05:20'),
(9, 1, 'First Aid Kits', 'Medical', 0, 'pcs', 0, 'out_of_stock', '2026-10-23 14:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `operation_id` int(11) DEFAULT NULL,
  `location_name` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `location_type` enum('warehouse','evacuation_center','distribution_center','donation_center','affected_area','other') DEFAULT 'other',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `contact_phone` varchar(30) DEFAULT NULL,
  `operated_by` varchar(150) DEFAULT NULL,
  `photo_url` text DEFAULT NULL,
  `feedback_rating` decimal(2,1) DEFAULT NULL,
  `feedback_count` int(10) UNSIGNED DEFAULT NULL,
  `detail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `operation_id`, `location_name`, `address`, `city`, `province`, `latitude`, `longitude`, `location_type`, `status`, `created_at`, `contact_phone`, `operated_by`, `photo_url`, `feedback_rating`, `feedback_count`, `detail`) VALUES
(1, 1, 'Main Relief Warehouse', 'Caloocan City', 'Caloocan', 'Metro Manila', 14.6549000, 120.9836000, 'warehouse', 'active', '2026-09-09 09:57:17', NULL, 'Caloocan ReliefTrack Team', '/85d10986-1e79-4d08-9a63-921b83635322.jpg', NULL, NULL, 'Main sorting and repacking hub.'),
(2, 1, 'Barangay Relief Center', 'Barangay Hall', 'Caloocan', 'Metro Manila', 14.6420000, 120.9820000, 'distribution_center', 'active', '2026-09-09 09:57:17', NULL, 'Caloocan ReliefTrack Team', '/85d10986-1e79-4d08-9a63-921b83635322.jpg', NULL, NULL, 'Family relief pack distribution point.'),
(3, 1, 'Community Evacuation Center', 'Community Center', 'Caloocan', 'Metro Manila', 14.6510000, 120.9950000, 'evacuation_center', 'active', '2026-09-09 09:57:17', NULL, 'Caloocan ReliefTrack Team', '/85d10986-1e79-4d08-9a63-921b83635322.jpg', NULL, NULL, 'Priority area for current response.'),
(4, 3, '11th ave Warehouse checkpoint', '11th Avenue, Barangay 97, Zone 9, Grace Park East, District 2, Caloocan, Northern Manila District, Metro Manila, 1405, Philippines', 'Caloocan', 'Metro Manila', 14.6526136, 120.9946311, 'distribution_center', 'active', '2026-10-08 13:38:06', NULL, 'Caloocan ReliefTrack Team', '/85d10986-1e79-4d08-9a63-921b83635322.jpg', NULL, NULL, 'ReliefTrack checkpoint.');

-- --------------------------------------------------------

--
-- Table structure for table `login_codes`
--

CREATE TABLE `login_codes` (
  `code_id` int(11) NOT NULL,
  `volunteer_id` int(11) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `code` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `failed_attempts` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `request_ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_codes`
--

INSERT INTO `login_codes` (`code_id`, `volunteer_id`, `email`, `code`, `expires_at`, `used`, `created_at`, `failed_attempts`, `request_ip`) VALUES
(41, 14, 'janandrew131@gmail.com', '$2y$10$38w52QiE/NbyEMyqt9Akj.ykXx3nxQ/tXL6EULFQlCG2uN4jmWdKO', '2026-10-23 11:22:55', 1, '2026-10-23 15:12:55', 0, '127.0.0.1'),
(42, 15, 'janandrew1922@gmail.com', '$2y$10$/5uiGB7U96.MGSuWZZNV5.gvX8U0Gy7TS7Edegy1LWMOAyKzU57nG', '2026-10-23 11:28:48', 1, '2026-10-23 15:18:48', 0, '127.0.0.1'),
(43, 15, 'janandrew1922@gmail.com', '$2y$10$RE.cs8It0QMZfW/gfb6QTeULJFzdpoabVy7m9mg20NeQcl4zNKjim', '2026-10-23 11:46:12', 1, '2026-10-23 15:36:12', 0, '127.0.0.1'),
(44, 15, 'janandrew1922@gmail.com', '$2y$10$uEGhaW.KbJM4WC8MSJja1OU9yqusfrOpRa.taJM/SWpUcruoFasre', '2026-10-23 11:54:47', 1, '2026-10-23 15:44:47', 0, '127.0.0.1'),
(45, 16, 'nazichim03@gmail.com', '$2y$10$Q4PK0GQ5UFMsVajKvPa5pOg/Dn1cSc3OktX5bJRXY8/KXe0OB9faq', '2026-10-23 11:58:02', 1, '2026-10-23 15:48:02', 1, '127.0.0.1'),
(46, 16, 'nazichim03@gmail.com', '$2y$10$vihtx2.zeLhhr.JiWfXO8e/ZNQmQDY2MqSHiVnFSAk.dEzTYrpxGa', '2026-10-23 12:00:39', 1, '2026-10-23 15:50:39', 0, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `needed_items`
--

CREATE TABLE `needed_items` (
  `needed_item_id` int(11) NOT NULL,
  `operation_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `item_name` varchar(150) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `quantity_needed` int(11) NOT NULL DEFAULT 0,
  `quantity_received` int(11) NOT NULL DEFAULT 0,
  `priority` enum('low','medium','high','critical') DEFAULT 'medium',
  `status` enum('needed','partially_fulfilled','fulfilled') DEFAULT 'needed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `needed_items`
--

INSERT INTO `needed_items` (`needed_item_id`, `operation_id`, `location_id`, `item_name`, `category`, `quantity_needed`, `quantity_received`, `priority`, `status`, `created_at`) VALUES
(1, 1, 2, 'Rice', 'Food', 100, 70, 'critical', 'partially_fulfilled', '2026-09-09 09:57:17'),
(2, 1, 2, 'Bottled Water', 'Water', 300, 250, 'high', 'partially_fulfilled', '2026-09-09 09:57:17'),
(3, 1, 3, 'Blankets', 'Clothing', 100, 35, 'high', 'partially_fulfilled', '2026-09-09 09:57:17'),
(4, 1, 3, 'First Aid Kits', 'Medical', 50, 15, 'critical', 'partially_fulfilled', '2026-09-09 09:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `operation_id` int(11) NOT NULL,
  `operation_name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `operation_type` enum('disaster_response','relief_distribution','rescue','donation_drive','other') DEFAULT 'disaster_response',
  `status` enum('planned','active','completed','cancelled') DEFAULT 'planned',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `volunteers_needed` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`operation_id`, `operation_name`, `description`, `operation_type`, `status`, `start_date`, `end_date`, `created_by`, `created_at`, `volunteers_needed`) VALUES
(1, 'Typhoon Relief Operation', 'Relief distribution for communities affected by the typhoon.', 'disaster_response', 'active', '2026-09-01', '2026-09-30', 1, '2026-09-09 09:57:17', 0),
(2, 'Community Donation Drive', 'Collection and distribution of food and essential goods.', 'donation_drive', 'planned', '2026-10-01', '2026-10-15', 2, '2026-09-09 09:57:17', 0),
(3, '11th ave Warehouse', 'repacking', 'disaster_response', 'active', '2026-10-08', '2026-10-31', 1, '2026-10-08 13:38:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `operation_locations`
--

CREATE TABLE `operation_locations` (
  `operation_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operation_locations`
--

INSERT INTO `operation_locations` (`operation_id`, `location_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `shift_id` int(11) NOT NULL,
  `operation_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `shift_name` varchar(100) NOT NULL,
  `shift_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `required_volunteers` int(11) DEFAULT 1,
  `status` enum('open','full','ongoing','completed','cancelled') DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`shift_id`, `operation_id`, `location_id`, `shift_name`, `shift_date`, `start_time`, `end_time`, `required_volunteers`, `status`) VALUES
(1, 1, 1, 'Morning Warehouse Shift', '2026-09-10', '08:00:00', '12:00:00', 5, 'open'),
(2, 1, 2, 'Relief Distribution Shift', '2026-09-10', '13:00:00', '17:00:00', 8, 'open'),
(3, 1, 3, 'Evacuation Center Assistance', '2026-09-11', '08:00:00', '16:00:00', 10, 'open');

-- --------------------------------------------------------

--
-- Stand-in structure for view `shift_signups`
-- (See below for the actual view)
--
CREATE TABLE `shift_signups` (
`signup_id` int(11)
,`volunteer_id` int(11)
,`shift_id` int(11)
,`status` enum('pending','approved','rejected','completed','cancelled')
,`checked_in_at` datetime
,`checked_out_at` datetime
,`notes` text
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `shift_skills`
--

CREATE TABLE `shift_skills` (
  `shift_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shift_skills`
--

INSERT INTO `shift_skills` (`shift_id`, `skill_id`) VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(2, 5),
(3, 1),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `shipment_id` int(11) NOT NULL,
  `operation_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `donation_id` int(11) DEFAULT NULL,
  `source_location_id` int(11) DEFAULT NULL,
  `destination_location_id` int(11) DEFAULT NULL,
  `shipment_reference` varchar(50) NOT NULL,
  `item_description` text DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `status` enum('pending','packed','in_transit','delivered','cancelled') DEFAULT 'pending',
  `dispatched_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `current_latitude` decimal(10,7) DEFAULT NULL,
  `current_longitude` decimal(10,7) DEFAULT NULL,
  `gps_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`shipment_id`, `operation_id`, `vehicle_id`, `donation_id`, `source_location_id`, `destination_location_id`, `shipment_reference`, `item_description`, `quantity`, `status`, `dispatched_at`, `delivered_at`, `notes`, `created_at`, `current_latitude`, `current_longitude`, `gps_updated_at`) VALUES
(1, 1, 1, 1, 1, 2, 'SHIP-2026-001', 'Rice and bottled water', 100, 'delivered', NULL, '2026-10-23 10:06:28', NULL, '2026-09-09 09:57:17', 14.6832994, 121.0053301, '2026-10-23 09:32:42'),
(2, 1, 2, 2, 1, 3, 'SHIP-2026-002', 'Blankets and canned goods', 75, 'cancelled', NULL, NULL, NULL, '2026-09-09 09:57:17', NULL, NULL, NULL),
(3, 1, 1, 18, 1, 3, 'SHIP-2026-000018-01', '15 pcs First Aid Kits', 15, 'delivered', '2026-10-23 10:40:59', '2026-10-23 10:42:55', 'Relief shipment for RT-000018', '2026-10-23 14:19:58', 14.6833000, 121.0053495, '2026-10-23 10:41:01'),
(4, 1, 2, 17, 1, 2, 'SHIP-2026-000017-01', '5 pcs Rice', 5, 'cancelled', NULL, NULL, 'Relief shipment for RT-000017', '2026-10-23 14:33:39', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `signups`
--

CREATE TABLE `signups` (
  `signup_id` int(11) NOT NULL,
  `volunteer_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `signup_status` enum('pending','approved','rejected','completed','cancelled') DEFAULT 'pending',
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signups`
--

INSERT INTO `signups` (`signup_id`, `volunteer_id`, `shift_id`, `signup_status`, `check_in`, `check_out`, `notes`, `created_at`) VALUES
(20, 14, 1, 'pending', NULL, NULL, NULL, '2026-10-23 15:12:55'),
(22, 15, 2, 'pending', '2026-10-23 11:37:32', NULL, NULL, '2026-10-23 15:18:48'),
(24, 16, 3, 'approved', '2026-10-23 11:50:00', NULL, NULL, '2026-10-23 15:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `skill_name`, `description`, `created_at`) VALUES
(1, 'First Aid', 'Basic emergency and first aid assistance', '2026-09-09 09:57:17'),
(2, 'Driving', 'Vehicle driving and transportation', '2026-09-09 09:57:17'),
(3, 'Packing', 'Packing and organizing relief goods', '2026-09-09 09:57:17'),
(4, 'Medical Assistance', 'Assistance with basic medical activities', '2026-09-09 09:57:17'),
(5, 'Distribution', 'Distribution of relief goods', '2026-09-09 09:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `staff_users`
--

CREATE TABLE `staff_users` (
  `staff_id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','staff','coordinator') NOT NULL DEFAULT 'staff',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_users`
--

INSERT INTO `staff_users` (`staff_id`, `full_name`, `email`, `password`, `role`, `status`, `created_at`) VALUES
(1, 'System Administrator', 'admin@relieftrack.com', '$2y$10$5aBvod97SgOiqDNZb9Y4pexGCWml/XqPYOXus88e7TGpF8mkQGzJ.', 'admin', 'active', '2026-09-09 09:57:17'),
(2, 'Maria Santos', 'maria@relieftrack.com', '$2y$10$eY4Gud/dCfLVw3PcmqdjnOOcxSr69ZlduJc2e.TGyZt6T03BkWkzq', 'staff', 'active', '2026-09-09 09:57:17'),
(3, 'Juan Dela Cruz', 'juan@relieftrack.com', '$2y$10$rs0SMTLAqLnygWHrPir8Hue0dzU9/5SCJDgH.7WH55opk9P8ulcxC', 'coordinator', 'active', '2026-09-09 09:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_name` varchar(100) NOT NULL,
  `plate_number` varchar(30) NOT NULL,
  `vehicle_type` varchar(100) DEFAULT NULL,
  `capacity` varchar(100) DEFAULT NULL,
  `driver_name` varchar(150) DEFAULT NULL,
  `driver_contact` varchar(30) DEFAULT NULL,
  `status` enum('available','in_use','maintenance','unavailable') DEFAULT 'available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `driver_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`vehicle_id`, `vehicle_name`, `plate_number`, `vehicle_type`, `capacity`, `driver_name`, `driver_contact`, `status`, `created_at`, `driver_id`) VALUES
(1, 'Relief Truck 1', 'ABC-1234', 'Truck', '2 tons', 'Jan', '09999999999', 'available', '2026-09-09 09:57:17', 1),
(2, 'Relief Van 1', 'XYZ-5678', 'Van', '1 ton', 'Mark Santos', '09181234567', 'available', '2026-09-09 09:57:17', 2);

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `volunteer_id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `emergency_contact` varchar(150) DEFAULT NULL,
  `emergency_phone` varchar(30) DEFAULT NULL,
  `status` enum('pending','active','inactive','suspended') DEFAULT 'pending',
  `registered_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `driving_license_number` varchar(80) DEFAULT NULL,
  `driving_license_type` varchar(80) DEFAULT NULL,
  `first_aid_qualification` varchar(255) DEFAULT NULL,
  `last_check_in` datetime DEFAULT NULL,
  `verification_photo` varchar(255) DEFAULT NULL,
  `verification_status` enum('unverified','pending','approved','rejected') NOT NULL DEFAULT 'unverified',
  `verification_submitted_at` datetime DEFAULT NULL,
  `verification_reviewed_by` int(11) DEFAULT NULL,
  `verification_reviewed_at` datetime DEFAULT NULL,
  `verification_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`volunteer_id`, `full_name`, `email`, `phone`, `address`, `emergency_contact`, `emergency_phone`, `status`, `registered_at`, `driving_license_number`, `driving_license_type`, `first_aid_qualification`, `last_check_in`, `verification_photo`, `verification_status`, `verification_submitted_at`, `verification_reviewed_by`, `verification_reviewed_at`, `verification_notes`) VALUES
(14, 'Jan Andrew Rabino', 'janandrew131@gmail.com', '09876545677654', 'oiuytyuyt', 'oiuyuiuy', '09878998765', 'pending', '2026-10-23 15:12:55', '089898989', 'B', '', NULL, NULL, 'unverified', NULL, NULL, NULL, NULL),
(15, 'Jan Andrew Rabino', 'janandrew1922@gmail.com', '09876543456', 'oiuyfdsdfg', 'lokjhgfdsdfg', '0987656789', 'active', '2026-10-23 15:18:48', '', '', 'Nurse', '2026-10-23 11:37:32', NULL, 'unverified', NULL, NULL, NULL, NULL),
(16, 'naz', 'nazichim03@gmail.com', '0987654567', 'okjhgfdfgh', 'oiyfdfg', '098765678', 'active', '2026-10-23 15:48:01', '', '', 'nurse', '2026-10-23 11:50:00', NULL, 'unverified', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_skills`
--

CREATE TABLE `volunteer_skills` (
  `volunteer_skill_id` int(11) NOT NULL,
  `volunteer_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `skill_level` enum('beginner','intermediate','advanced','expert') DEFAULT 'beginner'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteer_skills`
--

INSERT INTO `volunteer_skills` (`volunteer_skill_id`, `volunteer_id`, `skill_id`, `skill_level`) VALUES
(30, 14, 2, 'beginner'),
(32, 15, 1, 'beginner'),
(33, 16, 1, 'beginner');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_skill_verifications`
--

CREATE TABLE `volunteer_skill_verifications` (
  `verification_id` int(11) NOT NULL,
  `volunteer_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `photo_filename` varchar(255) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `submitted_at` datetime NOT NULL DEFAULT current_timestamp(),
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteer_skill_verifications`
--

INSERT INTO `volunteer_skill_verifications` (`verification_id`, `volunteer_id`, `skill_id`, `photo_filename`, `status`, `submitted_at`, `reviewed_by`, `reviewed_at`, `notes`) VALUES
(1, 15, 1, 'skill_15_1_1792770310.jpg', 'approved', '2026-10-23 11:45:10', 1, '2026-10-23 11:45:57', NULL),
(3, 16, 1, 'skill_16_1_1792770522.jpg', 'approved', '2026-10-23 11:48:42', 1, '2026-10-23 11:49:33', NULL);

-- --------------------------------------------------------

--
-- Structure for view `shift_signups`
--
DROP TABLE IF EXISTS `shift_signups`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `shift_signups`  AS SELECT `signups`.`signup_id` AS `signup_id`, `signups`.`volunteer_id` AS `volunteer_id`, `signups`.`shift_id` AS `shift_id`, `signups`.`signup_status` AS `status`, `signups`.`check_in` AS `checked_in_at`, `signups`.`check_out` AS `checked_out_at`, `signups`.`notes` AS `notes`, `signups`.`created_at` AS `created_at` FROM `signups` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `idx_activity_log_created` (`created_at`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`alert_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `operation_id` (`operation_id`);

--
-- Indexes for table `api_rate_limits`
--
ALTER TABLE `api_rate_limits`
  ADD PRIMARY KEY (`limit_id`),
  ADD KEY `idx_api_rate_limits_endpoint_key_time` (`endpoint`,`key_hash`,`requested_at`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `operation_id` (`operation_id`),
  ADD KEY `preferred_location_id` (`preferred_location_id`),
  ADD KEY `idx_donations_donor_email` (`donor_email`),
  ADD KEY `idx_donations_donated_at` (`donated_at`);
ALTER TABLE `donations` ADD FULLTEXT KEY `ft_donations_donor_name` (`donor_name`);

--
-- Indexes for table `donation_items`
--
ALTER TABLE `donation_items`
  ADD PRIMARY KEY (`donation_item_id`),
  ADD KEY `idx_donation_items_donation` (`donation_id`);
ALTER TABLE `donation_items` ADD FULLTEXT KEY `ft_donation_items_name` (`item_name`);

--
-- Indexes for table `donation_updates`
--
ALTER TABLE `donation_updates`
  ADD PRIMARY KEY (`update_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `idx_donation_updates_donation` (`donation_id`,`created_at`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `operation_id` (`operation_id`),
  ADD KEY `idx_locations_status_city` (`status`,`city`);

--
-- Indexes for table `login_codes`
--
ALTER TABLE `login_codes`
  ADD PRIMARY KEY (`code_id`),
  ADD KEY `volunteer_id` (`volunteer_id`),
  ADD KEY `idx_login_codes_email_used` (`email`,`used`,`expires_at`),
  ADD KEY `idx_login_codes_ip_created` (`request_ip`,`created_at`);

--
-- Indexes for table `needed_items`
--
ALTER TABLE `needed_items`
  ADD PRIMARY KEY (`needed_item_id`),
  ADD KEY `operation_id` (`operation_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`operation_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_operations_status` (`status`);

--
-- Indexes for table `operation_locations`
--
ALTER TABLE `operation_locations`
  ADD PRIMARY KEY (`operation_id`,`location_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`shift_id`),
  ADD KEY `operation_id` (`operation_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `shift_skills`
--
ALTER TABLE `shift_skills`
  ADD PRIMARY KEY (`shift_id`,`skill_id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`shipment_id`),
  ADD UNIQUE KEY `shipment_reference` (`shipment_reference`),
  ADD KEY `operation_id` (`operation_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `donation_id` (`donation_id`),
  ADD KEY `source_location_id` (`source_location_id`),
  ADD KEY `destination_location_id` (`destination_location_id`);

--
-- Indexes for table `signups`
--
ALTER TABLE `signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD UNIQUE KEY `unique_volunteer_shift` (`volunteer_id`,`shift_id`),
  ADD KEY `idx_signups_volunteer` (`volunteer_id`),
  ADD KEY `idx_signups_shift_status` (`shift_id`,`signup_status`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_id`),
  ADD UNIQUE KEY `skill_name` (`skill_name`);

--
-- Indexes for table `staff_users`
--
ALTER TABLE `staff_users`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD UNIQUE KEY `plate_number` (`plate_number`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`volunteer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `volunteer_skills`
--
ALTER TABLE `volunteer_skills`
  ADD PRIMARY KEY (`volunteer_skill_id`),
  ADD UNIQUE KEY `unique_volunteer_skill` (`volunteer_id`,`skill_id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `volunteer_skill_verifications`
--
ALTER TABLE `volunteer_skill_verifications`
  ADD PRIMARY KEY (`verification_id`),
  ADD UNIQUE KEY `uq_volunteer_skill` (`volunteer_id`,`skill_id`),
  ADD KEY `idx_vsv_status` (`status`),
  ADD KEY `fk_vsv_skill` (`skill_id`),
  ADD KEY `fk_vsv_reviewer` (`reviewed_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `api_rate_limits`
--
ALTER TABLE `api_rate_limits`
  MODIFY `limit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `donation_items`
--
ALTER TABLE `donation_items`
  MODIFY `donation_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `donation_updates`
--
ALTER TABLE `donation_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_codes`
--
ALTER TABLE `login_codes`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `needed_items`
--
ALTER TABLE `needed_items`
  MODIFY `needed_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `operation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `shipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `signups`
--
ALTER TABLE `signups`
  MODIFY `signup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_users`
--
ALTER TABLE `staff_users`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `volunteer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `volunteer_skills`
--
ALTER TABLE `volunteer_skills`
  MODIFY `volunteer_skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `volunteer_skill_verifications`
--
ALTER TABLE `volunteer_skill_verifications`
  MODIFY `verification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD CONSTRAINT `activity_log_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff_users` (`staff_id`) ON DELETE SET NULL;

--
-- Constraints for table `alerts`
--
ALTER TABLE `alerts`
  ADD CONSTRAINT `alerts_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff_users` (`staff_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alerts_ibfk_2` FOREIGN KEY (`operation_id`) REFERENCES `operations` (`operation_id`) ON DELETE CASCADE;

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`operation_id`) REFERENCES `operations` (`operation_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `donations_ibfk_2` FOREIGN KEY (`preferred_location_id`) REFERENCES `locations` (`location_id`) ON DELETE SET NULL;

--
-- Constraints for table `donation_items`
--
ALTER TABLE `donation_items`
  ADD CONSTRAINT `donation_items_ibfk_1` FOREIGN KEY (`donation_id`) REFERENCES `donations` (`donation_id`) ON DELETE CASCADE;

--
-- Constraints for table `donation_updates`
--
ALTER TABLE `donation_updates`
  ADD CONSTRAINT `donation_updates_ibfk_1` FOREIGN KEY (`donation_id`) REFERENCES `donations` (`donation_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `donation_updates_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `staff_users` (`staff_id`) ON DELETE SET NULL;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE SET NULL;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`operation_id`) REFERENCES `operations` (`operation_id`) ON DELETE SET NULL;

--
-- Constraints for table `login_codes`
--
ALTER TABLE `login_codes`
  ADD CONSTRAINT `login_codes_ibfk_1` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteers` (`volunteer_id`) ON DELETE CASCADE;

--
-- Constraints for table `needed_items`
--
ALTER TABLE `needed_items`
  ADD CONSTRAINT `needed_items_ibfk_1` FOREIGN KEY (`operation_id`) REFERENCES `operations` (`operation_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `needed_items_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE SET NULL;

--
-- Constraints for table `operations`
--
ALTER TABLE `operations`
  ADD CONSTRAINT `operations_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `staff_users` (`staff_id`) ON DELETE SET NULL;

--
-- Constraints for table `operation_locations`
--
ALTER TABLE `operation_locations`
  ADD CONSTRAINT `operation_locations_ibfk_1` FOREIGN KEY (`operation_id`) REFERENCES `operations` (`operation_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `operation_locations_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE CASCADE;

--
-- Constraints for table `shifts`
--
ALTER TABLE `shifts`
  ADD CONSTRAINT `shifts_ibfk_1` FOREIGN KEY (`operation_id`) REFERENCES `operations` (`operation_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shifts_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE SET NULL;

--
-- Constraints for table `shift_skills`
--
ALTER TABLE `shift_skills`
  ADD CONSTRAINT `shift_skills_ibfk_1` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`shift_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shift_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_ibfk_1` FOREIGN KEY (`operation_id`) REFERENCES `operations` (`operation_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_ibfk_3` FOREIGN KEY (`donation_id`) REFERENCES `donations` (`donation_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_ibfk_4` FOREIGN KEY (`source_location_id`) REFERENCES `locations` (`location_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_ibfk_5` FOREIGN KEY (`destination_location_id`) REFERENCES `locations` (`location_id`) ON DELETE SET NULL;

--
-- Constraints for table `signups`
--
ALTER TABLE `signups`
  ADD CONSTRAINT `signups_ibfk_1` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteers` (`volunteer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `signups_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`shift_id`) ON DELETE CASCADE;

--
-- Constraints for table `volunteer_skills`
--
ALTER TABLE `volunteer_skills`
  ADD CONSTRAINT `volunteer_skills_ibfk_1` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteers` (`volunteer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `volunteer_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`) ON DELETE CASCADE;

--
-- Constraints for table `volunteer_skill_verifications`
--
ALTER TABLE `volunteer_skill_verifications`
  ADD CONSTRAINT `fk_vsv_reviewer` FOREIGN KEY (`reviewed_by`) REFERENCES `staff_users` (`staff_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vsv_skill` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vsv_volunteer` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteers` (`volunteer_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
