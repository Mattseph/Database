-- phpMyAdmin SQL Dump

-- version 5.2.1

-- https://www.phpmyadmin.net/

--

-- Host: 127.0.0.1

-- Generation Time: Mar 09, 2023 at 02:41 PM

-- Server version: 10.4.24-MariaDB

-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

--

-- Database: `fatimadb`

--

-- --------------------------------------------------------


--

-- Table structure for table `officials`

--

CREATE TABLE
    `officials` (
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
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------

--

-- Table structure for table `officials_archive`

--

CREATE TABLE
    `officials_archive` (
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
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------

--

-- Table structure for table `residents`

--

CREATE TABLE
    `residents` (
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
        `senior_status` varchar(20) NOT NULL,
        `educational_attainment` varchar(30) NOT NULL,
        `national_id` varchar(55) DEFAULT NULL,
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
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------


--

-- Table structure for table `Disability`

--

CREATE TABLE 
	`disability_information` (
		`disability_id` int(11) NOT NULL,
        `resident_id` int(11) NOT NULL,
        `disability_status` varchar(30) NOT NULL,
        `type_disability` varchar(50) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------
--

-- Table structure for table `Contact Information`

--

CREATE TABLE 
	`contact_information` (
		`contact_id` int(11) NOT NULL,
        `resident_id` int(11) NOT NULL,
        `phone_number` varchar(11) NOT NULL,
        `tel_number` varchar(12) NOT NULL,
        `email` varchar(100) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------

--

-- Table structure for table `Address`

--

CREATE TABLE 
	`address_information` (
		`address_id` int(11) NOT NULL,
        `resident_id` int(11) NOT NULL,
        `purok` varchar(20) NOT NULL,
        `street` varchar(50) NOT NULL,
        `lot_number` varchar(20) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------

--

-- Table structure for table `Vaccine Information`

--
CREATE TABLE 
	`vaccine_information` (
		`vaccine_id` int(11) NOT NULL,
		`resident_id` int(11) NOT NULL,
		`vaccine_status` varchar(10) NOT NULL,
        `vaccine_1` varchar(15) NOT NULL,
        `vaccine_date_1` date DEFAULT NULL,
        `vaccine_2` varchar(15) NOT NULL,
        `vaccine_date_2` date DEFAULT NULL,
        `booster_status` varchar(10) NOT NULL,
        `booster_1` varchar(15) NOT NULL,
        `booster_date_1` date DEFAULT NULL,
        `booster_2` varchar(15) NOT NULL,
        `booster_date_2` date DEFAULT NULL
	) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------

--

-- Table structure for table `Voter Information`

--
 CREATE TABLE 
	`voter_information` (
		`voter_information_id` int(11) NOT NULL,
		`resident_id` int(11) NOT NULL,
		`voter_status` varchar(20) NOT NULL,
        `voter_no` varchar(20) DEFAULT NULL,
        `precinct_number` varchar(20) DEFAULT NULL
	) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------

-- Table structure for table `Emergency Contact`

--
 CREATE TABLE 
	`emergency_contact_information` (
		`emergency_contact_id` int(11) NOT NULL,
		`resident_id` int(11) NOT NULL,
		`emergency_person` varchar(255) NOT NULL,
        `relationship` varchar(20) NOT NULL,
        `emergency_address` varchar(255) NOT NULL,
        `emergency_contact` varchar(11) NOT NULL
	) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------

CREATE TABLE
	`complainant` (
		`complainant_id` int(11) NOT NULL,
		`resident_id` int(11) NOT NULL
	) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------

CREATE TABLE
	`respondent` (
		`respondent_id` int(11) NOT NULL,
		`resident_id` int(11) NOT NULL
	) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------

CREATE TABLE
	`mediator` (
		`mediator_id` int(11) NOT NULL,
		`resident_id` int(11) NOT NULL,
        `official_id` int(11) NOT NULL
	) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------

CREATE TABLE
	`complaint` (
		`case_no` int(11) NOT NULL,
		`mediator_id` int(11) NOT NULL,
		`respondent_id` int(11) NOT NULL,
        `complainant_id` int(11) NOT NULL,
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
	) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------

--

-- Table structure for table `residents_archive`

--

CREATE TABLE
    `residents_archive` (
        `resident_archive_id` int(11) NOT NULL,
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
        `date_archived` datetime DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------

--

-- Table structure for table `users`

--

CREATE TABLE
    `users` (
        `user_id` int(11) NOT NULL,
        `resident_id` int(11) NOT NULL,
        `official_id` int(11) NOT NULL,
        `username` varchar(50) NOT NULL,
        `password` varchar(50) NOT NULL,
        `role` varchar(30) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--

-- Indexes for dumped tables

--

--

-- Indexes for table `officials`

--

ALTER TABLE `officials`
ADD
    PRIMARY KEY (`official_id`),
ADD
    KEY `resident_id` (`resident_id`);

--

-- Indexes for table `officials_archive`

--

ALTER TABLE
    `officials_archive`
ADD
    PRIMARY KEY (`official_archive_id`),
ADD
    KEY `resident_id` (`resident_id`),
ADD
    KEY `official_id` (`official_id`);

--

-- Indexes for table `residents`

--

ALTER TABLE `residents` ADD PRIMARY KEY (`resident_id`);


ALTER TABLE
    `disability_information`
ADD
    PRIMARY KEY (`disability_id`),
ADD
    KEY `resident_id` (`resident_id`);

ALTER TABLE
    `contact_information`
ADD
    PRIMARY KEY (`contact_id`),
ADD
    KEY `resident_id` (`resident_id`);
    
ALTER TABLE
    `address_information`
ADD
    PRIMARY KEY (`address_id`),
ADD
    KEY `resident_id` (`resident_id`);
    
ALTER TABLE
    `vaccine_information`
ADD
    PRIMARY KEY (`vaccine_id`),
ADD
    KEY `resident_id` (`resident_id`);
    
ALTER TABLE
    `voter_information`
ADD
    PRIMARY KEY (`voter_information_id`),
ADD
    KEY `resident_id` (`resident_id`);

ALTER TABLE
    `emergency_contact_information`
ADD
    PRIMARY KEY (`emergency_contact_id`),
ADD
    KEY `resident_id` (`resident_id`);
    
ALTER TABLE
    `complainant`
ADD
    PRIMARY KEY (`complainant_id`),
ADD
    KEY `resident_id` (`resident_id`);
    
ALTER TABLE
    `respondent`
ADD
    PRIMARY KEY (`respondent_id`),
ADD
    KEY `resident_id` (`resident_id`);
    
ALTER TABLE
    `mediator`
ADD
    PRIMARY KEY (`mediator_id`),
ADD
    KEY `resident_id` (`resident_id`),
ADD
    KEY `official_id` (`official_id`);
    
ALTER TABLE
    `complaint`
ADD
    PRIMARY KEY (`case_no`),
ADD
    KEY `mediator_id` (`mediator_id`),
ADD
    KEY `complainant_id` (`complainant_id`),
ADD
    KEY `respondent_id` (`respondent_id`);


--

-- Indexes for table `residents_archive`

--

ALTER TABLE
    `residents_archive`
ADD
    PRIMARY KEY (`resident_archive_id`),
ADD
    KEY `resident_id` (`resident_id`);

--

-- Indexes for table `users`

--

ALTER TABLE 
	`users`
ADD 
	PRIMARY KEY (`user_id`),
ADD
    KEY `resident_id` (`resident_id`),
ADD
    KEY `official_id` (`official_id`);



--

-- AUTO_INCREMENT for table `officials`

--

ALTER TABLE
    `officials` MODIFY `official_id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 9;

--

-- AUTO_INCREMENT for table `officials_archive`

--

ALTER TABLE
    `officials_archive` MODIFY `official_archive_id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT for table `residents`

--

ALTER TABLE
    `residents` MODIFY `resident_id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 12;

ALTER TABLE
    `disability_information` MODIFY `disability_id` int(11) NOT NULL AUTO_INCREMENT;
    
ALTER TABLE
    `contact_information` MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE
    `address_information` MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE
    `vaccine_information` MODIFY `vaccine_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE
    `voter_information` MODIFY `voter_information_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE
    `emergency_contact_information` MODIFY `emergency_contact_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE
    `complainant` MODIFY `complainant_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE
    `respondent` MODIFY `respondent_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE
    `mediator` MODIFY `mediator_id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE
    `complaint` MODIFY `case_no` int(11) NOT NULL AUTO_INCREMENT;
--

-- AUTO_INCREMENT for table `residents_archive`

--

ALTER TABLE
    `residents_archive` MODIFY `resident_archive_id` int(11) NOT NULL AUTO_INCREMENT;


--

-- AUTO_INCREMENT for table `users`

--

ALTER TABLE
    `users` MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;



--

-- Constraints for dumped tables

--

--

-- Constraints for table `officials`

--

ALTER TABLE `officials`
ADD
    CONSTRAINT `officials_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);

--

-- Constraints for table `officials_archive`

--

ALTER TABLE
    `officials_archive`
ADD
    CONSTRAINT `officials_archive_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`),
ADD
    CONSTRAINT `officials_archive_ibfk_2` FOREIGN KEY (`official_id`) REFERENCES `officials` (`official_id`);

--

-- Constraints for table `residents_archive`

--

ALTER TABLE
    `residents_archive`
ADD
    CONSTRAINT `residents_archive_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);
    
ALTER TABLE
    `disability_information`
ADD
    CONSTRAINT `disability_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);

ALTER TABLE
    `contact_information`
ADD
    CONSTRAINT `contact_information_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);

ALTER TABLE
    `address_information`
ADD
    CONSTRAINT `address_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);

ALTER TABLE
    `vaccine_information`
ADD
    CONSTRAINT `vaccine_information_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);
    
ALTER TABLE
    `voter_information`
ADD
    CONSTRAINT `voter_information_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);

ALTER TABLE
    `emergency_contact_information`
ADD
    CONSTRAINT `emergency_contact_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);

ALTER TABLE 
	`complainant`
ADD
    CONSTRAINT `complainant_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);
    
ALTER TABLE 
	`respondent`
ADD
    CONSTRAINT `respondent_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`);

ALTER TABLE 
	`mediator`
ADD
    CONSTRAINT `mediator_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`),
ADD
    CONSTRAINT `mediator_ibfk_2` FOREIGN KEY (`official_id`) REFERENCES `officials` (`official_id`);

ALTER TABLE 
	`complaint`
ADD
    CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`mediator_id`) REFERENCES `mediator` (`mediator_id`),
ADD
    CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`complainant_id`) REFERENCES `complainant` (`complainant_id`),
ADD
    CONSTRAINT `complaint_ibfk_3` FOREIGN KEY (`respondent_id`) REFERENCES `respondent` (`respondent_id`);
    
--

-- Constraints for table `users`

--

ALTER TABLE 
	`users`
ADD
    CONSTRAINT `users_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`resident_id`),
ADD
    CONSTRAINT `users_ibfk_2` FOREIGN KEY (`official_id`) REFERENCES `officials` (`official_id`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;