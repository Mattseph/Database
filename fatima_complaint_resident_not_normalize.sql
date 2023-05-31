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
        `purok` varchar(20) NOT NULL,
        `street` varchar(50) NOT NULL,
        `lot_number` varchar(20) NOT NULL,
        `nationality` varchar(20) NOT NULL,
        `occupation` varchar(50) NOT NULL,
        `religion` varchar(50) NOT NULL,
        `blood_type` varchar(10) NOT NULL,
        `fourps_status` varchar(5) NOT NULL,
        `senior_status` varchar(20) NOT NULL,
        `educational_attainment` varchar(30) NOT NULL,
        `disability_status` varchar(30) NOT NULL,
        `type_disability` varchar(50) NOT NULL,
        `phone_number` varchar(11) NOT NULL,
        `tel_number` varchar(12) NOT NULL,
        `email` varchar(100) NOT NULL,
        `national_id` varchar(55) DEFAULT NULL,
        `voter_status` varchar(20) NOT NULL,
        `precinct_number` varchar(20) DEFAULT NULL,
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
        `alien_status` varchar(50) NOT NULL,
        `deceased_status` varchar(50) DEFAULT NULL,
        `date_of_death` date DEFAULT NULL,
        `emergency_person` varchar(255) NOT NULL,
        `relationship` varchar(20) NOT NULL,
        `emergency_address` varchar(255) NOT NULL,
        `emergency_contact` varchar(11) NOT NULL,
        `img_url` varchar(255) NOT NULL,
        `created_by` varchar(50) NOT NULL,
        `date_created` datetime NOT NULL DEFAULT current_timestamp(),
        `updated_by` varchar(50) DEFAULT NULL,
        `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
        `restored_by` varchar(50) DEFAULT NULL,
        `date_restored` datetime DEFAULT NULL,
        PRIMARY KEY(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


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
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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

CREATE TABLE `official_archive` (
        `official_archive_id` int(11) NOT NULL AUTO_INCREMENT,
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
        `date_archived` datetime DEFAULT NULL ON UPDATE current_timestamp(),
        PRIMARY KEY(`official_archive_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`),
        FOREIGN KEY(`official_id`) REFERENCES official(`official_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE `complainant` (
		`complainant_id` int(11) NOT NULL AUTO_INCREMENT,
		`resident_id` int(11) NOT NULL,
        PRIMARY KEY(`complainant_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


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



CREATE TABLE `mediator` (
	  `mediator_id` int(11) NOT NULL,
	  `resident_id` int(11) NOT NULL,
	  `official_id` int(11) NOT NULL,
	  PRIMARY KEY (`mediator_id`),
      FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`),
	  FOREIGN KEY(`official_id`) REFERENCES official(`official_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `complaint` (
		`case_no` int(11) NOT NULL AUTO_INCREMENT,
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
        PRIMARY KEY(`case_no`),
        FOREIGN KEY(`complainant_id`) REFERENCES `complainant`(`complainant_id`),
        FOREIGN KEY(`respondent_id`) REFERENCES `respondent`(`respondent_id`),
        FOREIGN KEY(`mediator_id`) REFERENCES `mediator`(`mediator_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


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
        PRIMARY KEY(`complaint_archive_id`),
        FOREIGN KEY(`complainant_id`) REFERENCES `complainant`(`complainant_id`),
        FOREIGN KEY(`respondent_id`) REFERENCES `respondent`(`respondent_id`),
        FOREIGN KEY(`mediator_id`) REFERENCES `mediator`(`mediator_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
        PRIMARY KEY(`resident_archive_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE `users` (
        `user_id` int(11) NOT NULL AUTO_INCREMENT,
        `resident_id` int(11) NOT NULL,
        `official_id` int(11) NOT NULL,
        `username` varchar(50) NOT NULL,
        `password` varchar(50) NOT NULL,
        `role` varchar(30) NOT NULL,
        PRIMARY KEY(`user_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`),
        FOREIGN KEY(`official_id`) REFERENCES official(`official_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- Create users with their corresponding privileges

-- ADMINISTRATOR - HAVE ALL OF THE PRIVILEGES
CREATE USER 'brgy_administrator'@'localhost' IDENTIFIED BY 'Brgy_superAdmin1';
GRANT ALL PRIVILEGES ON complaintsc.* TO 'brgy_administrator'@'localhost';

-- BARANGAY CAPTAIN
CREATE USER 'brgy_captain'@'localhost' IDENTIFIED BY 'Brgy_captain2';
GRANT USAGE ON complaintsc.* TO 'brgy_captain'@'localhost';
GRANT SELECT ON complaintsc.resident TO 'brgy_captain'@'localhost';
GRANT SELECT ON complaintsc.resident_archive TO 'brgy_captain'@'localhost';
GRANT SELECT ON complaintsc.complaint TO 'brgy_captain'@'localhost';
GRANT SELECT ON complaintsc.complaint_archive TO 'brgy_captain'@'localhost';

-- BARANGAY SECRETARY
CREATE USER 'brgy_secretary'@'localhost' IDENTIFIED BY 'Brgy_secretary3';
GRANT USAGE ON complaintsc.* TO 'brgy_secretary'@'localhost';
GRANT SELECT, INSERT, UPDATE ON complaintsc.resident TO 'brgy_secretary'@'localhost';
GRANT SELECT, UPDATE ON complaintsc.resident_archive TO 'brgy_secretary'@'localhost';
GRANT SELECT, INSERT, UPDATE ON complaintsc.complaint TO 'brgy_secretary'@'localhost';
GRANT SELECT, UPDATE ON complaintsc.complaint_archive TO 'brgy_secretary'@'localhost';
GRANT SELECT, INSERT, UPDATE ON complaintsc.official TO 'brgy_secretary'@'localhost';
GRANT SELECT, UPDATE ON complaintsc.official_archive TO 'brgy_secretary'@'localhost';

-- BARANGAY CLERK - RESIDENT PROFILE ENCODER
CREATE USER 'clerk_resident_encoder'@'localhost' IDENTIFIED BY 'Clerk_residentEncoder4';
GRANT USAGE ON complaintsc.* TO 'clerk_resident_encoder'@'localhost';
GRANT INSERT, SELECT ON complaintsc.resident TO 'clerk_resident_encoder'@'localhost';

-- BARANGAY CLERK - RESIDENT PROFILE ADMIN
CREATE USER 'clerk_resident_admin'@'localhost' IDENTIFIED BY 'Clerk_residentAdmin5';
GRANT USAGE ON complaintsc.* TO 'clerk_resident_admin'@'localhost';
GRANT INSERT, SELECT, UPDATE ON complaintsc.users TO 'clerk_resident_admin'@'localhost';
GRANT INSERT, SELECT, UPDATE ON complaintsc.resident TO 'clerk_resident_admin'@'localhost';
GRANT INSERT, SELECT, UPDATE ON complaintsc.resident_archive TO 'clerk_resident_admin'@'localhost';
GRANT INSERT, SELECT, UPDATE ON complaintsc.official TO 'clerk_resident_admin'@'localhost';
GRANT INSERT, SELECT, UPDATE ON complaintsc.official_archive TO 'clerk_resident_admin'@'localhost';


-- BARANGAY CLERK - RESIDENT COMPLAINT ENCODER
CREATE USER 'clerk_complaint_encoder'@'localhost' IDENTIFIED BY 'Clerk_complaintEncoder6';
GRANT USAGE ON complaintsc.* TO 'clerk_complaint_encoder'@'localhost';
GRANT INSERT, SELECT ON complaintsc.complaint TO 'clerk_complaint_encoder'@'localhost';
GRANT INSERT, SELECT ON complaintsc.complainant TO 'clerk_complaint_encoder'@'localhost';
GRANT INSERT, SELECT ON complaintsc.respondent TO 'clerk_complaint_encoder'@'localhost';
GRANT INSERT, SELECT ON complaintsc.mediator TO 'clerk_complaint_encoder'@'localhost';

-- BARANGAY CLERK - COMPLAINT COMPLAINT ADMIN
CREATE USER 'clerk_complaint_admin'@'localhost' IDENTIFIED BY 'Clerk_complaintAdmin7';
GRANT USAGE ON complaintsc.* TO 'clerk_complaint_admin'@'localhost';
GRANT INSERT, SELECT, UPDATE ON complaintsc.users TO 'clerk_complaint_admin'@'localhost';
GRANT INSERT, SELECT, UPDATE ON complaintsc.complaint TO 'clerk_complaint_admin'@'localhost';
GRANT INSERT, SELECT, UPDATE ON complaintsc.complaint_archive TO 'clerk_complaint_admin'@'localhost';
GRANT INSERT, SELECT, UPDATE ON complaintsc.complainant TO 'clerk_complaint_admin'@'localhost';
GRANT INSERT, SELECT, UPDATE ON complaintsc.respondent TO 'clerk_complaint_admin'@'localhost';
GRANT INSERT, SELECT, UPDATE ON complaintsc.mediator TO 'clerk_complaint_admin'@'localhost';

