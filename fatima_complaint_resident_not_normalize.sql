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

CREATE DATABASE complaintsc;
USE complaintsc;

CREATE TABLE `resident` (
        `resident_id` int(11) NOT NULL AUTO_INCREMENT,
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
        `phone_number` varchar(11) NOT NULL,
        `tel_number` varchar(12) NOT NULL,
        `email` varchar(100) NOT NULL,
        `purok` varchar(20) NOT NULL,
        `street` varchar(50) NOT NULL,
        `lot_number` varchar(20) NOT NULL,
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
        `date_restored` datetime DEFAULT NULL,
        PRIMARY KEY(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `resident` (`resident_id`, `first_name`, `mid_name`, `last_name`, `suffix`, `sex`, `date_of_birth`, `place_of_birth`, `civil_status`, `nationality`, `occupation`, `religion`, `blood_type`, `fourps_status`, `disability_status`, `type_disability`, `senior_status`, `educational_attainment`, `purok`, `street`, `lot_number`, `phone_number`, `tel_number`, `email`, `voter_status`, `voter_id`, `precinct_number`, `national_id`, `vaccine_status`, `vaccine_1`, `vaccine_date_1`, `vaccine_2`, `vaccine_date_2`, `booster_status`, `booster_1`, `booster_date_1`, `booster_2`, `booster_date_2`, `emergency_person`, `relationship`, `emergency_address`, `emergency_contact`, `img_url`, `alien_status`, `deceased_status`, `date_of_death`, `created_by`, `date_created`, `updated_by`, `date_updated`, `restored_by`, `date_restored`) VALUES
(13, 'Renante', 'D', 'Curit', '', 'Male', '1974-10-31', 'General Santos City', 'Married', 'Filipino', 'Barangay Chairman', 'Roman Catholic', 'A+', '', '', '', '', 'College Graduate', 'Purok 8', 'Block 12', 'Lot 2', '09166111421', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Regina Bilaossss', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9486903345', 'default-img.svg', '', NULL, NULL, 'Administrator(Administrator)', '2023-03-18 10:17:32', NULL, '2023-04-23 14:45:36', NULL, NULL),
(20, 'Ashly', 'Innocente', 'Legario', '', 'Female', '2005-06-25', 'Malilipot, Albay', 'Married', 'Filipino', '', '', '', '', '', '', '', 'College Undergraduate', 'Purok 13-A', 'Block 7', 'Lot 10', '09758969234', '', '', 'Registered Voter', '453457gfr3', '4b', '', '', '', '', '', '', '', '', '', '', '', 'Marilyn Cornelio', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9166111422', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:24:13', NULL, NULL, NULL, NULL),
(21, 'Anne', '', 'Innocente', '', 'Female', '2013-06-22', 'Malilipot, Albay', 'Single', 'Filipino', '', '', '', '', '', '', '', 'Highschool Graduate', 'Purok 7', 'Block 6', 'Lot 6', '09756873875', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Ash Innocente', 'Mother', 'Fatima, General Santos', '9486903674', 'Innocente_Anne.png', '', '', '', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:25:45', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:31:43', NULL, NULL),
(22, 'Arvin', '', 'Sulartin', '', 'Male', '2001-06-23', 'Banga, South Cotabato', 'Single', 'Filipino', '', 'Roman Catholic', 'A+', '', '', '', '', 'College Undergraduate', 'Purok 13-B', 'Block 5', 'Lot 11', '09345368374', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Ginga Sulartin', 'Father', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9375837534', 'Sulartin_Arvin.png', '', '', '', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:27:44', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-06-03 14:53:21', NULL, NULL),
(23, 'Amber', '', 'Fang', '', 'Female', '1964-05-30', 'Iloilo City', 'Married', 'Filipino', 'Barangay Clerk', '', '', '', '', '', '', 'College Graduate', 'Purok 13-A', 'Block 10', 'Lot 3', '09645673857', '', '', 'Registered Voter', '242y3rwe34', '43fd', '', '', '', '', '', '', '', '', '', '', '', 'Regina Bilaos', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9169786296', 'Fang_Amber.png', '', '', '', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:30:12', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-06-03 14:52:48', NULL, NULL),
(24, 'George', '', 'Larida', '', 'Male', '1952-06-14', 'General Santos City', 'Single', 'Filipino', '', '', '', '', '', '', 'Senior Citizen', 'Highschool Undergraduate', 'Purok 20', 'Blcok 5', 'Lot 6', '09345736573', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Amber Larida', 'Father', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9345837537', 'Larida_George.png', '', '', '', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:36:55', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-04-13 12:33:48', NULL, NULL),
(25, 'Joseph', '', 'Pelle', '', 'Male', '1937-10-15', 'General Santos City', 'Married', 'Filipino', ' ', '', '', '', '', '', 'Senior Citizen', 'College Graduate', 'Purok 24', 'Block 2', 'Lot 9', '25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Marigold Quiapo', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9673563534', 'default-img.svg', 'Changed Residency', '', '', 'Fatima_clerk9(Barangay Clerk - Admin)', ' ', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-06-03 15:00:10', 'Administrator(Administrator)', '2023-04-23 14:24:22'),
(26, 'Fang', 'Fang', 'Matthew', 'Jr.', 'Male', '2023-04-13', 'Malilipot, Albay', 'Single', 'Filipino', 'Barangay Secretary', 'Srerwerwerwer', 'O+', '4Ps', 'Person With Disability', 'Psychosocial Disability', '', 'Elementary Graduate', 'Purok Purok Upper 11', 'Block 9', 'Lot 2', '09345347587', '234-234-2342', 'bilaos02311@gmail.com', 'Registered Voter', 'rer45', '34e', '', 'Vaccinated', 'Bharat', '2023-04-13', '', '2023-04-13', 'Boostered', 'Astrazeneca', '2023-04-13', '', '2023-04-13', 'Regina Bilaosss', 'Mother', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9345783475', 'Matthew_Fang.png', '', '', '', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-04-13 12:36:28', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-06-03 14:49:37', NULL, NULL),
(27, 'Jessie', '', 'Sam', '', 'Male', '2002-07-04', 'Fatima, General Santos', 'Single', 'Filipino', 'Barangay Clerk', 'Roman Catholic', 'O-', '4Ps', 'Person With Disability', 'Mental Disability', '', 'Elementary Undergraduate', 'Purok Lower 11-A', 'Block 3', 'Lot 4', '09234235345', '023-423-5465', 'sam@gmail.com', 'Registered Voter', '234234', '34e', '', 'Vaccinated', 'Bharat', '2023-01-12', 'Bharat', '2023-02-03', 'Boostered', 'Astrazeneca', '2023-04-22', 'Bharat', '2023-06-03', 'Regina Bilaos', 'Motherr', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9353485834', 'Sam_Jessie.png', '', NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:24:25', NULL, '2023-06-03 14:52:03', NULL, NULL),
(28, 'Jan Marc', '', 'Esver', '', 'Male', '2018-02-09', 'General Santos City', 'Single', 'Filipino', 'Barangay Clerk', 'Roman Catholic', 'O+', '4Ps', 'Person With Disability', 'Palautog', '', 'College Undergraduate', 'Purok Lower 11-A', 'Block 7', 'Lot 29', '09345345345', '', '', 'Registered Voter', '234234f-234', '4b', '', 'Vaccinated', 'Bharat', '2023-05-01', '', '2023-06-03', '', '', '', '', '', 'Marigold Quiapo', 'Cousin', 'Lagao, General Santos City', '9234923423', 'Esver_Jan Marc.png', '', '', '', 'Administrator(Administrator)', '2023-06-03 14:36:48', 'Administrator(Administrator)', '2023-06-03 14:50:45', NULL, NULL),
(29, 'Richard', '', 'Bangoy', '', 'Male', '2021-06-10', 'General Santos City', 'Single', 'Filipino', 'Barangay Clerk', 'Secret', 'O-', '4Ps', '', '', '', 'College Undergraduate', 'Purok 12', 'Block 12', 'Lot 3', '09345345345', '', 'bangoy@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Marimar Bangoy', 'Cousin', 'Lagao, General Santos City', '9284234238', 'default-img.svg', '', NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:42:12', NULL, '2023-06-03 14:50:04', NULL, NULL),
(30, 'Dave', '', 'Panizal', '', 'Male', '2023-06-03', 'Zamboanga Del Norte', 'Nullified', 'Filipino', 'Barangay Clerk', 'Islam', 'B-', '4Ps', '', '', '', 'Highschool Undergraduate', 'Purok 11-B', 'Block 3', 'Lot 2', '09458394589', '', 'panizal@gmail.com', 'Registered Voter', '234234', '0813c', '', 'Vaccinated', 'Bharat', '2021-04-29', 'Pfizer', '2021-06-03', 'Boostered', 'Moderna', '2022-06-03', '', '', 'Maricar Panizal', 'Cousin', 'Esperansa', '9486903345', 'default-img.svg', '', NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:46:43', NULL, '2023-06-03 14:49:01', NULL, NULL);



CREATE TABLE `resident_archive` (
        `resident_archive_id` int(11) NOT NULL AUTO_INCREMENT,
        `resident_id` int(11) NOT NULL,
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
        `phone_number` varchar(11) NOT NULL,
        `tel_number` varchar(12) NOT NULL,
        `email` varchar(100) NOT NULL,
        `purok` varchar(20) NOT NULL,
        `street` varchar(50) NOT NULL,
        `lot_number` varchar(20) NOT NULL,
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
        `remarks` varchar(255) DEFAULT NULL,
        `archived_by` varchar(100) DEFAULT NULL,
        `date_archived` datetime DEFAULT NULL,
        PRIMARY KEY(`resident_archive_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


INSERT INTO `resident_archive` (`resident_archive_id`, `resident_id`, `first_name`, `mid_name`, `last_name`, `suffix`, `sex`, `date_of_birth`, `place_of_birth`, `civil_status`, `nationality`, `occupation`, `religion`, `blood_type`, `fourps_status`, `disability_status`, `type_disability`, `senior_status`, `educational_attainment`, `purok`, `street`, `lot_number`, `phone_number`, `tel_number`, `email`, `voter_status`, `voter_id`, `precinct_number`, `national_id`, `vaccine_status`, `vaccine_1`, `vaccine_date_1`, `vaccine_2`, `vaccine_date_2`, `booster_status`, `booster_1`, `booster_date_1`, `booster_2`, `booster_date_2`, `emergency_person`, `relationship`, `emergency_address`, `emergency_contact`, `img_url`, `alien_status`, `deceased_status`, `date_of_death`, `created_by`, `date_created`, `updated_by`, `date_updated`, `remarks`, `archived_by`, `date_archived`) VALUES
(1, 15, 'Ricky Joseph', 'Fang', 'Villa', '', 'Male', '2003-06-07', 'General Santos City', 'Married', 'Filipino', 'Student', 'Roman Catholic', 'O-', '', '', '', '', 'College Undergraduat', 'Purok 11-B', 'Block 4', 'Lot 8', '15', '356-238-8766', 'ricky.lawrence@gmail.com', '', '', '', '', 'Vaccinated', 'Pfizer', '2021-02-21', '', '2021-03-21', 'Boostered', 'Pfizer', '2022-01-23', '', '2022-02-24', 'Regina Bilaos', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '09534765895', 'Villa_Ricky Joseph.png', '', '', '', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-20 09:07:06', 'Administrator(Administrator)', '2023-03-29 13:07:42', 'Change of Residency', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-20 09:25:09'),
(2, 7, 'Mat', 'D', 'Cornelio', '', 'Female', '1999-06-24', 'General Santos City', 'Single', 'Filipino', '', '', '', '', '', '', '', 'College Undergraduate', 'Purok 12-A', 'Block 4', 'Lot 22', '09234234234', '', '', 'Registered Voter', '34rwe345', '34e', '', '', '', '', '', '', '', '', '', '', '', 'Regina Bilaos', 'Motherrr', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9235347524', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:19:38', NULL, NULL, 'Change of Residency', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 16:09:31'),
(3, 16, 'Matthew', 'Fang', 'Bilaos', '', 'Male', '2023-03-29', 'Ewrwerw', 'Single', 'Filipino', '', '', '', '', '', '', '', 'Highschool Undergrad', 'Purok 11-B', 'Erterter', 'Tertertre', '16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Matthew', 'Joseph', 'Asdasdasd', '9213423423', 'Rwerwerwer_Werwer.png', '', '', '', 'Administrator(Administrator)', '2023-03-29 11:14:53', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 16:08:47', 'Change of Residency', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 16:09:31'),
(4, 18, 'Shelly', '', 'Maris', '', 'Female', '1993-06-25', 'Malilipot, Albay', 'Married', 'Filipino', '', '', '', '', '', '', '', 'Elementary Graduate', 'Purok 2', 'Block 8', 'Lot 1', '09235456897', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Regina Bilaos', 'Mother', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9486903677', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:21:00', NULL, NULL, 'Change of Residency', 'Administrator(Administrator)', '2023-06-03 15:03:13'),
(5, 12, 'Matthew Joseph', 'Fang', 'Bilaos', 'Jr', 'Male', '2003-01-13', 'Malilipot, Albay', 'Single', 'Filipino', ' ', 'Islam', 'B+', '4Ps', '', '', '', 'College Undergraduat', 'Purok 4', 'Block 2', 'Lot 1', '09166111422', '043-252-3453', 'bilaos02311@gmail.com', '', '', '', '', 'Vaccinated', 'Astrazeneca', '2023-03-18', '', '', '', '', '', '', '', 'Regina Bilaos', 'Mother', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '09169786296', 'Bilaos_Matthew Joseph.png', '', '', '', 'Administrator(Administrator)', '2023-03-18 10:15:05', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-06-03 15:01:11', 'Change of Residency', 'Administrator(Administrator)', '2023-06-03 15:03:41'),
(6, 19, 'Tristan', 'F', 'Pardilla', '', 'Male', '2000-03-17', 'Zamboanga Del Norte', 'Single', 'Filipino', '', '', '', '', '', '', '', 'College Undergraduat', 'Purok 13', 'Block 4', 'Lot 8', '09353845738', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Marigold Quiapo', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9345345345', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:22:17', NULL, NULL, 'Change of Residency', 'Administrator(Administrator)', '2023-06-03 15:04:05');



CREATE TABLE `official` (
        `official_id` int(11) NOT NULL AUTO_INCREMENT,
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
        `date_restored` datetime DEFAULT NULL,
        PRIMARY KEY(`official_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `official` (`official_id`, `resident_id`, `off_position`, `term`, `first_term_start`, `first_term_end`, `second_term_start`, `second_term_end`, `third_term_start`, `third_term_end`, `created_by`, `date_created`, `updated_by`, `date_updated`, `restored_by`, `date_restored`) VALUES
(1, 13, 'Barangay Chairman', '1st Term', '2023-03-18', '2023-04-23', NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-03-18 10:17:32', NULL, '2023-03-18 10:18:43', NULL, NULL),
(2, 30, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:49:01', NULL, NULL, NULL, NULL),
(3, 26, 'Barangay Secretary', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:49:37', NULL, NULL, NULL, NULL),
(4, 29, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:50:04', NULL, NULL, NULL, NULL),
(5, 28, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:50:45', NULL, NULL, NULL, NULL),
(6, 27, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:52:03', NULL, NULL, NULL, NULL);

CREATE TABLE `official_archive` (
        `official_archive_id` int(11) NOT NULL AUTO_INCREMENT,
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
        `remarks` varchar(50) DEFAULT NULL,
        `archived_by` varchar(255) DEFAULT NULL,
        `date_archived` datetime DEFAULT NULL ON UPDATE current_timestamp(),
        PRIMARY KEY(`official_archive_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `official_archive` (`official_archive_id`, `official_id`, `resident_id`, `off_position`, `term`, `first_term_start`, `first_term_end`, `second_term_start`, `second_term_end`, `third_term_start`, `third_term_end`, `created_by`, `date_created`, `updated_by`, `date_updated`, `remarks`, `archived_by`, `date_archived`) VALUES
(1, 7, 23, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:52:48', NULL, NULL, NULL, NULL, NULL),
(2, 8, 22, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:53:21', NULL, NULL, NULL, NULL, NULL);


CREATE TABLE `barangay_clearance` (
        `brgy_clearance_id` int(11) NOT NULL AUTO_INCREMENT,
        `resident_id` int(11) NOT NULL,
        `official_id` int(11) NOT NULL,
        `purpose` varchar(50) NOT NULL,
        `receipt_number` int(8) NOT NULL,
        `cedula_number` varchar(8) NOT NULL,
        `cedula_issued_at` varchar(50) NOT NULL,
        `cedula_date` date NOT NULL,
        `issued_by` varchar(50) NOT NULL,
        `date_issued` datetime NOT NULL DEFAULT current_timestamp(),
        `price` varchar(255) NOT NULL,
        PRIMARY KEY(`brgy_clearance_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`),
        FOREIGN KEY(`official_id`) REFERENCES official(`official_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `barangay_clearance` (`brgy_clearance_id`, `resident_id`, `official_id`, `purpose`, `receipt_number`, `cedula_number`, `cedula_issued_at`, `cedula_date`, `issued_by`, `date_issued`, `price`) VALUES
(1, 26, 4, 'Business Registration', 3453423, '53453452', 'Barangay Fatima, GSC', '2023-04-22', 'Barangay Clerk - Admin', '2023-04-22 14:10:52', '71'),
(2, 30, 2, 'Scholarship Applications', 2342343, '23423423', 'Barangay Fatima, GSC', '2023-06-03', 'Barangay Clerk - Admin', '2023-06-03 15:10:48', '71'),
(3, 29, 2, 'Business Registration', 3453423, '53453453', 'Barangay Fatima, GSC', '2023-06-03', 'Barangay Clerk - Admin', '2023-06-03 15:11:25', '71'),
(4, 27, 4, 'Government Services', 1231231, '34553453', 'Barangay Fatima, GSC', '2023-06-03', 'Barangay Clerk - Admin', '2023-06-03 15:12:04', '71'),
(5, 26, 4, 'Certification Of Good Conduct', 3453453, '53453452', 'Barangay Fatima, GSC', '2023-06-03', 'Barangay Clerk - Admin', '2023-06-03 15:12:42', '71');


CREATE TABLE `good_moral_certificate` (
        `good_moral_id` int(11) NOT NULL AUTO_INCREMENT,
        `resident_id` int(11) NOT NULL,
        `official_id` int(11) NOT NULL,
        `purpose` varchar(50) NOT NULL,
        `issued_by` varchar(50) NOT NULL,
        `date_issued` datetime NOT NULL DEFAULT current_timestamp(),
        PRIMARY KEY(`good_moral_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`),
        FOREIGN KEY(`official_id`) REFERENCES official(`official_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `good_moral_certificate` (`good_moral_id`, `resident_id`, `official_id`, `purpose`, `issued_by`, `date_issued`) VALUES
(1, 26, 4, 'Scholarship Applications', 'Barangay Clerk - Admin', '2023-04-22 14:12:33'),
(2, 30, 4, 'Secret', 'Barangay Clerk - Admin', '2023-06-03 15:13:35'),
(3, 29, 4, 'Employment', 'Barangay Clerk - Admin', '2023-06-03 15:14:20'),
(4, 29, 4, 'Certification Of Good Conduct', 'Barangay Clerk - Admin', '2023-06-03 15:14:55');


CREATE TABLE `complainant` (
		`complainant_id` int(11) NOT NULL AUTO_INCREMENT,
		`resident_id` int(11) NOT NULL,
        PRIMARY KEY(`complainant_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `complainant` (`complainant_id`, `resident_id`) VALUES 
(1, 20),
(2, 21),
(3, 22),
(4, 23),
(5, 24),
(6, 25),
(7, 20),
(8, 21),
(9, 22),
(10, 23),
(11, 24),
(12, 25);


CREATE TABLE `non_resident_complainant` (
		`complainant_id` int(11) NOT NULL AUTO_INCREMENT,
        `first_name` varchar(255) NOT NULL,
        `mid_name` varchar(50) NOT NULL,
        `last_name` varchar(50) NOT NULL,
        `suffix` varchar(10) NOT NULL, 
        `address` varchar(255) NOT NULL,
        PRIMARY KEY(`complainant_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE `respondent` (
		`respondent_id` int(11) NOT NULL AUTO_INCREMENT,
		`resident_id` int(11) NOT NULL,
        PRIMARY KEY(`respondent_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `respondent` (`respondent_id`, `resident_id`) VALUES 
(1, 25),
(2, 24),
(3, 23),
(4, 22),
(5, 21),
(6, 20),
(7, 25),
(8, 24),
(9, 23),
(10, 22),
(11, 21),
(12, 20);


CREATE TABLE `mediator` (
	  `mediator_id` int(11) NOT NULL,
	  `resident_id` int(11) NOT NULL,
	  `official_id` int(11) NOT NULL,
	  PRIMARY KEY (`mediator_id`),
      FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`),
	  FOREIGN KEY(`official_id`) REFERENCES official(`official_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `mediator` (`mediator_id`, `resident_id`, `official_id`) VALUES 
(1, 30, 2),
(2, 29, 4),
(3, 28, 5),
(4, 27, 6);

CREATE TABLE `complaint` (
		`case_no` int(11) NOT NULL AUTO_INCREMENT,
        `complainant_id` int(11) NOT NULL,
		`respondent_id` int(11) NOT NULL,
        `mediator_id` int(11) NOT NULL,
        `or_no` int(8) NOT NULL,
        `reason` varchar(255) NOT NULL,
        `complaint_description` text NOT NULL,
        `date_of_hearing` datetime NOT NULL,
        `action_taken` varchar(255) NOT NULL,
        `complaint_status` varchar(50) NOT NULL,
		`created_by` varchar(50) NOT NULL,
        `date_created` datetime NOT NULL DEFAULT current_timestamp(),
        `updated_by` varchar(50) DEFAULT NULL,
        `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
        `restored_by` varchar(50) DEFAULT NULL,
        `date_restored` datetime DEFAULT NULL,
        PRIMARY KEY(`case_no`),
        FOREIGN KEY(`complainant_id`) REFERENCES `complainant`(`complainant_id`),
        FOREIGN KEY(`respondent_id`) REFERENCES `respondent`(`respondent_id`),
        FOREIGN KEY(`mediator_id`) REFERENCES `mediator`(`mediator_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `complaint` (`complainant_id`, `respondent_id`, `mediator_id`, `or_no`, `reason`, `complaint_description`, `date_of_hearing`, `action_taken`, `complaint_status`, `created_by`, `date_created`, `updated_by`, `date_updated`, `restored_by`, `date_restored`) VALUES
(1, 1, 1, 24645845, 'Property damage', 'Deliberate damage or negligence by another resident that affects neighboring units or common areas.', '2023-05-02','Mediation and dispute resolution', 'Mediation', 'Barangay Clerk - Encoder', '2023-04-22 12:10:52', NULL, NULL, NULL, NULL),
(2, 2, 2, 23467023, 'Noise disturbances', 'Excessive noise from neighbors, including loud music, parties, or constant loud conversations.', '2023-05-09', 'Mediation and dispute resolution', 'Mediation', 'Barangay Clerk - Encoder', '2023-04-29 14:17:02', NULL, NULL, NULL, NULL),
(3, 3, 3, 98456566, 'Harassment', 'Verbal abuse, threats, or intimidation from another resident.', '2023-05-10', 'Mediation and dispute resolution',  'Mediation', 'Barangay Clerk - Encoder', '2023-04-29 14:10:52', NULL, NULL, NULL, NULL),
(4, 4, 4, 23476345, 'Nuisance', 'Actions or habits that generate strong or offensive odors that impact neighboring residents.', '2023-05-11','Mediation and dispute resolution', 'Mediation', 'Barangay Clerk - Encoder', '2023-04-30 14:06:01', NULL, NULL, NULL, NULL),
(5, 5, 1, 18923847, 'Harassment', 'Verbal abuse, threats, or intimidation from another resident.', '2023-05-12', 'Mediation and dispute resolution', 'Mediation', 'Barangay Clerk - Encoder', '2023-04-30 14:57:12', NULL, NULL, NULL, NULL),
(6, 6, 2, 23478645, 'Unauthorized guests', ' Residents who frequently have unauthorized guests or sublet their units without permission, causing security or occupancy concerns.', '2023-05-13', 'Mediation and dispute resolution', 'Mediation', 'Barangay Clerk - Encoder', '2023-05-02 09:10:52', NULL, NULL, NULL, NULL),
(7, 7, 3, 12676945, 'Disruptive behavior', ' Actions or habits that consistently disrupt the peace and tranquility of other residents, such as frequent arguing or fighting.', '2023-05-20',  'Mediation and dispute resolution', 'Mediation', 'Barangay Clerk - Encoder', '2023-05-10 14:10:52', NULL, NULL, NULL, NULL),
(8, 8, 4, 67834543, 'Harassment', 'Verbal abuse, threats, or intimidation from another resident.', '2023-05-22',  'Mediation and dispute resolution', 'Mediation', 'Barangay Clerk - Encoder', '2023-05-12 14:10:52', NULL, NULL, NULL, NULL),
(9, 9, 1, 42348765, 'Property damage', 'Deliberate damage or negligence by another resident that affects neighboring units or common areas.', '2023-05-28', 'Mediation and dispute resolution', 'Mediation', 'Barangay Clerk - Encoder', '2023-05-18 14:10:52', NULL, NULL, NULL, NULL),
(10, 10, 2, 96458978, 'Property damage', 'Deliberate damage or negligence by another resident that affects neighboring units or common areas.', '2023-05-29', 'Mediation and dispute resolution', 'Mediation', 'Barangay Clerk - Encoder', '2023-05-19 14:10:52', NULL, NULL, NULL, NULL),
(11, 11, 3, 23478654, 'Noise disturbances', 'Excessive noise from neighbors, including loud music, parties, or constant loud conversations.', '2023-06-08', 'Mediation and dispute resolution', 'Mediation', 'Barangay Clerk - Encoder', '2023-05-28 14:10:52', NULL, NULL, NULL, NULL),
(12, 12, 4, 98943522, 'Noise disturbances', 'Excessive noise from neighbors, including loud music, parties, or constant loud conversations.', '2023-05-11', 'Mediation and dispute resolution', 'Mediation', 'Barangay Clerk - Encoder', '2023-06-01 14:10:52', NULL, NULL, NULL, NULL);

CREATE TABLE `complaint_archive` (
		`complaint_archive_id` int(11) NOT NULL AUTO_INCREMENT,
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
        `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
        `remarks` varchar(255) DEFAULT NULL,
        `archived_by` varchar(100) DEFAULT NULL,
        `date_archived` datetime DEFAULT NULL,
        PRIMARY KEY(`complaint_archive_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE `users` (
        `user_id` int(11) NOT NULL AUTO_INCREMENT,
        `resident_id` int(11) DEFAULT NULL,
        `official_id` int(11) DEFAULT NULL,
        `username` varchar(50) NOT NULL,
        `password` varchar(50) NOT NULL,
        `role` varchar(40) NOT NULL,
        PRIMARY KEY(`user_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`) ON DELETE CASCADE ON UPDATE CASCADE,
        FOREIGN KEY(`official_id`) REFERENCES official(`official_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO `users` (`user_id`, `resident_id`, `official_id`, `username`, `password`, `role`) VALUES
(1, NULL, NULL, 'administrator', 'b6f8ebf6b21eb164447365d0582e3ce6', 'Administrator'),
(2, 13, 1, 'brgy_captain', '0c39e5182073049ffd3d8d25280a9a49', 'Barangay Captain'),
(3, 26, 3, 'brgy_secretary', '6fbdf502ad97e4a4bd8bf5cd22499efc', 'Barangay Secretary'),
(4, 30, 2, 'clerk_residentAdmin', '0c39e5182073049ffd3d8d25280a9a49', 'Barangay Clerk - ResidentAdmin'),
(5, 29, 4, 'clerk_residentEncoder', '283ec530b7fbafbea6ee93ebe5e1e291', 'Barangay Clerk - ResidentEncoder'),
(6, 28, 5, 'clerk_complaintAdmin', '283ec530b7fbafbea6ee93ebe5e1e291', 'Barangay Clerk - ComplaintAdmin'),
(7, 27, 6, 'clerk_complaintEncoder', '0c39e5182073049ffd3d8d25280a9a49', 'Barangay Clerk - ComplaintEncoder');
-- ------------------------------------------------------------------------------------------------------------------------------------------------

-- VIEWS

-- View to retrieve all information of residents.
CREATE VIEW resident_view AS
SELECT *
FROM resident;

CREATE VIEW resident_complaint_view AS
SELECT comp.case_no, CONCAT(c.first_name, ' ', c.last_name, ' ', c.mid_name, ' ', c.suffix) AS Complainant, 
CONCAT(r.first_name, ' ', r.last_name, ' ', r.mid_name, ' ', r.suffix) AS Repondent,
CONCAT(m.first_name, ' ', m.last_name, ' ', m.mid_name, ' ', m.suffix) AS Mediator, 
comp.reason, comp.complaint_description, comp.date_of_hearing, comp.action_taken, comp.complaint_status
FROM complaint comp
LEFT JOIN complainant com ON comp.complainant_id = com.complainant_id
LEFT JOIN respondent res ON comp.respondent_id = res.respondent_id
LEFT JOIN mediator med ON comp.mediator_id = med.mediator_id
INNER JOIN resident c ON c.resident_id = com.resident_id
INNER JOIN resident r ON r.resident_id = res.resident_id
INNER JOIN resident m ON m.resident_id = med.resident_id;

CREATE VIEW brgy_clearance_view AS
SELECT c.brgy_clearance_id, r.resident_id, CONCAT(r.first_name, ' ', r.last_name, ' ', r.mid_name, ' ', r.suffix) AS Full_Name, c.purpose
FROM barangay_clearance c 
LEFT JOIN resident r ON r.resident_id = c.resident_id;


-- View the details of complaints along with the names of complainants and respondents
CREATE VIEW complaint_details_view AS
SELECT c.case_no, r1.first_name AS complainant_first_name, r1.last_name AS complainant_last_name,
       r2.first_name AS respondent_first_name, r2.last_name AS respondent_last_name,
       c.complaint_description, c.date_of_hearing
FROM complaint c
JOIN complainant cmp ON c.complainant_id = cmp.complainant_id
JOIN respondent rsp ON c.respondent_id = rsp.respondent_id
JOIN resident r1 ON cmp.resident_id = r1.resident_id
JOIN resident r2 ON rsp.resident_id = r2.resident_id;

-- View to retrieve information of officials and their positions
CREATE VIEW official_info_view AS
SELECT o.official_id, r.first_name, r.last_name, o.off_position
FROM official o
JOIN resident r ON o.resident_id = r.resident_id;

-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- FUNCTIONS

-- Get the resident id
DELIMITER //
CREATE FUNCTION resident_name(residentID INT)
RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
    DECLARE residentInfo VARCHAR(255);
    SELECT CONCAT(first_name, ' ', mid_name, ' ', last_name, ' ', suffix) AS Full_Name    
    INTO residentInfo
    FROM resident_view
    WHERE resident_id = residentID;
    RETURN residentInfo;
END //
DELIMITER ;

-- Count the resident complaint record
DELIMITER //
CREATE FUNCTION resident_complaint_status(complaint_no INT)
RETURNS varchar(255)
READS SQL DATA
BEGIN
    DECLARE complaintStatus varchar(255);
    SELECT complaint_status INTO complaintStatus
    FROM resident_complaint_view
    WHERE case_no = complaint_no;
    RETURN complaintStatus;
END //
DELIMITER ;

-- Function to get the age of a resident
DELIMITER //
CREATE FUNCTION resident_age(residentId INT) 
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE age INT;
    SELECT TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) INTO age
    FROM resident_view
    WHERE resident_id = residentId;
    RETURN age;
END//
DELIMITER ;

-- Function to get the total number of barangay clearances issued for a resident
DELIMITER //
CREATE FUNCTION resident_clearance_count(residentId INT) 
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE clearance_count INT;
    SELECT Full_Name, COUNT(brgy_clearance_id) AS 'Brgy_Clearance_id' INTO clearance_count
    FROM barangay_clearance_view
    WHERE resident_id = residentId
    GROUP BY Full_Name;
    RETURN clearance_count;
END//
DELIMITER ;
-- ----------------------------------------------------------------------------------------------------------------------

-- TRIGGERS
DELIMITER //
CREATE TRIGGER before_resident_delete
BEFORE DELETE ON resident
FOR EACH ROW
BEGIN
    INSERT INTO resident_archive (resident_id, first_name, mid_name, last_name, suffix, sex, date_of_birth, place_of_birth, civil_status, nationality, occupation, religion, blood_type, fourps_status, disability_status, type_disability, senior_status, educational_attainment, phone_number, tel_number, email, purok, street, lot_number, voter_status, voter_id, precinct_number, national_id, vaccine_status, vaccine_1, vaccine_date_1, vaccine_2, vaccine_date_2, booster_status, booster_1, booster_date_1, booster_2, booster_date_2, emergency_person, relationship, emergency_address, emergency_contact, img_url, alien_status, deceased_status, date_of_death, created_by, date_created, updated_by, date_updated, remarks, archived_by, date_archived)
    VALUES (OLD.resident_id, OLD.first_name, OLD.mid_name, OLD.last_name, OLD.suffix, OLD.sex, OLD.date_of_birth, OLD.place_of_birth, OLD.civil_status, OLD.nationality, OLD.occupation, OLD.religion, OLD.blood_type, OLD.fourps_status, OLD.disability_status, OLD.type_disability, OLD.senior_status, OLD.educational_attainment, OLD.phone_number, OLD.tel_number, OLD.email, OLD.purok, OLD.street, OLD.lot_number, OLD.voter_status, OLD.voter_id, OLD.precinct_number, OLD.national_id, OLD.vaccine_status, OLD.vaccine_1, OLD.vaccine_date_1, OLD.vaccine_2, OLD.vaccine_date_2, OLD.booster_status, OLD.booster_1, OLD.booster_date_1, OLD.booster_2, OLD.booster_date_2, OLD.emergency_person, OLD.relationship, OLD.emergency_address, OLD.emergency_contact, OLD.img_url, OLD.alien_status, OLD.deceased_status, OLD.date_of_death, OLD.created_by, OLD.date_created, OLD.updated_by, OLD.date_updated, NULL, NULL, current_timestamp());
END//
DELIMITER ;

DELIMITER //
CREATE TRIGGER before_complaint_delete
BEFORE DELETE ON complaint
FOR EACH ROW
BEGIN
    INSERT INTO complaint_archive (case_no, complainant_id, respondent_id, mediator_id, or_no, reason, complaint_description, date_of_hearing, action_taken, complaint_status, created_by, date_created, updated_by, date_updated, remarks, archived_by, date_archived)
    VALUES (OLD.case_no, OLD.complainant_id, OLD.respondent_id, OLD.mediator_id, OLD.or_no, OLD.reason, OLD.complaint_description, OLD.date_of_hearing, OLD.action_taken, OLD.complaint_status, OLD.created_by, OLD.date_created, OLD.updated_by, OLD.date_updated, NULL, NULL, current_timestamp());
END//
DELIMITER ;

DELIMITER //
CREATE TRIGGER before_official_delete
BEFORE DELETE ON official
FOR EACH ROW
BEGIN
    INSERT INTO official_archive (official_id, resident_id, off_position, term, first_term_start, first_term_end, second_term_start, second_term_end, third_term_start, third_term_end, created_by, date_created, updated_by, date_updated, remarks, archived_by, date_archived)
    VALUES (OLD.official_id, OLD.resident_id, OLD.off_position, OLD.term, OLD.first_term_start, OLD.first_term_end, OLD.second_term_start, OLD.second_term_end, OLD.third_term_start, OLD.third_term_end, OLD.created_by, OLD.date_created, OLD.updated_by, OLD.date_updated, NULL, NULL, current_timestamp());
END//
DELIMITER ;
-- ---------------------------------------------------------------------------------------------------------------------------------------------


-- Stored Procedure
DELIMITER //

CREATE PROCEDURE GetResidentsByAgeRange(
  IN min_age INT,
  IN max_age INT
)
BEGIN
  SELECT *
  FROM resident
  WHERE TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) BETWEEN min_age AND max_age;
END //

DELIMITER ;
-- CALL GetResidentsByAgeRange(18, 30);


DELIMITER //
CREATE PROCEDURE CalculateAverageAgeByGender()
BEGIN
    SELECT 
        CASE 
            WHEN sex = 'Male' THEN 'Male'
            WHEN sex = 'Female' THEN 'Female'
            ELSE 'Other'
        END AS Gender,
        AVG(DATEDIFF(CURDATE(), date_of_birth) / 365) AS AverageAge
    FROM resident
    GROUP BY Gender;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetResidentsWithMultipleVaccinations()
BEGIN
    SELECT *
    FROM resident
    WHERE (vaccine_status = 'Vaccinated' AND vaccine_2 IS NOT NULL)
        OR (booster_status = 'Boostered' AND booster_2 IS NOT NULL);
END //
DELIMITER ;

-- --------------------------------------------------------------------------------------------------------------------------
-- ADMINISTRATOR - HAVE ALL OF THE PRIVILEGES

-- CREATE ROLE 'superadmin'; 
-- GRANT ALL PRIVILEGES ON *.* TO 'superadmin' WITH GRANT OPTION;


-- CREATE USER 'brgy_administrator' IDENTIFIED BY 'Brgy_superAdmin1';
-- GRANT USAGE ON complaintsc.* TO 'brgy_administrator';
-- GRANT superadmin TO 'brgy_administrator';

-- ROLES
CREATE ROLE 'captain'; 
GRANT SELECT ON complaintsc.resident TO 'captain';
GRANT SELECT ON complaintsc.complaint TO 'captain';
GRANT SELECT ON complaintsc.complainant TO 'captain';
GRANT SELECT ON complaintsc.respondent TO 'captain';
GRANT SELECT ON complaintsc.mediator TO 'captain';
GRANT SHOW VIEW, SELECT ON complaintsc.resident_view TO 'captain';

CREATE ROLE 'secretary'; 
GRANT INSERT, SELECT, UPDATE ON complaintsc.users TO 'secretary';
GRANT INSERT, SELECT, UPDATE ON complaintsc.resident TO 'secretary';
GRANT INSERT, SELECT, UPDATE ON complaintsc.resident_archive TO 'secretary';
GRANT INSERT, SELECT, UPDATE ON complaintsc.complaint TO 'secretary';
GRANT INSERT, SELECT, UPDATE ON complaintsc.complainant TO 'secretary';
GRANT INSERT, SELECT, UPDATE ON complaintsc.respondent TO 'secretary';
GRANT INSERT, SELECT, UPDATE ON complaintsc.mediator TO 'secretary';
GRANT INSERT, SELECT, UPDATE ON complaintsc.complaint_archive TO 'secretary';
GRANT INSERT, SELECT, UPDATE ON complaintsc.official TO 'secretary';
GRANT INSERT, SELECT, UPDATE ON complaintsc.official_archive TO 'secretary';
GRANT SHOW VIEW, SELECT ON complaintsc.* TO 'secretary';
GRANT EXECUTE ON *.* TO 'secretary';
-- GRANT USAGE, SELECT, UPDATE ON SEQUENCE users_user_id_seq TO secretary;
-- GRANT USAGE, SELECT, UPDATE ON SEQUENCE resident_resident_id_seq TO secretary;
-- GRANT USAGE, SELECT, UPDATE ON SEQUENCE resident_archive_resident_archive_id_seq TO secretary;
-- GRANT USAGE, SELECT, UPDATE ON SEQUENCE complaint_case_no_seq TO secretary;
-- GRANT USAGE, SELECT, UPDATE ON SEQUENCE complainant_complainant_id_seq TO secretary;
-- GRANT USAGE, SELECT, UPDATE ON SEQUENCE respondent_respondent_id_seq TO secretary;
-- GRANT USAGE, SELECT, UPDATE ON SEQUENCE mediator_mediator_id_seq TO secretary;
-- GRANT USAGE, SELECT, UPDATE ON SEQUENCE complaint_archive_complaint_archive_id_seq TO secretary;
-- GRANT USAGE, SELECT, UPDATE ON SEQUENCE official_official_id_seq TO secretary;
-- GRANT USAGE, SELECT, UPDATE ON SEQUENCE official_archive_official_archive_id_seq TO secretary;


CREATE ROLE 'resident_admin'; 
GRANT INSERT, SELECT, UPDATE ON complaintsc.users TO 'resident_admin';
GRANT INSERT, SELECT, UPDATE, DELETE ON complaintsc.resident TO 'resident_admin';
GRANT INSERT, SELECT, UPDATE ON complaintsc.resident_archive TO 'resident_admin';
GRANT INSERT, SELECT, UPDATE ON complaintsc.official TO 'resident_admin';
GRANT INSERT, SELECT, UPDATE ON complaintsc.official_archive TO 'resident_admin';
GRANT SHOW VIEW, SELECT ON complaintsc.official_info_view TO 'resident_admin';
GRANT SHOW VIEW, SELECT ON complaintsc.resident_view TO 'resident_admin';
GRANT SHOW VIEW, SELECT ON complaintsc.brgy_clearance_view TO 'resident_admin';
GRANT EXECUTE ON *.* TO 'resident_admin';

CREATE ROLE 'resident_encoder'; 
GRANT INSERT, SELECT ON complaintsc.resident TO 'resident_encoder';

CREATE ROLE 'complaint_admin';
GRANT INSERT, SELECT, UPDATE ON complaintsc.users TO 'complaint_admin';
GRANT SELECT ON complaintsc.resident TO 'complaint_admin';
GRANT INSERT, SELECT, UPDATE, DELETE ON complaintsc.complaint TO 'complaint_admin';
GRANT INSERT, SELECT, UPDATE ON complaintsc.complaint_archive TO 'complaint_admin';
GRANT INSERT, SELECT, UPDATE, DELETE ON complaintsc.complainant TO 'complaint_admin';
GRANT INSERT, SELECT, UPDATE, DELETE ON complaintsc.respondent TO 'complaint_admin';
GRANT INSERT, SELECT, UPDATE, DELETE ON complaintsc.mediator TO 'complaint_admin';
GRANT INSERT, SELECT, UPDATE ON complaintsc.official TO 'complaint_admin';
GRANT INSERT, SELECT, UPDATE ON complaintsc.official_archive TO 'complaint_admin';
GRANT SHOW VIEW, SELECT ON complaintsc.* TO 'complaint_admin';
GRANT EXECUTE ON *.* TO 'complaint_admin';

CREATE ROLE 'complaint_encoder';
GRANT SELECT ON complaintsc.resident TO 'complaint_encoder';
GRANT INSERT, SELECT ON complaintsc.complaint TO 'complaint_encoder';
GRANT INSERT, SELECT ON complaintsc.complainant TO 'complaint_encoder';
GRANT INSERT, SELECT ON complaintsc.respondent TO 'complaint_encoder';
GRANT INSERT, SELECT ON complaintsc.mediator TO 'complaint_encoder';

-- USER
-- Create users with their corresponding privileges

-- BARANGAY CAPTAIN
CREATE USER 'brgy_captain' IDENTIFIED BY 'Brgy_captain2';
GRANT captain TO 'brgy_captain';

-- BARANGAY SECRETARY
CREATE USER 'brgy_secretary' IDENTIFIED BY 'Brgy_secretary3';
GRANT secretary TO 'brgy_secretary';

-- BARANGAY CLERK - RESIDENT PROFILE ADMIN
CREATE USER 'clerk_resident_admin' IDENTIFIED BY 'Clerk_residentAdmin4';
GRANT resident_admin TO 'clerk_resident_admin';

-- BARANGAY CLERK - RESIDENT PROFILE ENCODER
CREATE USER 'clerk_resident_encoder' IDENTIFIED BY 'Clerk_residentEncoder5';
GRANT resident_encoder TO 'clerk_resident_encoder';

-- BARANGAY CLERK - COMPLAINT COMPLAINT ADMIN
CREATE USER 'clerk_complaint_admin' IDENTIFIED BY 'Clerk_complaintAdmin6';
GRANT complaint_admin TO 'clerk_complaint_admin';

-- BARANGAY CLERK - RESIDENT COMPLAINT ENCODER
CREATE USER 'clerk_complaint_encoder' IDENTIFIED BY 'Clerk_complaintEncoder7';
GRANT complaint_encoder TO 'clerk_complaint_encoder';

FLUSH PRIVILEGES;

