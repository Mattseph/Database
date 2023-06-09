CREATE TABLE resident (
		resident_id serial PRIMARY KEY,
		first_name VARCHAR(255) NOT NULL,
        mid_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,
        suffix VARCHAR(10) NOT NULL,
        sex VARCHAR(20) NOT NULL,
        date_of_birth DATE NOT NULL,
        place_of_birth VARCHAR(255) NOT NULL,
        civil_status VARCHAR(20) NOT NULL,
        nationality VARCHAR(20) NOT NULL,
        occupation VARCHAR(50) NOT NULL,
        religion VARCHAR(50) NOT NULL,
        blood_type VARCHAR(10) NOT NULL,
        fourps_status VARCHAR(5) NOT NULL,
        disability_status VARCHAR(30) NOT NULL,
        type_disability VARCHAR(50) NOT NULL,
        senior_status VARCHAR(20) NOT NULL,
        educational_attainment VARCHAR(30) NOT NULL,
        phone_number VARCHAR(11) NOT NULL,
        tel_number VARCHAR(12) NOT NULL,
        email VARCHAR(100) NOT NULL,
        purok VARCHAR(20) NOT NULL,
        street VARCHAR(50) NOT NULL,
        lot_number VARCHAR(20) NOT NULL,
        voter_status VARCHAR(20) NOT NULL,
        voter_id VARCHAR(20) DEFAULT NULL,
        precinct_number VARCHAR(20) DEFAULT NULL,
        national_id VARCHAR(55) DEFAULT NULL,
        vaccine_status VARCHAR(10) DEFAULT NULL,
        vaccine_1 VARCHAR(15) DEFAULT NULL,
        vaccine_date_1 DATE DEFAULT NULL,
        vaccine_2 VARCHAR(15) DEFAULT NULL,
        vaccine_date_2 DATE DEFAULT NULL,
        booster_status VARCHAR(10) DEFAULT NULL,
        booster_1 VARCHAR(15) DEFAULT NULL,
        booster_date_1 DATE DEFAULT NULL,
        booster_2 VARCHAR(15) DEFAULT NULL,
        booster_date_2 DATE DEFAULT NULL,
        emergency_person VARCHAR(255) NOT NULL,
        relationship VARCHAR(20) NOT NULL,
        emergency_address VARCHAR(255) NOT NULL,
        emergency_contact VARCHAR(12) NOT NULL,
        img_url VARCHAR(255) NOT NULL,
        alien_status VARCHAR(50) NOT NULL,
        deceased_status VARCHAR(50) DEFAULT NULL,
        date_of_death DATE DEFAULT NULL,
		created_by varchar(50) NOT NULL,
		date_created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
		updated_by varchar(50),
		date_updated timestamp DEFAULT CURRENT_TIMESTAMP NULL,
		restored_by varchar(50),
		date_restored timestamp DEFAULT NULL,
        UNIQUE (first_name, mid_name, last_name, suffix)
);

INSERT INTO resident (resident_id, first_name, mid_name, last_name, suffix, sex, date_of_birth, place_of_birth, civil_status, nationality, occupation, religion, blood_type, fourps_status, disability_status, type_disability, senior_status, educational_attainment, purok, street, lot_number, phone_number, tel_number, email, voter_status, voter_id, precinct_number, national_id, vaccine_status, vaccine_1, vaccine_date_1, vaccine_2, vaccine_date_2, booster_status, booster_1, booster_date_1, booster_2, booster_date_2, emergency_person, relationship, emergency_address, emergency_contact, img_url, alien_status, deceased_status, date_of_death, created_by, date_created, updated_by, date_updated, restored_by, date_restored) VALUES
(1, 'Anne', '', 'Innocente', '', 'Female', '2013-06-22', 'Malilipot, Albay', 'Single', 'Filipino', '', '', '', '', '', '', '', 'Highschool Graduate', 'Purok 7', 'Block 6', 'Lot 6', '09756873875', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Ash Innocente', 'Mother', 'Fatima, General Santos', '9486903674', 'Innocente_Anne.png', '', '', NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:25:45', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:31:43', NULL, NULL),
(2, 'Arvin', '', 'Sulartin', '', 'Male', '2001-06-23', 'Banga, South Cotabato', 'Single', 'Filipino', 'Barangay Clerk', 'Roman Catholic', 'A+', '', '', '', '', 'College Undergraduate', 'Purok 13-B', 'Block 5', 'Lot 11', '09345368374', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Ginga Sulartin', 'Father', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9375837534', 'Sulartin_Arvin.png', '', '', NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:27:44', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-06-03 14:53:21', NULL, NULL),
(3, 'Amber', '', 'Fang', '', 'Female', '1964-05-30', 'Iloilo City', 'Married', 'Filipino', 'Barangay Clerk', '', '', '', '', '', '', 'College Graduate', 'Purok 13-A', 'Block 10', 'Lot 3', '09645673857', '', '', 'Registered Voter', '242y3rwe34', '43fd', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Regina Bilaos', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9169786296', 'Fang_Amber.png', '', '', NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:30:12', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-06-03 14:52:48', NULL, NULL),
(4, 'George', '', 'Larida', '', 'Male', '1952-06-14', 'General Santos City', 'Single', 'Filipino', '', '', '', '', '', '', 'Senior Citizen', 'Highschool Undergraduate', 'Purok 20', 'Blcok 5', 'Lot 6', '09345736573', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Amber Larida', 'Father', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9345837537', 'Larida_George.png', '', '', NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:36:55', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-04-13 12:33:48', NULL, NULL),
(5, 'Joseph', '', 'Pelle', '', 'Male', '1937-10-15', 'General Santos City', 'Married', 'Filipino', ' ', '', '', '', '', '', 'Senior Citizen', 'College Graduate', 'Purok 24', 'Block 2', 'Lot 9', '25', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Marigold Quiapo', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9673563534', 'default-img.svg', 'Changed Residency', '', NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:06:55 ', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-06-03 15:00:10', 'Administrator(Administrator)', '2023-04-23 14:24:22'),
(6, 'Fang', 'Fang', 'Matthew', 'Jr.', 'Male', '2023-04-13', 'Malilipot, Albay', 'Single', 'Filipino', 'Barangay Secretary', 'Srerwerwerwer', 'O+', '4Ps', 'Person With Disability', 'Psychosocial Disability', '', 'Elementary Graduate', 'Purok Purok Upper 11', 'Block 9', 'Lot 2', '09345347587', '234-234-2342', 'bilaos02311@gmail.com', 'Registered Voter', 'rer45', '34e', '', 'Vaccinated', 'Bharat', '2023-04-13', '', '2023-04-13', 'Boostered', 'Astrazeneca', '2023-04-13', '', '2023-04-13', 'Regina Bilaosss', 'Mother', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9345783475', 'Matthew_Fang.png', '', '', NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-04-13 12:36:28', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-06-03 14:49:37', NULL, NULL),
(7, 'Jessie', '', 'Sam', '', 'Male', '2002-07-04', 'Fatima, General Santos', 'Single', 'Filipino', 'Barangay Clerk', 'Roman Catholic', 'O-', '4Ps', 'Person With Disability', 'Mental Disability', '', 'Elementary Undergraduate', 'Purok Lower 11-A', 'Block 3', 'Lot 4', '09234235345', '023-423-5465', 'sam@gmail.com', 'Registered Voter', '234234', '34e', '', 'Vaccinated', 'Bharat', '2023-01-12', 'Bharat', '2023-02-03', 'Boostered', 'Astrazeneca', '2023-04-22', 'Bharat', '2023-06-03', 'Regina Bilaos', 'Motherr', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9353485834', 'Sam_Jessie.png', '', NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:24:25', NULL, '2023-06-03 14:52:03', NULL, NULL),
(8, 'Jan Marc', '', 'Esver', '', 'Male', '2018-02-09', 'General Santos City', 'Single', 'Filipino', 'Barangay Clerk', 'Roman Catholic', 'O+', '4Ps', 'Person With Disability', 'Palautog', '', 'College Undergraduate', 'Purok Lower 11-A', 'Block 7', 'Lot 29', '09345345345', '', '', 'Registered Voter', '234234f-234', '4b', '', 'Vaccinated', 'Bharat', '2023-05-01', 'Bharat', '2023-06-03', '', '', NULL, '', NULL, 'Marigold Quiapo', 'Cousin', 'Lagao, General Santos City', '9234923423', 'Esver_Jan Marc.png', '', '', NULL, 'Administrator(Administrator)', '2023-06-03 14:36:48', 'Administrator(Administrator)', '2023-06-03 14:50:45', NULL, NULL),
(9, 'Richard', '', 'Bangoy', '', 'Male', '2021-06-10', 'General Santos City', 'Single', 'Filipino', 'Barangay Clerk', 'Secret', 'O-', '4Ps', '', '', '', 'College Undergraduate', 'Purok 12', 'Block 12', 'Lot 3', '09345345345', '', 'bangoy@gmail.com', '', '', '', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Marimar Bangoy', 'Cousin', 'Lagao, General Santos City', '9284234238', 'default-img.svg', '', NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:42:12', NULL, '2023-06-03 14:50:04', NULL, NULL),
(10, 'Dave', '', 'Panizal', '', 'Male', '2023-06-03', 'Zamboanga Del Norte', 'Nullified', 'Filipino', 'Barangay Clerk', 'Islam', 'B-', '4Ps', '', '', '', 'Highschool Undergraduate', 'Purok 11-B', 'Block 3', 'Lot 2', '09458394589', '', 'panizal@gmail.com', 'Registered Voter', '234234', '0813c', '', 'Vaccinated', 'Bharat', '2021-04-29', 'Pfizer', '2021-06-03', 'Boostered', 'Moderna', '2022-06-03', '', NULL, 'Maricar Panizal', 'Cousin', 'Esperansa', '9486903345', 'default-img.svg', '', NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:46:43', NULL, '2023-06-03 14:49:01', NULL, NULL),
(11, 'Renante', 'D', 'Curit', '', 'Male', '1974-10-31', 'General Santos City', 'Married', 'Filipino', 'Barangay Chairman', 'Roman Catholic', 'A+', '', '', '', '', 'College Graduate', 'Purok 8', 'Block 12', 'Lot 2', '09166111421', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Regina Bilaossss', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9486903345', 'default-img.svg', '', NULL, NULL, 'Administrator(Administrator)', '2023-03-18 10:17:32', 'Administrator(Administrator)', '2023-04-23 14:45:36', NULL, NULL),
(12, 'Ashly', 'Innocente', 'Legario', '', 'Female', '2005-06-25', 'Malilipot, Albay', 'Married', 'Filipino', '', '', '', '', '', '', '', 'College Undergraduate', 'Purok 13-A', 'Block 7', 'Lot 10', '09758969234', '', '', 'Registered Voter', '453457gfr3', '4b', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Marilyn Cornelio', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9166111422', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:24:13', NULL, NULL, NULL, NULL);

CREATE TABLE resident_archive (
        resident_archive_id SERIAL PRIMARY KEY,
        resident_id INTEGER NOT NULL,
        first_name VARCHAR(255) NOT NULL,
        mid_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,
        suffix VARCHAR(10) NOT NULL,
        sex VARCHAR(20) NOT NULL,
        date_of_birth DATE NOT NULL,
        place_of_birth VARCHAR(255) NOT NULL,
        civil_status VARCHAR(20) NOT NULL,
        nationality VARCHAR(20) NOT NULL,
        occupation VARCHAR(50) NOT NULL,
        religion VARCHAR(50) NOT NULL,
        blood_type VARCHAR(10) NOT NULL,
        fourps_status VARCHAR(5) NOT NULL,
        disability_status VARCHAR(30) NOT NULL,
        type_disability VARCHAR(50) NOT NULL,
        senior_status VARCHAR(20) NOT NULL,
        educational_attainment VARCHAR(30) NOT NULL,
        phone_number VARCHAR(11) NOT NULL,
        tel_number VARCHAR(12) NOT NULL,
        email VARCHAR(100) NOT NULL,
        purok VARCHAR(20) NOT NULL,
        street VARCHAR(50) NOT NULL,
        lot_number VARCHAR(20) NOT NULL,
        voter_status VARCHAR(20) NOT NULL,
        voter_id VARCHAR(20) DEFAULT NULL,
        precinct_number VARCHAR(20) DEFAULT NULL,
        national_id VARCHAR(55) DEFAULT NULL,
        vaccine_status VARCHAR(10) DEFAULT NULL,
        vaccine_1 VARCHAR(15) DEFAULT NULL,
        vaccine_date_1 DATE DEFAULT NULL,
        vaccine_2 VARCHAR(15) DEFAULT NULL,
        vaccine_date_2 DATE DEFAULT NULL,
        booster_status VARCHAR(10) DEFAULT NULL,
        booster_1 VARCHAR(15) DEFAULT NULL,
        booster_date_1 DATE DEFAULT NULL,
        booster_2 VARCHAR(15) DEFAULT NULL,
        booster_date_2 DATE DEFAULT NULL,
        emergency_person VARCHAR(255) NOT NULL,
        relationship VARCHAR(20) NOT NULL,
        emergency_address VARCHAR(255) NOT NULL,
        emergency_contact VARCHAR(11) NOT NULL,
        img_url VARCHAR(255) NOT NULL,
        alien_status VARCHAR(50) NOT NULL,
        deceased_status VARCHAR(50) DEFAULT NULL,
        date_of_death DATE DEFAULT NULL,
        created_by VARCHAR(50) NOT NULL,
        date_created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_by VARCHAR(50),
        date_updated TIMESTAMP,
        remarks VARCHAR(255),
        archived_by VARCHAR(100),
        date_archived TIMESTAMP DEFAULT NULL
);

INSERT INTO resident_archive (resident_archive_id, resident_id, first_name, mid_name, last_name, suffix, sex, date_of_birth, place_of_birth, civil_status, nationality, occupation, religion, blood_type, fourps_status, disability_status, type_disability, senior_status, educational_attainment, purok, street, lot_number, phone_number, tel_number, email, voter_status, voter_id, precinct_number, national_id, vaccine_status, vaccine_1, vaccine_date_1, vaccine_2, vaccine_date_2, booster_status, booster_1, booster_date_1, booster_2, booster_date_2, emergency_person, relationship, emergency_address, emergency_contact, img_url, alien_status, deceased_status, date_of_death, created_by, date_created, updated_by, date_updated, remarks, archived_by, date_archived) VALUES
(1, 15, 'Ricky Joseph', 'Fang', 'Villa', '', 'Male', '2003-06-07', 'General Santos City', 'Married', 'Filipino', 'Student', 'Roman Catholic', 'O-', '', '', '', '', 'College Undergraduat', 'Purok 11-B', 'Block 4', 'Lot 8', '15', '356-238-8766', 'ricky.lawrence@gmail.com', '', '', '', '', 'Vaccinated', 'Pfizer', '2021-02-21', 'Pfizer', '2021-03-21', 'Boostered', 'Pfizer', '2022-01-23', 'Pfizer', '2022-02-24', 'Regina Bilaos', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '09534765895', 'Villa_Ricky Joseph.png', '', '', NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-20 09:07:06', 'Administrator(Administrator)', '2023-03-29 13:07:42', 'Change of Residency', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-20 09:25:09'),
(2, 13, 'Mat', 'D', 'Cornelio', '', 'Female', '1999-06-24', 'General Santos City', 'Single', 'Filipino', '', '', '', '', '', '', '', 'College Undergraduate', 'Purok 12-A', 'Block 4', 'Lot 22', '09234234234', '', '', 'Registered Voter', '34rwe345', '34e', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Regina Bilaos', 'Motherrr', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9235347524', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:19:38', NULL, NULL, 'Change of Residency', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 16:09:31'),
(3, 16, 'Matthew', 'Fang', 'Bilaos', '', 'Male', '2023-03-29', 'Ewrwerw', 'Single', 'Filipino', '', '', '', '', '', '', '', 'Highschool Undergrad', 'Purok 11-B', 'Erterter', 'Tertertre', '16', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Matthew', 'Joseph', 'Asdasdasd', '9213423423', 'Rwerwerwer_Werwer.png', '', '', NULL, 'Administrator(Administrator)', '2023-03-29 11:14:53', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 16:08:47', 'Change of Residency', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 16:09:31'),
(4, 18, 'Shelly', '', 'Maris', '', 'Female', '1993-06-25', 'Malilipot, Albay', 'Married', 'Filipino', '', '', '', '', '', '', '', 'Elementary Graduate', 'Purok 2', 'Block 8', 'Lot 1', '09235456897', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Regina Bilaos', 'Mother', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9486903677', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:21:00', NULL, NULL, 'Change of Residency', 'Administrator(Administrator)', '2023-06-03 15:03:13'),
(5, 14, 'Matthew Joseph', 'Fang', 'Bilaos', 'Jr', 'Male', '2003-01-13', 'Malilipot, Albay', 'Single', 'Filipino', ' ', 'Islam', 'B+', '4Ps', '', '', '', 'College Undergraduat', 'Purok 4', 'Block 2', 'Lot 1', '09166111422', '043-252-3453', 'bilaos02311@gmail.com', '', '', '', '', 'Vaccinated', 'Astrazeneca', '2023-03-18', '', NULL, '', '', NULL, '', NULL, 'Regina Bilaos', 'Mother', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '09169786296', 'Bilaos_Matthew Joseph.png', '', '', NULL, 'Administrator(Administrator)', '2023-03-18 10:15:05', 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-06-03 15:01:11', 'Change of Residency', 'Administrator(Administrator)', '2023-06-03 15:03:41'),
(6, 17, 'Tristan', 'F', 'Pardilla', '', 'Male', '2000-03-17', 'Zamboanga Del Norte', 'Single', 'Filipino', '', '', '', '', '', '', '', 'College Undergraduat', 'Purok 13', 'Block 4', 'Lot 8', '09353845738', '', '', '', '', '', '', '', '', NULL, '', NULL, '', '', NULL, '', NULL, 'Marigold Quiapo', 'Cousin', 'Purok Pag-asa, Barangay Rizal, Banga, South Cotabato', '9345345345', 'default-img.svg', '', NULL, NULL, 'Fatima_clerk9(Barangay Clerk - Admin)', '2023-03-29 13:22:17', NULL, NULL, 'Change of Residency', 'Administrator(Administrator)', '2023-06-03 15:04:05');


CREATE TABLE official (
		official_id serial PRIMARY KEY,
		resident_id integer NOT NULL,
		off_position varchar(20) NOT NULL,
		term varchar(50) NOT NULL,
		first_term_start date NOT NULL,
		first_term_end date,
		second_term_start date,
		second_term_end date,
		third_term_start date,
		third_term_end date,
		created_by varchar(50) NOT NULL,
		date_created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
		updated_by varchar(50),
		date_updated timestamp DEFAULT CURRENT_TIMESTAMP NULL,
		restored_by varchar(50),
		date_restored timestamp,
		FOREIGN KEY(resident_id) REFERENCES resident(resident_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO official (official_id, resident_id, off_position, term, first_term_start, first_term_end, second_term_start, second_term_end, third_term_start, third_term_end, created_by, date_created, updated_by, date_updated, restored_by, date_restored) VALUES
(1, 11, 'Barangay Chairman', '1st Term', '2023-03-18', '2023-04-23', NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-03-18 10:17:32', NULL, '2023-03-18 10:18:43', NULL, NULL),
(2, 10, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:49:01', NULL, NULL, NULL, NULL),
(3, 6, 'Barangay Secretary', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:49:37', NULL, NULL, NULL, NULL),
(4, 9, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:50:04', NULL, NULL, NULL, NULL),
(5, 8, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:50:45', NULL, NULL, NULL, NULL),
(6, 7, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:52:03', NULL, NULL, NULL, NULL);

CREATE TABLE official_archive (
        official_archive_id serial PRIMARY KEY,
        official_id integer NOT NULL,
        resident_id integer NOT NULL,
        off_position varchar(20) NOT NULL,
        term varchar(50) NOT NULL,
        first_term_start date NOT NULL,
        first_term_end date,
        second_term_start date,
        second_term_end date,
        third_term_start date,
        third_term_end date,
        created_by varchar(50) NOT NULL,
        date_created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_by varchar(50),
        date_updated timestamp DEFAULT CURRENT_TIMESTAMP NULL,
        remarks varchar(50),
        archived_by varchar(255),
        date_archived timestamp DEFAULT NULL
);

INSERT INTO official_archive (official_archive_id, official_id, resident_id, off_position, term, first_term_start, first_term_end, second_term_start, second_term_end, third_term_start, third_term_end, created_by, date_created, updated_by, date_updated, remarks, archived_by, date_archived) VALUES
(1, 7, 16, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:52:48', NULL, NULL, NULL, NULL, NULL),
(2, 8, 15, 'Barangay Clerk', '1st Term', '2023-06-03', NULL, NULL, NULL, NULL, NULL, 'Administrator(Administrator)', '2023-06-03 14:53:21', NULL, NULL, NULL, NULL, NULL);


CREATE TABLE barangay_clearance (
        brgy_clearance_id serial PRIMARY KEY,
        resident_id int NOT NULL,
        official_id int NOT NULL,
        purpose varchar(50) NOT NULL,
        receipt_number int NOT NULL,
        cedula_number varchar(8) NOT NULL,
        cedula_issued_at varchar(50) NOT NULL,
        cedula_date date NOT NULL,
        issued_by varchar(50) NOT NULL,
        date_issued timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        price varchar(255) NOT NULL,
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id),
        FOREIGN KEY(official_id) REFERENCES official(official_id)
);

INSERT INTO barangay_clearance (brgy_clearance_id, resident_id, official_id, purpose, receipt_number, cedula_number, cedula_issued_at, cedula_date, issued_by, date_issued, price) VALUES
(1, 6, 4, 'Business Registration', 3453423, '53453452', 'Barangay Fatima, GSC', '2023-04-22', 'Barangay Clerk - Admin', '2023-04-22 14:10:52', '71'),
(2, 10, 2, 'Scholarship Applications', 2342343, '23423423', 'Barangay Fatima, GSC', '2023-06-03', 'Barangay Clerk - Admin', '2023-06-03 15:10:48', '71'),
(3, 9, 2, 'Business Registration', 3453423, '53453453', 'Barangay Fatima, GSC', '2023-06-03', 'Barangay Clerk - Admin', '2023-06-03 15:11:25', '71'),
(4, 7, 4, 'Government Services', 1231231, '34553453', 'Barangay Fatima, GSC', '2023-06-03', 'Barangay Clerk - Admin', '2023-06-03 15:12:04', '71'),
(5, 6, 4, 'Certification Of Good Conduct', 3453453, '53453452', 'Barangay Fatima, GSC', '2023-06-03', 'Barangay Clerk - Admin', '2023-06-03 15:12:42', '71');


CREATE TABLE good_moral_certificate (
        good_moral_id serial PRIMARY KEY,
        resident_id integer NOT NULL,
        official_id integer NOT NULL,
        purpose varchar(50) NOT NULL,
        issued_by varchar(50) NOT NULL,
        date_issued timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id),
		FOREIGN KEY(official_id) REFERENCES official(official_id)
);

INSERT INTO good_moral_certificate (good_moral_id, resident_id, official_id, purpose, issued_by, date_issued) VALUES
(1, 6, 4, 'Scholarship Applications', 'Barangay Clerk - Admin', '2023-04-22 14:12:33'),
(2, 10, 4, 'Secret', 'Barangay Clerk - Admin', '2023-06-03 15:13:35'),
(3, 9, 4, 'Employment', 'Barangay Clerk - Admin', '2023-06-03 15:14:20'),
(4, 9, 4, 'Certification Of Good Conduct', 'Barangay Clerk - Admin', '2023-06-03 15:14:55');


CREATE TABLE complainant (
		complainant_id SERIAL PRIMARY KEY,
		resident_id INT NOT NULL,
		FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);
INSERT INTO complainant (complainant_id, resident_id) VALUES 
(1, 12),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 12),
(8, 1),
(9, 2),
(10, 3),
(11, 4),
(12, 5);


CREATE TABLE respondent (
		respondent_id SERIAL PRIMARY KEY,
		resident_id INT NOT NULL,
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);
INSERT INTO respondent (respondent_id, resident_id) VALUES 
(1, 5),
(2, 4),
(3, 3),
(4, 2),
(5, 1),
(6, 12),
(7, 5),
(8, 4),
(9, 3),
(10, 2),
(11, 1),
(12, 12);

CREATE TABLE mediator (
		mediator_id SERIAL PRIMARY KEY,
		resident_id INT NOT NULL,
		official_id INT NOT NULL,
		FOREIGN KEY(resident_id) REFERENCES resident(resident_id),
		FOREIGN KEY(official_id) REFERENCES official(official_id)
);
INSERT INTO mediator (mediator_id, resident_id, official_id) VALUES 
(1, 10, 2),
(2, 9, 4),
(3, 8, 5),
(4, 7, 6);

CREATE TABLE complaint (
		case_no SERIAL PRIMARY KEY,
		complainant_id INT NOT NULL,
		respondent_id INT NOT NULL,
		mediator_id INT NOT NULL,
		or_no INT NOT NULL,
		reason VARCHAR(255) NOT NULL,
		complaint_description VARCHAR(255) NOT NULL,
		date_of_hearing TIMESTAMP NOT NULL,
		action_taken VARCHAR(255) NOT NULL,
		complaint_status VARCHAR(50) NOT NULL,
		created_by VARCHAR(50) NOT NULL,
		date_created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
		updated_by VARCHAR(50) DEFAULT NULL,
		date_updated timestamp DEFAULT CURRENT_TIMESTAMP NULL,
        restored_by varchar(50),
		date_restored timestamp DEFAULT NULL,
		FOREIGN KEY(complainant_id) REFERENCES complainant(complainant_id),
		FOREIGN KEY(respondent_id) REFERENCES respondent(respondent_id),
		FOREIGN KEY(mediator_id) REFERENCES mediator(mediator_id)
);

INSERT INTO complaint (complainant_id, respondent_id, mediator_id, or_no, reason, complaint_description, date_of_hearing, action_taken, complaint_status, created_by, date_created, updated_by, date_updated, restored_by, date_restored) VALUES
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


CREATE TABLE complaint_archive (
    complaint_archive_id SERIAL PRIMARY KEY,
    case_no INT NOT NULL,
    complainant_id INT NOT NULL,
    respondent_id INT NOT NULL,
    mediator_id INT NOT NULL,
    or_no INT NOT NULL,
    reason VARCHAR(255) NOT NULL,
    complaint_description VARCHAR(255) NOT NULL,
    date_of_hearing TIMESTAMP NOT NULL,
    action_taken VARCHAR(255) NOT NULL,
    complaint_status VARCHAR(50) NOT NULL,
    created_by VARCHAR(50) NOT NULL,
    date_created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR(50) DEFAULT NULL,
    date_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    remarks varchar(50),
	archived_by varchar(255),
	date_archived timestamp DEFAULT NULL
);


CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    resident_id INTEGER,
    official_id INTEGER,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    role VARCHAR(40) NOT NULL,
    FOREIGN KEY (resident_id) REFERENCES resident (resident_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (official_id) REFERENCES official (official_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Insert data into the users table
INSERT INTO users (user_id, resident_id, official_id, username, password, role) VALUES
(1, NULL, NULL, 'administrator', 'b6f8ebf6b21eb164447365d0582e3ce6', 'Administrator'),
(2, 11, 1, 'brgy_captain', '0c39e5182073049ffd3d8d25280a9a49', 'Barangay Captain'),
(3, 6, 3, 'brgy_secretary', '6fbdf502ad97e4a4bd8bf5cd22499efc', 'Barangay Secretary'),
(4, 10, 2, 'clerk_residentAdmin', '0c39e5182073049ffd3d8d25280a9a49', 'Barangay Clerk - ResidentAdmin'),
(5, 9, 4, 'clerk_residentEncoder', '283ec530b7fbafbea6ee93ebe5e1e291', 'Barangay Clerk - ResidentEncoder'),
(6, 8, 5, 'clerk_complaintAdmin', '283ec530b7fbafbea6ee93ebe5e1e291', 'Barangay Clerk - ComplaintAdmin'),
(7, 7, 6, 'clerk_complaintEncoder', '0c39e5182073049ffd3d8d25280a9a49', 'Barangay Clerk - ComplaintEncoder');

-- -------------------------------------------------------------------------------------------------------------------

-- VIEWS
-- View to retrieve basic information of residents.
CREATE OR REPLACE VIEW resident_view AS
SELECT *
FROM resident;

CREATE OR REPLACE VIEW resident_complaint_count_view AS
SELECT r.resident_id, CONCAT(r.first_name, ' ', r.last_name, ' ', r.mid_name, ' ', r.suffix) AS Full_Name,
       COUNT(DISTINCT c.complainant_id) AS Complainant_Count,
       COUNT(DISTINCT c.respondent_id) AS Respondent_Count
FROM resident r
LEFT JOIN complainant cm ON r.resident_id = cm.resident_id
LEFT JOIN respondent rp ON r.resident_id = rp.resident_id
LEFT JOIN complaint c ON cm.complainant_id = c.complainant_id OR rp.respondent_id = c.respondent_id
GROUP BY r.resident_id, Full_Name;

CREATE OR REPLACE VIEW brgy_clearance_view AS
SELECT c.brgy_clearance_id, r.resident_id, CONCAT(r.first_name, ' ', r.last_name, ' ', r.mid_name, ' ', r.suffix) AS Full_Name, c.purpose
FROM barangay_clearance c
LEFT JOIN resident r ON r.resident_id = c.resident_id;

-- View to get details of complaints along with the names of complainants and respondents
CREATE OR REPLACE VIEW complaint_details_view AS
SELECT c.case_no, r1.first_name AS complainant_first_name, r1.last_name AS complainant_last_name,
       r2.first_name AS respondent_first_name, r2.last_name AS respondent_last_name,
       c.complaint_description, c.date_of_hearing
FROM complaint c
JOIN complainant cmp ON c.complainant_id = cmp.complainant_id
JOIN respondent rsp ON c.respondent_id = rsp.respondent_id
JOIN resident r1 ON cmp.resident_id = r1.resident_id
JOIN resident r2 ON rsp.resident_id = r2.resident_id;

-- View to retrieve information of officials and their positions
CREATE OR REPLACE VIEW official_view AS
SELECT o.official_id, r.first_name, r.last_name, o.off_position
FROM official o
JOIN resident r ON o.resident_id = r.resident_id;
-- -------------------------------------------------------------------------------------------------------------

-- FUNCTION
CREATE OR REPLACE FUNCTION GetResidentsByAgeRange(
  min_age INT,
  max_age INT
)
RETURNS TABLE (
  resident_id INT,
  full_name VARCHAR(255),
  age INT
)
AS $$
BEGIN
  RETURN QUERY
  SELECT rv.resident_id, CONCAT_WS(' ', rv.first_name, rv.mid_name, rv.last_name, rv.suffix)::VARCHAR AS full_name, EXTRACT(YEAR FROM age(CURRENT_DATE, rv.date_of_birth))::INT AS age
  FROM resident_view AS rv
  WHERE EXTRACT(YEAR FROM age(CURRENT_DATE, rv.date_of_birth)) BETWEEN min_age AND max_age
  ORDER BY age ASC;
END;
$$ LANGUAGE plpgsql;

-- Count the resident complaint record
CREATE OR REPLACE FUNCTION resident_complaint_record(residentID INT)
RETURNS TABLE (
	resident_id INT,
    full_name VARCHAR(255),
    complainant_count INT,
    respondent_count INT	
)
AS $$
BEGIN
	RETURN QUERY
    SELECT cv.resident_id, cv.Full_name::VARCHAR AS full_name, cv.Complainant_Count::INT AS complainant_count, cv.Respondent_Count::INT AS respondent_count
    FROM resident_complaint_count_view cv
    WHERE cv.resident_id = residentID;
    
END;
$$ LANGUAGE plpgsql;

-- Function to get the total number of barangay clearances issued for a resident
CREATE OR REPLACE FUNCTION resident_clearance_count(residentId INT)
RETURNS TABLE (
	resident_id INT,
    full_name VARCHAR(255),
    brgy_clearance_count INT
)
AS $$
BEGIN
	RETURN QUERY
    SELECT bcv.resident_id, bcv.Full_Name::VARCHAR AS full_name, COUNT(brgy_clearance_id)::INT AS brgy_clearance_count
    FROM brgy_clearance_view bcv
    WHERE bcv.resident_id = residentId
    GROUP BY bcv.resident_id, bcv.full_Name;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION GetResidentsWithMultipleVaccinations()
RETURNS TABLE (
  resident_id INT,
  full_name VARCHAR(255),
  vaccine_status VARCHAR(255),
  vaccine_1 VARCHAR(255),
  vaccine_date_1 DATE,
  vaccine_2 VARCHAR(255),
  vaccine_date_2 DATE,
  booster_status VARCHAR(255),
  booster_1 VARCHAR(255),
  booster_date_1 DATE,
  booster_2 VARCHAR(255),
  booster_date_2 DATE
)
AS $$
BEGIN
  RETURN QUERY
  SELECT rv.resident_id, CONCAT_WS(' ', rv.first_name, rv.mid_name, rv.last_name, rv.suffix)::VARCHAR AS full_name, rv.vaccine_status, rv.vaccine_1, rv.vaccine_date_1, rv.vaccine_2, rv.vaccine_date_2, rv.booster_status, rv.booster_1, rv.booster_date_1, rv.booster_2, rv.booster_date_2
  FROM resident_view rv
  WHERE (rv.vaccine_status = 'Vaccinated' AND rv.vaccine_1 IS NOT NULL AND rv.vaccine_2 IS NOT NULL)
    OR (rv.booster_status = 'Boostered' AND rv.booster_2 IS NOT NULL AND rv.booster_2 IS NOT NULL);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Get4psResident()
RETURNS TABLE (
  resident_id INT,
  full_name VARCHAR(255),
  address VARCHAR(255),
  fourps_status VARCHAR(255)
)
AS $$
BEGIN
  RETURN QUERY
  SELECT rv.resident_id, CONCAT_WS(' ', rv.first_name, rv.mid_name, rv.last_name, rv.suffix)::VARCHAR AS full_name, CONCAT_WS(' ', rv.purok, rv.street, rv.lot_number)::VARCHAR AS address, rv.fourps_status
  FROM resident_view rv
  WHERE rv.fourps_status = '4Ps';
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION GetVoterResident()
RETURNS TABLE (
  resident_id INT,
  full_name VARCHAR(255),
  address VARCHAR(255),
  voter_status VARCHAR(255),
  voter_id VARCHAR(255),
  precinct_number VARCHAR(255)
)
AS $$
BEGIN
  RETURN QUERY
  SELECT rv.resident_id, CONCAT_WS(' ', rv.first_name, rv.mid_name, rv.last_name, rv.suffix)::VARCHAR AS full_name, CONCAT_WS(' ', rv.purok, rv.street, rv.lot_number)::VARCHAR AS address, rv.voter_status, rv.voter_id, rv.precinct_number
  FROM resident_view rv
  WHERE rv.voter_status = 'Registered Voter' AND rv.voter_id IS NOT NULL;
END;
$$ LANGUAGE plpgsql;
-- ----------------------------------------------------------------------------------------------------------------------------

-- TRIGGER FUNCTIONS

-- RESIDENT
CREATE OR REPLACE FUNCTION before_resident_delete()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO resident_archive (resident_id, first_name, mid_name, last_name, suffix, sex, date_of_birth, place_of_birth, civil_status, nationality, occupation, religion, blood_type, fourps_status, disability_status, type_disability, senior_status, educational_attainment, phone_number, tel_number, email, purok, street, lot_number, voter_status, voter_id, precinct_number, national_id, vaccine_status, vaccine_1, vaccine_date_1, vaccine_2, vaccine_date_2, booster_status, booster_1, booster_date_1, booster_2, booster_date_2, emergency_person, relationship, emergency_address, emergency_contact, img_url, alien_status, deceased_status, date_of_death, created_by, date_created, updated_by, date_updated, remarks, archived_by, date_archived)
    VALUES (OLD.resident_id, OLD.first_name, OLD.mid_name, OLD.last_name, OLD.suffix, OLD.sex, OLD.date_of_birth, OLD.place_of_birth, OLD.civil_status, OLD.nationality, OLD.occupation, OLD.religion, OLD.blood_type, OLD.fourps_status, OLD.disability_status, OLD.type_disability, OLD.senior_status, OLD.educational_attainment, OLD.phone_number, OLD.tel_number, OLD.email, OLD.purok, OLD.street, OLD.lot_number, OLD.voter_status, OLD.voter_id, OLD.precinct_number, OLD.national_id, OLD.vaccine_status, OLD.vaccine_1, OLD.vaccine_date_1, OLD.vaccine_2, OLD.vaccine_date_2, OLD.booster_status, OLD.booster_1, OLD.booster_date_1, OLD.booster_2, OLD.booster_date_2, OLD.emergency_person, OLD.relationship, OLD.emergency_address, OLD.emergency_contact, OLD.img_url, OLD.alien_status, OLD.deceased_status, OLD.date_of_death, OLD.created_by, OLD.date_created, OLD.updated_by, OLD.date_updated, NULL, NULL, current_timestamp);
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER before_resident_delete
BEFORE DELETE ON resident
FOR EACH ROW
EXECUTE FUNCTION before_resident_delete();

-- COMPLAINT
CREATE OR REPLACE FUNCTION before_complaint_delete()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO complaint_archive (case_no, complainant_id, respondent_id, mediator_id, or_no, reason, complaint_description, date_of_hearing, action_taken, complaint_status, created_by, date_created, updated_by, date_updated, remarks, archived_by, date_archived)
    VALUES (OLD.case_no, OLD.complainant_id, OLD.respondent_id, OLD.mediator_id, OLD.or_no, OLD.reason, OLD.complaint_description, OLD.date_of_hearing, OLD.action_taken, OLD.complaint_status, OLD.created_by, OLD.date_created, OLD.updated_by, OLD.date_updated, NULL, NULL, current_timestamp);
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER before_complaint_delete
BEFORE DELETE ON complaint
FOR EACH ROW
EXECUTE FUNCTION before_complaint_delete();

-- OFFICIAL
CREATE OR REPLACE FUNCTION before_official_delete()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO official_archive (official_id, resident_id, off_position, term, first_term_start, first_term_end, second_term_start, second_term_end, third_term_start, third_term_end, created_by, date_created, updated_by, date_updated, remarks, archived_by, date_archived)
    VALUES (OLD.official_id, OLD.resident_id, OLD.off_position, OLD.term, OLD.first_term_start, OLD.first_term_end, OLD.second_term_start, OLD.second_term_end, OLD.third_term_start, OLD.third_term_end, OLD.created_by, OLD.date_created, OLD.updated_by, OLD.date_updated, NULL, NULL, current_timestamp);

    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER before_official_delete
BEFORE DELETE ON official
FOR EACH ROW
EXECUTE FUNCTION before_official_delete();
-- ---------------------------------------------------------------------------------------------------------------------------------------------------
-- Stored Procedure

-- STORED PROCEDURES
CREATE OR REPLACE PROCEDURE insert_resident(
    p_first_name VARCHAR(255), p_mid_name VARCHAR(50), p_last_name VARCHAR(50), p_suffix VARCHAR(10), p_sex VARCHAR(20), p_date_of_birth DATE,p_place_of_birth VARCHAR(255),
    p_civil_status VARCHAR(20), p_nationality VARCHAR(20), p_occupation VARCHAR(50), p_religion VARCHAR(50), p_blood_type VARCHAR(10), p_fourps_status VARCHAR(5), p_disability_status VARCHAR(30),
    p_type_disability VARCHAR(50), p_senior_status VARCHAR(20), p_educational_attainment VARCHAR(30), p_phone_number VARCHAR(11), p_tel_number VARCHAR(12), p_email VARCHAR(100), p_purok VARCHAR(20),
    p_street VARCHAR(50), p_lot_number VARCHAR(20), p_voter_status VARCHAR(20), p_voter_id VARCHAR(20), p_precinct_number VARCHAR(20), p_national_id VARCHAR(55), p_vaccine_status VARCHAR(10),
    p_vaccine_1 VARCHAR(15), p_vaccine_date_1 DATE, p_vaccine_2 VARCHAR(15), p_vaccine_date_2 DATE, p_booster_status VARCHAR(10), p_booster_1 VARCHAR(15), p_booster_date_1 DATE,
    p_booster_2 VARCHAR(15), p_booster_date_2 DATE, p_emergency_person VARCHAR(255), p_relationship VARCHAR(20), p_emergency_address VARCHAR(255), p_emergency_contact VARCHAR(12), p_img_url VARCHAR(255), p_alien_status VARCHAR(50), p_deceased_status VARCHAR(50), p_date_of_death DATE, p_created_by VARCHAR(50)
)
AS $$
BEGIN
    INSERT INTO resident (
        first_name, mid_name, last_name, suffix, sex, date_of_birth, place_of_birth, civil_status, nationality, occupation, religion, blood_type, fourps_status, disability_status,
        type_disability, senior_status, educational_attainment, phone_number, tel_number, email, purok, street, lot_number, voter_status, voter_id, precinct_number,
        national_id, vaccine_status, vaccine_1, vaccine_date_1, vaccine_2, vaccine_date_2, booster_status, booster_1, booster_date_1, booster_2, booster_date_2, emergency_person, relationship,
        emergency_address,emergency_contact, img_url, alien_status, deceased_status, date_of_death, created_by
    ) VALUES (
        p_first_name, p_mid_name, p_last_name, p_suffix, p_sex, p_date_of_birth, p_place_of_birth, p_civil_status, p_nationality, p_occupation, p_religion, p_blood_type,
        p_fourps_status, p_disability_status, p_type_disability, p_senior_status, p_educational_attainment, p_phone_number, p_tel_number, p_email, p_purok,
        p_street, p_lot_number, p_voter_status, p_voter_id, p_precinct_number, p_national_id, p_vaccine_status, p_vaccine_1, p_vaccine_date_1, p_vaccine_2, p_vaccine_date_2, p_booster_status,
        p_booster_1, p_booster_date_1, p_booster_2, p_booster_date_2, p_emergency_person, p_relationship, p_emergency_address, p_emergency_contact, p_img_url, p_alien_status, p_deceased_status,
        p_date_of_death, p_created_by
    );
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE insert_official(
    p_resident_id INTEGER, p_off_position VARCHAR(20), p_term VARCHAR(50), p_first_term_start DATE, p_first_term_end DATE, p_second_term_start DATE, p_second_term_end DATE, p_third_term_start DATE,
    p_third_term_end DATE, p_created_by VARCHAR(50)
)
AS $$
BEGIN
    INSERT INTO official (
        resident_id, off_position, term, first_term_start, first_term_end, second_term_start, second_term_end, third_term_start, third_term_end, created_by
    ) VALUES (
        p_resident_id, p_off_position, p_term, p_first_term_start, p_first_term_end, p_second_term_start, p_second_term_end, p_third_term_start, p_third_term_end, p_created_by
    );
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE PROCEDURE insert_complainant(
    p_resident_id INT
)
AS $$
BEGIN
    INSERT INTO complainant (resident_id)
    VALUES (p_resident_id);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE insert_respondent(
    p_resident_id INT
)
AS $$
BEGIN
    INSERT INTO respondent (resident_id)
    VALUES (p_resident_id);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE insert_mediator(
    p_resident_id INT,
    p_official_id INT
)
AS $$
BEGIN
    INSERT INTO mediator (resident_id, official_id)
    VALUES (p_resident_id, p_official_id);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE insert_complaint(
    p_complainant_id INT, p_respondent_id INT, p_mediator_id INT, p_or_no INT, p_reason VARCHAR(255), p_complaint_description VARCHAR(255),
    p_date_of_hearing TIMESTAMP, p_action_taken VARCHAR(255), p_complaint_status VARCHAR(50), p_created_by VARCHAR(50)
)
AS $$
BEGIN
    INSERT INTO complaint (
        complainant_id, respondent_id, mediator_id, or_no, reason, complaint_description, date_of_hearing, action_taken, complaint_status, created_by
    ) VALUES (
        p_complainant_id, p_respondent_id, p_mediator_id, p_or_no, p_reason, p_complaint_description, p_date_of_hearing, p_action_taken, p_complaint_status, p_created_by
    );
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE insert_user(
    p_resident_id INTEGER, p_official_id INTEGER, p_username VARCHAR(50), p_password VARCHAR(50), p_role VARCHAR(40)
)
AS $$
BEGIN
    INSERT INTO users (resident_id, official_id, username, password, role)
    VALUES (p_resident_id, p_official_id, p_username, p_password, p_role);
END;
$$ LANGUAGE plpgsql;

-- -----------------------------------------------------------------------------------------------------------------------------------------------------
-- ROLE
-- CREATE ROLE superadmin WITH LOGIN SUPERUSER CREATEDB CREATEROLE;
-- GRANT ALL PRIVILEGES ON DATABASE complaintdb TO superadmin;
--  
-- -- GRANTING ROLES TO USERS
-- -- ADMINISTRATOR - HAVE ALL OF THE PRIVILEGES
-- CREATE USER brgy_administrator WITH PASSWORD 'Brgy_superAdmin';
-- ALTER USER brgy_administrator SET SEARCH_PATH TO complaintsc;
-- GRANT superadmin TO brgy_administrator;

CREATE ROLE captain LOGIN;
GRANT CONNECT ON DATABASE complaintdb TO captain;
GRANT USAGE ON SCHEMA complaintsc TO captain;
GRANT SELECT ON TABLE complaintsc.resident TO captain;
GRANT SELECT ON TABLE complaintsc.complaint TO captain;
GRANT SELECT ON TABLE complaintsc.complainant TO captain;
GRANT SELECT ON TABLE complaintsc.respondent TO captain;
GRANT SELECT ON TABLE complaintsc.mediator TO captain;
GRANT SELECT ON resident_view TO captain;

CREATE ROLE secretary LOGIN;
GRANT USAGE ON SCHEMA complaintsc TO secretary;
GRANT CONNECT ON DATABASE complaintdb TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.users TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.resident TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.resident_archive TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complaint TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complaint_archive TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complainant TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.respondent TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.mediator TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official_archive TO secretary;
GRANT SELECT ON resident_view TO secretary;
GRANT SELECT ON resident_complaint_count_view TO secretary;
GRANT SELECT ON brgy_clearance_view TO secretary;
GRANT SELECT ON complaint_details_view TO secretary;
GRANT SELECT ON official_view TO secretary;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE users_user_id_seq TO secretary;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE resident_resident_id_seq TO secretary;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE resident_archive_resident_archive_id_seq TO secretary;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE complaint_case_no_seq TO secretary;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE complainant_complainant_id_seq TO secretary;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE respondent_respondent_id_seq TO secretary;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE mediator_mediator_id_seq TO secretary;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE complaint_archive_complaint_archive_id_seq TO secretary;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE official_official_id_seq TO secretary;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE official_archive_official_archive_id_seq TO secretary;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA complaintsc TO secretary;
GRANT EXECUTE ON ALL PROCEDURES IN SCHEMA complaintsc TO secretary;

CREATE ROLE resident_encoder LOGIN;
GRANT CONNECT ON DATABASE complaintdb TO resident_encoder;
GRANT USAGE ON SCHEMA complaintsc TO resident_encoder;
GRANT INSERT, SELECT ON TABLE complaintsc.resident TO resident_encoder;
GRANT USAGE, SELECT ON SEQUENCE resident_resident_id_seq TO resident_encoder;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_resident TO resident_encoder;

CREATE ROLE resident_admin LOGIN;
GRANT CONNECT ON DATABASE complaintdb TO resident_admin;
GRANT USAGE ON SCHEMA complaintsc TO resident_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.users TO resident_admin;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE complaintsc.resident TO resident_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.resident_archive TO resident_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official TO resident_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official_archive TO resident_admin;
GRANT SELECT ON resident_view TO resident_admin;
GRANT SELECT ON brgy_clearance_view TO resident_admin;
GRANT SELECT ON official_view TO resident_admin;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE resident_resident_id_seq TO resident_admin;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE resident_archive_resident_archive_id_seq TO resident_admin;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE official_official_id_seq TO resident_admin;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE official_archive_official_archive_id_seq TO resident_admin;
GRANT EXECUTE ON FUNCTION complaintsc.Get4psResident TO resident_admin;
GRANT EXECUTE ON FUNCTION complaintsc.GetResidentsByAgeRange TO resident_admin;
GRANT EXECUTE ON FUNCTION complaintsc.GetVoterResident TO resident_admin;
GRANT EXECUTE ON FUNCTION complaintsc.GetResidentsWithMultipleVaccinations TO resident_admin;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_user TO resident_admin;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_resident TO resident_admin;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_official TO resident_admin;

CREATE ROLE complaint_encoder LOGIN;
GRANT CONNECT ON DATABASE complaintdb TO complaint_encoder;
GRANT USAGE ON SCHEMA complaintsc TO complaint_encoder;
GRANT SELECT ON TABLE complaintsc.resident TO complaint_encoder;
GRANT INSERT, SELECT ON TABLE complaintsc.complaint TO complaint_encoder;
GRANT INSERT, SELECT ON TABLE complaintsc.complainant TO complaint_encoder;
GRANT INSERT, SELECT ON TABLE complaintsc.respondent TO complaint_encoder;
GRANT INSERT, SELECT ON TABLE complaintsc.mediator TO complaint_encoder;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE complaint_case_no_seq TO complaint_encoder;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE complainant_complainant_id_seq TO complaint_encoder;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE respondent_respondent_id_seq TO complaint_encoder;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE mediator_mediator_id_seq TO complaint_encoder;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_complaint TO complaint_encoder;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_complainant TO complaint_encoder;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_respondent TO complaint_encoder;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_mediator TO complaint_encoder;

CREATE ROLE complaint_admin LOGIN;
GRANT CONNECT ON DATABASE complaintdb TO complaint_admin;
GRANT USAGE ON SCHEMA complaintsc TO complaint_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.users TO complaint_admin;
GRANT SELECT ON TABLE complaintsc.resident TO complaint_admin;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE complaintsc.complaint TO complaint_admin;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE complaintsc.complainant TO complaint_admin;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE complaintsc.respondent TO complaint_admin;
GRANT INSERT, SELECT, UPDATE, DELETE ON TABLE complaintsc.mediator TO complaint_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complaint_archive TO complaint_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official TO complaint_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official_archive TO complaint_admin;
GRANT SELECT ON resident_view TO complaint_admin;
GRANT SELECT ON resident_complaint_count_view TO complaint_admin;
GRANT SELECT ON brgy_clearance_view TO complaint_admin;
GRANT SELECT ON complaint_details_view TO complaint_admin;
GRANT SELECT ON official_view TO complaint_admin;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE complaint_case_no_seq TO complaint_admin;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE complainant_complainant_id_seq TO complaint_admin;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE respondent_respondent_id_seq TO complaint_admin;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE mediator_mediator_id_seq TO complaint_admin;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE complaint_archive_complaint_archive_id_seq TO complaint_admin;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE official_official_id_seq TO complaint_admin;
GRANT USAGE, SELECT, UPDATE ON SEQUENCE official_archive_official_archive_id_seq TO complaint_admin;
GRANT EXECUTE ON FUNCTION complaintsc.resident_complaint_record TO complaint_admin;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_user TO complaint_admin;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_complaint TO complaint_admin;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_complainant TO complaint_admin;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_mediator TO complaint_admin;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_respondent TO complaint_admin;
GRANT EXECUTE ON PROCEDURE complaintsc.insert_official TO complaint_admin;

-- BARANGAY CAPTAIN
CREATE USER brgy_captain WITH PASSWORD 'Brgy_captain';
ALTER USER brgy_captain SET SEARCH_PATH TO complaintsc;
GRANT captain TO brgy_captain; 

-- BARANGAY SECRETARY
CREATE USER brgy_secretary WITH PASSWORD 'Brgy_secretary';
ALTER USER brgy_secretary SET SEARCH_PATH TO complaintsc;
GRANT secretary TO brgy_secretary;


-- BARANGAY CLERK - RESIDENT PROFILE ENCODER
CREATE USER clerk_resident_encoder WITH PASSWORD 'Clerk_residentEncoder';
ALTER USER clerk_resident_encoder SET SEARCH_PATH TO complaintsc;
GRANT resident_encoder TO clerk_resident_encoder;


-- BARANGAY CLERK - RESIDENT PROFILE ADMIN
CREATE USER clerk_resident_admin WITH PASSWORD 'Clerk_residentAdmin';
ALTER USER clerk_resident_admin SET SEARCH_PATH TO complaintsc;
GRANT resident_admin TO clerk_resident_admin;

-- BARANGAY CLERK - RESIDENT COMPLAINT ENCODER
CREATE USER clerk_complaint_encoder WITH PASSWORD 'Clerk_complaintEncoder';
ALTER USER clerk_complaint_encoder SET SEARCH_PATH TO complaintsc;
GRANT complaint_encoder TO clerk_complaint_encoder;

-- BARANGAY CLERK - COMPLAINT COMPLAINT ADMIN
CREATE USER clerk_complaint_admin WITH PASSWORD 'Clerk_complaintAdmin';
ALTER USER clerk_complaint_admin SET SEARCH_PATH TO complaintsc;
GRANT complaint_admin TO clerk_complaint_admin;
