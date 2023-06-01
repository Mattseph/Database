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


CREATE TABLE `disability_information` (
		`disability_id` int(11) NOT NULL AUTO_INCREMENT,
        `resident_id` int(11) NOT NULL,
        `disability_status` varchar(30) NOT NULL,
        `type_disability` varchar(50) NOT NULL,
        PRIMARY KEY(`disability_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE `contact_information` (
		`contact_id` int(11) NOT NULL AUTO_INCREMENT,
        `resident_id` int(11) NOT NULL,
        `phone_number` varchar(11) NOT NULL,
        `tel_number` varchar(12) NOT NULL,
        `email` varchar(100) NOT NULL,
        PRIMARY KEY(`contact_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE `address_information` (
		`address_id` int(11) NOT NULL AUTO_INCREMENT,
        `resident_id` int(11) NOT NULL,
        `purok` varchar(20) NOT NULL,
        `street` varchar(50) NOT NULL,
        `lot_number` varchar(20) NOT NULL,
        PRIMARY KEY(`address_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
    
CREATE TABLE `vaccine_information` (
		`vaccine_id` int(11) NOT NULL AUTO_INCREMENT,
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
        `booster_date_2` date DEFAULT NULL,
        PRIMARY KEY(`vaccine_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

 CREATE TABLE `voter_information` (
		`voter_no` varchar(20) NOT NULL,
		`resident_id` int(11) NOT NULL,
		`voter_status` varchar(20) NOT NULL,
        `precinct_number` varchar(20) DEFAULT NULL,
        PRIMARY KEY(`voter_no`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

 CREATE TABLE `emergency_contact_information` (
		`emergency_contact_id` int(11) NOT NULL AUTO_INCREMENT,
		`resident_id` int(11) NOT NULL,
		`emergency_person` varchar(255) NOT NULL,
        `relationship` varchar(20) NOT NULL,
        `emergency_address` varchar(255) NOT NULL,
        `emergency_contact` varchar(11) NOT NULL,
        PRIMARY KEY(`emergency_contact_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


CREATE TABLE `complainant` (
		`complainant_id` int(11) NOT NULL AUTO_INCREMENT,
		`resident_id` int(11) NOT NULL,
        PRIMARY KEY(`complainant_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


CREATE TABLE `respondent` (
		`respondent_id` int(11) NOT NULL AUTO_INCREMENT,
		`resident_id` int(11) NOT NULL,
        PRIMARY KEY(`respondent_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


CREATE TABLE `mediator` (
		`mediator_id` int(11) NOT NULL AUTO_INCREMENT,
		`resident_id` int(11) NOT NULL,
        `official_id` int(11) NOT NULL,
        PRIMARY KEY(`mediator_id`),
        FOREIGN KEY(`resident_id`) REFERENCES resident(`resident_id`),
        FOREIGN KEY(`official_id`) REFERENCES official(`official_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


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
        `restored_by` varchar(50) DEFAULT NULL,
        `date_restored` datetime DEFAULT NULL,
        PRIMARY KEY(`case_no`),
        FOREIGN KEY(`complainant_id`) REFERENCES complainant(`complainant_id`),
        FOREIGN KEY(`respondent_id`) REFERENCES respondent(`respondent_id`),
        FOREIGN KEY(`mediator_id`) REFERENCES mediator(`mediator_id`)
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
        `remarks` varchar(50) DEFAULT NULL,
        `archived_by` varchar(255) DEFAULT NULL,
        `date_archived` datetime DEFAULT NULL ON UPDATE current_timestamp(),
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

-- TRIGGERS

-- DELIMITER //
-- CREATE TRIGGER before_resident_delete
-- BEFORE DELETE ON resident
-- FOR EACH ROW
-- BEGIN
--    INSERT INTO resident_archive (resident_id, first_name, mid_name, last_name, suffix, sex, date_of_birth, place_of_birth, civil_status, nationality, occupation, religion, blood_type, fourps_status, disability_status, type_disability, senior_status, educational_attainment, phone_number, tel_number, email, purok, street, lot_number, voter_status, voter_id, precinct_number, national_id, vaccine_status, vaccine_1, vaccine_date_1, vaccine_2, vaccine_date_2, booster_status, booster_1, booster_date_1, booster_2, booster_date_2, emergency_person, relationship, emergency_address, emergency_contact, img_url, alien_status, deceased_status, date_of_death, created_by, date_created, updated_by, date_updated, remarks, archived_by, date_archived)
--    VALUES (OLD.resident_id, OLD.first_name, OLD.mid_name, OLD.last_name, OLD.suffix, OLD.sex, OLD.date_of_birth, OLD.place_of_birth, OLD.civil_status, OLD.nationality, OLD.occupation, OLD.religion, OLD.blood_type, OLD.fourps_status, OLD.disability_status, OLD.type_disability, OLD.senior_status, OLD.educational_attainment, OLD.phone_number, OLD.tel_number, OLD.email, OLD.purok, OLD.street, OLD.lot_number, OLD.voter_status, OLD.voter_id, OLD.precinct_number, OLD.national_id, OLD.vaccine_status, OLD.vaccine_1, OLD.vaccine_date_1, OLD.vaccine_2, OLD.vaccine_date_2, OLD.booster_status, OLD.booster_1, OLD.booster_date_1, OLD.booster_2, OLD.booster_date_2, OLD.emergency_person, OLD.relationship, OLD.emergency_address, OLD.emergency_contact, OLD.img_url, OLD.alien_status, OLD.deceased_status, OLD.date_of_death, OLD.created_by, OLD.date_created, OLD.updated_by, OLD.date_updated, NULL, NULL, current_timestamp());
-- END//
-- DELIMITER ;
--
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

-- VIEWS

-- View to retrieve basic information of residents.
-- CREATE VIEW resident_info AS
-- SELECT resident_id, first_name, last_name, date_of_birth, occupation, email
-- FROM resident;
--
-- View to get details of complaints along with the names of complainants and respondents
CREATE VIEW complaint_details AS
SELECT c.case_no, r1.first_name AS complainant_first_name, r1.last_name AS complainant_last_name,
       r2.first_name AS respondent_first_name, r2.last_name AS respondent_last_name,
       c.complaint_description, c.date_of_hearing
FROM complaint c
JOIN complainant cmp ON c.complainant_id = cmp.complainant_id
JOIN respondent rsp ON c.respondent_id = rsp.respondent_id
JOIN resident r1 ON cmp.resident_id = r1.resident_id
JOIN resident r2 ON rsp.resident_id = r2.resident_id;

-- View to retrieve information of officials and their positions
CREATE VIEW official_info AS
SELECT o.official_id, r.first_name, r.last_name, o.off_position
FROM official o
JOIN resident r ON o.resident_id = r.resident_id;


