-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Apr 19, 2023 at 04:25 AM
-- Server version: 10.4.27-MariaDB-log
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fatimadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) NOT NULL,
  `official_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `recipients` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(50) NOT NULL,
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barangay_clearance`
--

CREATE TABLE `barangay_clearance` (
  `brgy_clearance_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `receipt_number` int(8) NOT NULL,
  `cedula_number` varchar(8) NOT NULL,
  `cedula_issued_at` varchar(50) NOT NULL,
  `cedula_date` date NOT NULL,
  `issued_by` varchar(50) NOT NULL,
  `date_issued` datetime NOT NULL DEFAULT current_timestamp(),
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_clearance`
--

INSERT INTO `barangay_clearance` (`brgy_clearance_id`, `resident_id`, `purpose`, `receipt_number`, `cedula_number`, `cedula_issued_at`, `cedula_date`, `issued_by`, `date_issued`, `price`) VALUES
(1, 15, 'Scholarship Applications', 3453453, '53453453', 'Barangay Fatima, GSC', '2023-03-20', 'Barangay Clerk - Admin', '2023-03-20 09:11:21', '71'),
(2, 15, 'Certification Of Good Conduct', 2342343, '42342342', 'Barangay Fatima, GSC', '2023-03-20', 'Barangay Clerk - Admin', '2023-03-20 09:14:13', '71'),
(3, 15, 'Certification Of Good Conduct', 2342342, '23423423', 'Barangay Fatima, GSC', '2023-03-20', 'Barangay Clerk - Admin', '2023-03-20 09:15:54', '71'),
(4, 12, 'Business Registration', 3453423, '23423423', 'Barangay Fatima, GSC', '2023-03-29', 'Barangay Clerk - Admin', '2023-03-29 13:50:41', '71'),
(5, 22, 'Certification Of Good Conduct', 3453423, '53453453', 'Barangay Fatima, GSC', '2023-03-29', 'Barangay Clerk - Admin', '2023-03-29 13:51:35', '71'),
(6, 21, 'Government Services', 2342343, '53453452', 'Barangay Fatima, GSC', '2023-03-29', 'Barangay Clerk - Admin', '2023-03-29 13:52:07', '71'),
(7, 20, 'Licensing', 3453453, '23423423', 'Barangay Fatima, GSC', '2023-03-19', 'Barangay Clerk - Admin', '2023-03-29 13:54:07', '71'),
(8, 23, 'Employment', 2342342, '53453455', 'Barangay Fatima, GSC', '2023-03-29', 'Barangay Clerk - Admin', '2023-03-29 15:26:22', '71');

-- --------------------------------------------------------

--
-- Table structure for table `business_clearance`
--

CREATE TABLE `business_clearance` (
  `bus_clearance_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `bus_name` varchar(155) NOT NULL,
  `date_issued` date NOT NULL,
  `receipt_number` varchar(155) NOT NULL,
  `bus_type` varchar(155) NOT NULL,
  `price` varchar(155) NOT NULL,
  `user_log` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complainant`
--

CREATE TABLE `complainant` (
  `complainant_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `case_no` int(11) NOT NULL,
  `complainant_id` int(11) NOT NULL,
  `respondent_id` int(11) NOT NULL,
  `mediator_id` int(11) NOT NULL,
  `or_no` int(8) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `complaint_description` varchar(255) NOT NULL,
  `date_of_hearing` datetime NOT NULL,
  `action_taken` varchar(255) NOT NULL,
  `complaint_status` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(50) DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `good_moral_certificate`
--

CREATE TABLE `good_moral_certificate` (
  `good_moral_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `issued_by` varchar(50) NOT NULL,
  `date_issued` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mediator`
--

CREATE TABLE `mediator` (
  `mediator_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `official_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `officials`
--

CREATE TABLE `officials` (
  `official_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `off_position` varchar(20) NOT NULL,
  `term` varchar(50) NOT NULL,
  `first_term_start` date NOT NULL,
  `first_term_end` date DEFAULT NULL,
  `second_term_start` date DEFAULT NULL,
  `second_term_end` date DEFAULT NULL,
  `third_term_start` date DEFAULT NULL,
  `third_term_end` date DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(50) DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `restored_by` varchar(50) DEFAULT NULL,
  `date_restored` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `officials`
--

INSERT INTO `officials` (`official_id`, `resident_id`, `off_position`, `term`, `first_term_start`, `first_term_end`, `second_term_start`, `second_term_end`, `third_term_start`, `third_term_end`, `created_by`, `date_created`, `updated_by`, `date_updated`, `restored_by`, `date_restored`) VALUES
(9, 12, 'Barangay Clerk', '1st Term', '2023-03-18', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-03-18 10:15:46', NULL, NULL, NULL, NULL),
(10, 13, 'Barangay Chairman', '1st Term', '2023-03-18', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-03-18 10:18:43', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `officials_archive`
--

CREATE TABLE `officials_archive` (
  `official_archive_id` int(11) NOT NULL,
  `official_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `off_position` varchar(20) NOT NULL,
  `term` varchar(50) NOT NULL,
  `first_term_start` date NOT NULL,
  `first_term_end` date NOT NULL,
  `second_term_start` date DEFAULT NULL,
  `second_term_end` date DEFAULT NULL,
  `third_term_start` date DEFAULT NULL,
  `third_term_end` date DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(50) DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `remarks` varchar(50) DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `date_archived` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `resident_id` int(11) NOT NULL,
  `resident_no` varchar(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `mid_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `suffix` varchar(10) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `civil_status` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `blood_type` varchar(10) NOT NULL,
  `fourps_status` varchar(5) NOT NULL,
  `disability_status` varchar(30) NOT NULL,
  `type_disability` varchar(50) NOT NULL,
  `senior_status` varchar(20) NOT NULL,
  `educational_attainment` varchar(30) NOT NULL,
  `purok` varchar(20) NOT NULL,
  `street` varchar(50) NOT NULL,
  `lot_number` varchar(20) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `tel_number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `voter_status` varchar(20) NOT NULL,
  `voter_id` varchar(20) DEFAULT NULL,
  `precinct_number` varchar(20) DEFAULT NULL,
  `national_id` varchar(55) DEFAULT NULL,
  `vaccine_status` varchar(10) DEFAULT NULL,
  `vaccine_1` varchar(15) DEFAULT NULL,
  `vaccine_date_1` date DEFAULT NULL,
  `vaccine_2` varchar(15) DEFAULT NULL,
  `vaccine_date_2` date DEFAULT NULL,
  `booster_status` varchar(10) DEFAULT NULL,
  `booster_1` varchar(15) DEFAULT NULL,
  `booster_date_1` date DEFAULT NULL,
  `booster_2` varchar(15) DEFAULT NULL,
  `booster_date_2` date DEFAULT NULL,
  `emergency_person` varchar(255) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `emergency_address` varchar(255) NOT NULL,
  `emergency_contact` varchar(11) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `alien_status` varchar(50) NOT NULL,
  `deceased_status` varchar(50) DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(50) DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `restored_by` varchar(50) DEFAULT NULL,
  `date_restored` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`resident_id`, `resident_no`, `first_name`, `mid_name`, `last_name`, `suffix`, `sex`, `date_of_birth`, `place_of_birth`, `civil_status`, `nationality`, `occupation`, `religion`, `blood_type`, `fourps_status`, `disability_status`, `type_disability`, `senior_status`, `educational_attainment`, `purok`, `street`, `lot_number`, `phone_number`, `tel_number`, `email`, `voter_status`, `voter_id`, `precinct_number`, `national_id`, `vaccine_status`, `vaccine_1`, `vaccine_date_1`, `vaccine_2`, `vaccine_date_2`, `booster_status`, `booster_1`, `booster_date_1`, `booster_2`, `booster_date_2`, `emergency_person`, `relationship`, `emergency_address`, `emergency_contact`, `img_url`, `alien_status`, `deceased_status`, `date_of_death`, `created_by`, `date_created`, `updated_by`, `date_updated`, `restored_by`, `date_restored`) VALUES
(12, '64151ea8ec62e', 'Matthew Joseph', 'Fang', 'Bilaos', 'Jr', 'Male', '2003-01-13', 'Malilipot, Albay', 'Single', 'Filipino', 'Barangay Clerk', 'Islam', 'B+', '4Ps', '', '', '', 'College Undergraduate', 'Purok 4', 'Block 2', 'Lot 1', '09166111422', '043-252-3453', 'bilaos02311@gmail.com', '', '', '', '', 'Vaccinated', 'Astrazeneca', '2023-03-18', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Regina Bilaos', 'Mother', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '09169786296', 'Bilaos_Matthew Joseph.png', '', '', '0000-00-00', 'Administrator(Administrator)', '2023-03-18 10:15:05', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 15:10:15', NULL, NULL),
(13, '64151f3cbda9e', 'Renante', 'D', 'Curit', '', 'Male', '1974-10-31', 'General Santos City', 'Married', 'Filipino', 'Barangay Chairman', 'Roman Catholic', 'A+', '', '', '', '', 'College Graduate', 'Purok 8', 'Block 12', 'Lot 2', '09166111421', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Regina Bilaossss', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9486903345', 'default-img.svg', '', NULL, NULL, 'Administrator(Administrator)', '2023-03-18 10:17:32', NULL, '2023-03-18 10:18:43', NULL, NULL),
(15, '6417b1bacf867', 'Ricky Joseph', 'Fang', 'Villa', '', 'Male', '2003-06-07', 'General Santos City', 'Married', 'Filipino', 'Student', 'Roman Catholic', 'O-', '', '', '', '', 'College Undergraduat', 'Purok 11-B', 'Block 4', 'Lot 8', '15', '356-238-8766', 'ricky.lawrence@gmail.com', '', '', '', '', 'Vaccinated', 'Pfizer', '2021-02-21', '', '2021-03-21', 'Boostered', 'Pfizer', '2022-01-23', '', '2022-02-24', 'Regina Bilaos', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '09534765895', 'Villa_Ricky Joseph.png', '', '', '0000-00-00', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-20 09:07:06', 'Administrator(Administrator)', '2023-03-29 13:07:42', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-20 09:25:09'),
(17, '6423ca6a575f2', 'Mat', 'D', 'Cornelio', '', 'Female', '1999-06-24', 'General Santos City', 'Single', 'Filipino', '', '', '', '', '', '', '', 'College Undergraduate', 'Purok 12-A', 'Block 4', 'Lot 22', '09234234234', '', '', 'Registered Voter', '34rwe345', '34e', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Regina Bilaos', 'Motherrr', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9235347524', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:19:38', NULL, NULL, NULL, NULL),
(18, '6423cabc169c7', 'Shelly', '', 'Maris', '', 'Female', '1993-06-25', 'Malilipot, Albay', 'Married', 'Filipino', '', '', '', '', '', '', '', 'Elementary Graduate', 'Purok 2', 'Block 8', 'Lot 1', '09235456897', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Regina Bilaos', 'Mother', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9486903677', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:21:00', NULL, NULL, NULL, NULL),
(19, '6423cb09e5362', 'Tristan', 'F', 'Pardilla', '', 'Male', '2000-03-17', 'Zamboanga Del Norte', 'Single', 'Filipino', '', '', '', '', '', '', '', 'College Undergraduate', 'Purok 13', 'Block 4', 'Lot 8', '09353845738', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Marigold Quiapo', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9345345345', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:22:17', NULL, NULL, NULL, NULL),
(20, '6423cb7cf3db1', 'Ashly', 'Innocente', 'Legario', '', 'Female', '2005-06-25', 'Malilipot, Albay', 'Married', 'Filipino', '', '', '', '', '', '', '', 'College Undergraduate', 'Purok 13-A', 'Block 7', 'Lot 10', '09758969234', '', '', 'Registered Voter', '453457gfr3', '4b', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Marilyn Cornelio', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9166111422', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:24:13', NULL, NULL, NULL, NULL),
(21, '6423cbd93d957', 'Anne', '', 'Innocente', '', 'Female', '2013-06-22', 'Malilipot, Albay', 'Single', 'Filipino', '', '', '', '', '', '', '', 'Highschool Graduate', 'Purok 7', 'Block 6', 'Lot 6', '09756873875', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Ash Innocente', 'Mother', 'Fatima, General Santos', '9486903674', 'Innocente_Anne.png', '', '', '0000-00-00', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:25:45', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:31:43', NULL, NULL),
(22, '6423cc508739b', 'Arvin', '', 'Sulartin', '', 'Male', '2001-06-23', 'Banga, South Cotabato', 'Single', 'Filipino', 'Student', 'Roman Catholic', 'A+', '', '', '', '', 'College Undergraduate', 'Purok 13-B', 'Block 5', 'Lot 11', '09345368374', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Ginga Sulartin', 'Father', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9375837534', 'Sulartin_Arvin.png', '', '', '0000-00-00', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:27:44', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:31:02', NULL, NULL),
(23, '6423cce4b0d0f', 'Amber', '', 'Fang', '', 'Female', '1964-05-30', 'Iloilo City', 'Married', 'Filipino', '', '', '', '', '', '', '', 'College Graduate', 'Purok 13-A', 'Block 10', 'Lot 3', '09645673857', '', '', 'Registered Voter', '242y3rwe34', '43fd', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Regina Bilaos', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9169786296', 'Fang_Amber.png', '', '', '0000-00-00', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:30:12', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:45:34', NULL, NULL),
(24, '6423ce778a3b9', 'George', '', 'Larida', '', 'Male', '1952-06-14', 'General Santos City', 'Single', 'Filipino', '', '', '', '', '', '', 'Senior Citizen', 'Highschool Undergraduate', 'Purok 20', 'Blcok 5', 'Lot 6', '09345736573', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Amber Larida', 'Father', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9345837537', 'Larida_George.png', '', '', '0000-00-00', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:36:55', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-04-13 12:33:48', NULL, NULL),
(26, '643786cc637a1', 'Fang', 'Fang', 'Matthew', 'Jr.', 'Male', '2023-04-13', 'Malilipot, Albay', 'Single', 'Filipino', 'Student', 'Srerwerwerwer', 'O+', '4Ps', 'Person With Disability', 'Psychosocial Disability', '', 'Elementary Graduate', 'Purok Purok Upper 11', 'Block 9', 'Lot 2', '09345347587', '234-234-2342', 'bilaos02311@gmail.com', 'Registered Voter', 'rer45', '34e', '', 'Vaccinated', 'Bharat', '2023-04-13', '', '2023-04-13', 'Boostered', 'Astrazeneca', '2023-04-13', '', '2023-04-13', 'Regina Bilaosss', 'Mother', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9345783475', 'Matthew_Fang.png', '', '', '0000-00-00', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-04-13 12:36:28', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-04-13 12:40:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `residents_archive`
--

CREATE TABLE `residents_archive` (
  `resident_archive_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `resident_no` varchar(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `mid_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `suffix` varchar(10) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `civil_status` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `blood_type` varchar(10) NOT NULL,
  `fourps_status` varchar(5) NOT NULL,
  `disability_status` varchar(30) NOT NULL,
  `type_disability` varchar(50) NOT NULL,
  `senior_status` varchar(20) NOT NULL,
  `educational_attainment` varchar(20) NOT NULL,
  `purok` varchar(20) NOT NULL,
  `street` varchar(50) NOT NULL,
  `lot_number` varchar(20) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `tel_number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `voter_status` varchar(20) NOT NULL,
  `voter_id` varchar(20) DEFAULT NULL,
  `precinct_number` varchar(20) DEFAULT NULL,
  `national_id` varchar(55) DEFAULT NULL,
  `vaccine_status` varchar(10) NOT NULL,
  `vaccine_1` varchar(15) NOT NULL,
  `vaccine_date_1` date DEFAULT NULL,
  `vaccine_2` varchar(15) NOT NULL,
  `vaccine_date_2` date DEFAULT NULL,
  `booster_status` varchar(10) NOT NULL,
  `booster_1` varchar(15) NOT NULL,
  `booster_date_1` date DEFAULT NULL,
  `booster_2` varchar(15) NOT NULL,
  `booster_date_2` date DEFAULT NULL,
  `emergency_person` varchar(255) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `emergency_address` varchar(255) NOT NULL,
  `emergency_contact` varchar(11) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `alien_status` varchar(50) NOT NULL,
  `deceased_status` varchar(50) DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(50) DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `remarks` varchar(255) DEFAULT NULL,
  `archived_by` varchar(100) DEFAULT NULL,
  `date_archived` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `residents_archive`
--

INSERT INTO `residents_archive` (`resident_archive_id`, `resident_id`, `resident_no`, `first_name`, `mid_name`, `last_name`, `suffix`, `sex`, `date_of_birth`, `place_of_birth`, `civil_status`, `nationality`, `occupation`, `religion`, `blood_type`, `fourps_status`, `disability_status`, `type_disability`, `senior_status`, `educational_attainment`, `purok`, `street`, `lot_number`, `phone_number`, `tel_number`, `email`, `voter_status`, `voter_id`, `precinct_number`, `national_id`, `vaccine_status`, `vaccine_1`, `vaccine_date_1`, `vaccine_2`, `vaccine_date_2`, `booster_status`, `booster_1`, `booster_date_1`, `booster_2`, `booster_date_2`, `emergency_person`, `relationship`, `emergency_address`, `emergency_contact`, `img_url`, `alien_status`, `deceased_status`, `date_of_death`, `created_by`, `date_created`, `updated_by`, `date_updated`, `remarks`, `archived_by`, `date_archived`) VALUES
(2, 14, '6417ae8cacade', 'Adrylle Raphael', 'Cagas', 'Quiapo', 'Jr.', 'Male', '2005-10-23', 'General Santos City', 'Single', 'Filipino', 'Student', 'Roman Catholic', 'O+', '', '', '', '', 'College Undergraduat', 'Purok 11-C', 'Block 2', 'Lot 22', '09486903677', '345-257-8768', 'bilaos02311@gmail.com', '', '', '', '', 'Vaccinated', 'Bharat', '2022-02-11', '', '2022-03-13', 'Boostered', 'Pfizer', '2022-10-30', '', '2022-11-29', 'Marigold Quiapo', 'Mother', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9166111422', 'Quiapo_Adrylle Raphael.png', '', '', '0000-00-00', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-20 08:53:32', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:11:39', 'Change of Residency', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:12:21'),
(4, 16, '6423ad2d1e919', 'Matthew', 'Fang', 'Bilaos', '', 'Male', '2023-03-29', 'Ewrwerw', 'Single', 'Filipino', '', '', '', '', '', '', '', 'Highschool Undergrad', 'Purok 11-B', 'Erterter', 'Tertertre', '16', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Matthew', 'Joseph', 'Asdasdasd', '9213423423', 'Rwerwerwer_Werwer.png', '', '', '0000-00-00', 'Administrator(Administrator)', '2023-03-29 11:14:53', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 16:08:47', 'Change of Residency', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 16:09:31'),
(5, 25, '6423d99d4c311', 'Joseph', '', 'Pelle', '', 'Male', '1937-10-15', 'General Santos City', 'Married', 'Filipino', '', '', '', '', '', '', 'Senior Citizen', 'College Graduate', 'Purok 24', 'Block 2', 'Lot 9', '09345347563', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '', '', '0000-00-00', '', '0000-00-00', 'Marigold Quiapo', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9673563534', 'default-img.svg', 'Changed Residency', '', '0000-00-00', 'Fatima_clerk9(Barangay Clerk - Admin)', '0000-00-00 00:00:00', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 16:13:33', 'Changed Residency', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 16:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `respondent`
--

CREATE TABLE `respondent` (
  `respondent_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `barangay_clearance_fee` int(55) NOT NULL,
  `small_scale_fee` int(55) NOT NULL,
  `medium_scale_fee` int(55) NOT NULL,
  `large_scale_fee` int(55) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `barangay_clearance_fee`, `small_scale_fee`, `medium_scale_fee`, `large_scale_fee`, `remarks`, `updated_by`, `date_updated`) VALUES
(1, 60, 250, 500, 1500, 'price increase due to resolution 001', 'Administrator(Administrator)', '2022-05-05 13:54:42'),
(2, 61, 250, 500, 1500, 'price increase', 'Administrator(Administrator)', '2022-05-06 11:01:19'),
(3, 61, 200, 500, 1500, 'increase ', 'Administrator(Administrator)', '2022-05-07 15:12:24'),
(4, 61, 200, 500, 1500, 'increase', 'Administrator(Administrator)', '2022-06-03 11:25:24'),
(5, 61, 200, 400, 1500, 'try', 'Administrator(Administrator)', '2023-02-13 11:41:44'),
(6, 61, 200, 500, 1500, 'try again', 'Administrator(Administrator)', '2023-02-13 11:43:23'),
(7, 70, 200, 500, 1500, 'TRY', 'Administrator(Administrator)', '2023-02-27 12:10:39'),
(8, 71, 200, 500, 1500, 'sdfsf', 'Administrator(Administrator)', '2023-03-08 23:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `official_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `resident_id`, `official_id`, `username`, `password`, `role`) VALUES
(1, 0, 0, 'administrator', 'b6f8ebf6b21eb164447365d0582e3ce6', 'Administrator'),
(2, 12, 9, 'fatima_clerk9', '8c104cd2d2b58da89832cdd382d23987', 'Barangay Clerk - Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `official_id` (`official_id`);

--
-- Indexes for table `barangay_clearance`
--
ALTER TABLE `barangay_clearance`
  ADD PRIMARY KEY (`brgy_clearance_id`),
  ADD KEY `resident_id` (`resident_id`);

--
-- Indexes for table `business_clearance`
--
ALTER TABLE `business_clearance`
  ADD PRIMARY KEY (`bus_clearance_id`),
  ADD KEY `resident_id` (`resident_id`);

--
-- Indexes for table `complainant`
--
ALTER TABLE `complainant`
  ADD PRIMARY KEY (`complainant_id`),
  ADD KEY `resident_id` (`resident_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`case_no`),
  ADD KEY `complainant_id` (`complainant_id`),
  ADD KEY `respondent_id` (`respondent_id`),
  ADD KEY `mediator_id` (`mediator_id`);

--
-- Indexes for table `good_moral_certificate`
--
ALTER TABLE `good_moral_certificate`
  ADD PRIMARY KEY (`good_moral_id`),
  ADD KEY `resident_id` (`resident_id`);

--
-- Indexes for table `mediator`
--
ALTER TABLE `mediator`
  ADD PRIMARY KEY (`mediator_id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `official_id` (`official_id`);

--
-- Indexes for table `officials`
--
ALTER TABLE `officials`
  ADD PRIMARY KEY (`official_id`),
  ADD KEY `resident_id` (`resident_id`);

--
-- Indexes for table `officials_archive`
--
ALTER TABLE `officials_archive`
  ADD PRIMARY KEY (`official_archive_id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `official_id` (`official_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`resident_id`);

--
-- Indexes for table `residents_archive`
--
ALTER TABLE `residents_archive`
  ADD PRIMARY KEY (`resident_archive_id`),
  ADD KEY `resident_id` (`resident_id`);

--
-- Indexes for table `respondent`
--
ALTER TABLE `respondent`
  ADD PRIMARY KEY (`respondent_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `official_id` (`official_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barangay_clearance`
--
ALTER TABLE `barangay_clearance`
  MODIFY `brgy_clearance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `business_clearance`
--
ALTER TABLE `business_clearance`
  MODIFY `bus_clearance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complainant`
--
ALTER TABLE `complainant`
  MODIFY `complainant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `case_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `good_moral_certificate`
--
ALTER TABLE `good_moral_certificate`
  MODIFY `good_moral_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mediator`
--
ALTER TABLE `mediator`
  MODIFY `mediator_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
  MODIFY `official_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `officials_archive`
--
ALTER TABLE `officials_archive`
  MODIFY `official_archive_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `resident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `residents_archive`
--
ALTER TABLE `residents_archive`
  MODIFY `resident_archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `respondent`
--
ALTER TABLE `respondent`
  MODIFY `respondent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`official_id`) REFERENCES `officials` (`official_id`);

--
-- Constraints for table `barangay_clearance`
--
ALTER TABLE `barangay_clearance`
  ADD CONSTRAINT `barangay_clearance_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);

--
-- Constraints for table `business_clearance`
--
ALTER TABLE `business_clearance`
  ADD CONSTRAINT `business_clearance_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);

--
-- Constraints for table `complainant`
--
ALTER TABLE `complainant`
  ADD CONSTRAINT `complainant_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `resident` (`resident_id`);

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`complainant_id`) REFERENCES `complainant` (`complainant_id`),
  ADD CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`respondent_id`) REFERENCES `respondent` (`respondent_id`),
  ADD CONSTRAINT `complaint_ibfk_3` FOREIGN KEY (`mediator_id`) REFERENCES `mediator` (`mediator_id`);

--
-- Constraints for table `good_moral_certificate`
--
ALTER TABLE `good_moral_certificate`
  ADD CONSTRAINT `good_moral_certificate_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `resident` (`resident_id`);

--
-- Constraints for table `mediator`
--
ALTER TABLE `mediator`
  ADD CONSTRAINT `mediator_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `resident` (`resident_id`),
  ADD CONSTRAINT `mediator_ibfk_2` FOREIGN KEY (`official_id`) REFERENCES `official` (`official_id`);

--
-- Constraints for table `officials`
--
ALTER TABLE `officials`
  ADD CONSTRAINT `officials_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);

--
-- Constraints for table `officials_archive`
--
ALTER TABLE `officials_archive`
  ADD CONSTRAINT `officials_archive_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`),
  ADD CONSTRAINT `officials_archive_ibfk_2` FOREIGN KEY (`official_id`) REFERENCES `officials` (`official_id`);

--
-- Constraints for table `residents_archive`
--
ALTER TABLE `residents_archive`
  ADD CONSTRAINT `residents_archive_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`official_id`) REFERENCES `officials` (`official_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
