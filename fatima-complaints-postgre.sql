CREATE TABLE resident (
		resident_id serial PRIMARY KEY,
		first_name varchar(255) NOT NULL,
		mid_name varchar(50) NOT NULL,
		last_name varchar(50) NOT NULL,
		suffix varchar(10) NOT NULL,
		sex varchar(20) NOT NULL,
		date_of_birth date NOT NULL,
		place_of_birth varchar(255) NOT NULL,
		civil_status varchar(20) NOT NULL,
		nationality varchar(20) NOT NULL,
		occupation varchar(50) NOT NULL,
		religion varchar(50) NOT NULL,
		blood_type varchar(10) NOT NULL,
		fourps_status varchar(5) NOT NULL,
		senior_status varchar(20) NOT NULL,
		educational_attainment varchar(30) NOT NULL,
		national_id varchar(55),
		img_url varchar(255) NOT NULL,
		alien_status varchar(50) NOT NULL,
		deceased_status varchar(50),
		date_of_death date,
		created_by varchar(50) NOT NULL,
		date_created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
		updated_by varchar(50),
		date_updated timestamp DEFAULT CURRENT_TIMESTAMP NULL,
		restored_by varchar(50),
		date_restored timestamp DEFAULT NULL
);

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
		FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);

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

CREATE TABLE official_archive (
        official_archive_id serial PRIMARY KEY,
        official_id integer NOT NULL,
        resident_id integer NOT NULL,
        off_position varchar(20) NOT NULL,
        term varchar(50) NOT NULL,
        first_term_start date NOT NULL,
        first_term_end date NOT NULL,
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
        date_archived timestamp DEFAULT NULL,
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id),
        FOREIGN KEY(official_id) REFERENCES official(official_id)
);

CREATE TABLE disability_information (
        disability_id serial PRIMARY KEY,
        resident_id integer NOT NULL,
        disability_status varchar(30) NOT NULL,
        type_disability varchar(50) NOT NULL,
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);

CREATE TABLE 
    contact_information (
        contact_id serial PRIMARY KEY,
        resident_id integer NOT NULL,
        phone_number varchar(11) NOT NULL,
        tel_number varchar(12) NOT NULL,
        email varchar(100) NOT NULL,
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);

CREATE TABLE address_information (
        address_id serial PRIMARY KEY,
        resident_id integer NOT NULL,
        purok varchar(20) NOT NULL,
        street varchar(50) NOT NULL,
        lot_number varchar(20) NOT NULL,
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);

CREATE TABLE vaccine_information (
        vaccine_id serial PRIMARY KEY,
        resident_id integer NOT NULL,
        vaccine_status varchar(10) NOT NULL,
        vaccine_1 varchar(15) NOT NULL,
        vaccine_date_1 date,
        vaccine_2 varchar(15) NOT NULL,
        vaccine_date_2 date,
        booster_status varchar(10) NOT NULL,
        booster_1 varchar(15) NOT NULL,
        booster_date_1 date,
        booster_2 varchar(15) NOT NULL,
        booster_date_2 date,
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);

CREATE TABLE voter_information (
        voter_no varchar(20) PRIMARY KEY,
        resident_id integer NOT NULL,
        voter_status varchar(20) NOT NULL,
        precinct_number varchar(20),
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);

CREATE TABLE emergency_contact_information (
		emergency_contact_id SERIAL PRIMARY KEY,
		resident_id INT NOT NULL,
		emergency_person VARCHAR(255) NOT NULL,
		relationship VARCHAR(20) NOT NULL,
		emergency_address VARCHAR(255) NOT NULL,
		emergency_contact VARCHAR(11) NOT NULL,
		FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);

CREATE TABLE complainant (
		complainant_id SERIAL PRIMARY KEY,
		resident_id INT NOT NULL,
		FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);

CREATE TABLE respondent (
		respondent_id SERIAL PRIMARY KEY,
		resident_id INT NOT NULL,
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);

CREATE TABLE mediator (
		mediator_id SERIAL PRIMARY KEY,
		resident_id INT NOT NULL,
		official_id INT NOT NULL,
		FOREIGN KEY(resident_id) REFERENCES resident(resident_id),
		FOREIGN KEY(official_id) REFERENCES official(official_id)
);

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
		FOREIGN KEY(complainant_id) REFERENCES complainant(complainant_id),
		FOREIGN KEY(respondent_id) REFERENCES respondent(respondent_id),
		FOREIGN KEY(mediator_id) REFERENCES mediator(mediator_id)
);

CREATE TABLE complaint_archive (
		complaint_archive_id SERIAL PRIMARY KEY,
		case_no int NOT NULL,
        complainant_id int NOT NULL,
		respondent_id int NOT NULL,
        mediator_id int NOT NULL,
        or_no int NOT NULL,
        reason varchar(255) NOT NULL,
        complaint_description varchar(255) NOT NULL,
        date_of_hearing timestamp NOT NULL,
        action_taken varchar(255) NOT NULL,
        complaint_status varchar(50) NOT NULL,
		created_by varchar(50) NOT NULL,
        date_created timestamp NOT NULL DEFAULT current_timestamp,
        updated_by varchar(50) DEFAULT NULL,
        date_updated timestamp DEFAULT CURRENT_TIMESTAMP NULL,
        FOREIGN KEY(complainant_id) REFERENCES complainant(complainant_id),
        FOREIGN KEY(respondent_id) REFERENCES respondent(respondent_id),
        FOREIGN KEY(mediator_id) REFERENCES mediator(mediator_id)
);
    
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
        date_archived TIMESTAMP,
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id)
);

CREATE TABLE users (
        user_id SERIAL PRIMARY KEY,
        resident_id INTEGER NOT NULL,
        official_id INTEGER NOT NULL,
        username VARCHAR(50) NOT NULL,
        password VARCHAR(50) NOT NULL,
        role VARCHAR(30) NOT NULL,
        FOREIGN KEY(resident_id) REFERENCES resident(resident_id),
        FOREIGN KEY(official_id) REFERENCES official(official_id)
);


-- ROLES

CREATE ROLE view_db LOGIN;
GRANT SELECT ON TABLE complaintsc.resident TO view_db;
GRANT SELECT ON TABLE complaintsc.resident_archive TO view_db;
GRANT SELECT ON TABLE complaintsc.complaint TO view_db;
GRANT SELECT ON TABLE complaintsc.complaint_archive TO view_db;
GRANT SELECT ON TABLE complaintsc.complainant TO view_db;
GRANT SELECT ON TABLE complaintsc.respodent TO view_db;
GRANT SELECT ON TABLE complaintsc.mediator TO view_db;

CREATE ROLE cru_user LOGIN;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.users TO cru_user;

CREATE ROLE cru_resident LOGIN;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.resident TO cru_resident;
GRANT SELECT, UPDATE ON TABLE complaintsc.resident_archive TO cru_resident;

CREATE ROLE cru_complaint LOGIN;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complaint TO cru_complaint;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complainant TO cru_complaint;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.respondent TO cru_complaint;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.mediator TO cru_complaint;
GRANT SELECT, UPDATE ON TABLE complaintsc.complaint_archive TO cru_complaint;

CREATE ROLE cru_official LOGIN;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official TO cru_official;

CREATE ROLE resident_encoder LOGIN;
GRANT INSERT, SELECT ON TABLE complaintsc.resident TO resident_encoder;

CREATE ROLE complaint_encoder LOGIN;
GRANT INSERT, SELECT ON TABLE complaintsc.complaint TO complaint_encoder;
GRANT INSERT, SELECT ON TABLE complaintsc.complainant TO complaint_encoder;
GRANT INSERT, SELECT ON TABLE complaintsc.respondent TO complaint_encoder;
GRANT INSERT, SELECT ON TABLE complaintsc.mediator TO complaint_encoder;

CREATE ROLE superadmin WITH LOGIN SUPERUSER CREATEDB CREATEROLE;

-- GRANTING ROLES TO USERS
-- ADMINISTRATOR - HAVE ALL OF THE PRIVILEGES
 CREATE USER brgy_administrator WITH PASSWORD 'Brgy_superAdmin';
 ALTER USER brgy_administrator SET SEARCH_PATH TO complaintsc;
 GRANT superadmin TO brgy_administrator;
 GRANT ALL PRIVILEGES ON DATABASE complaintdb TO brgy_administrator;



-- BARANGAY CAPTAIN
CREATE USER brgy_captain WITH PASSWORD 'Brgy_captain';
ALTER USER brgy_captain SET SEARCH_PATH TO complaintsc;
GRANT view_db TO brgy_captain; 
GRANT CONNECT ON DATABASE complaintdb TO brgy_captain;

-- BARANGAY SECRETARY
CREATE USER brgy_secretary WITH PASSWORD 'Brgy_secretary';
ALTER USER brgy_secretary SET SEARCH_PATH TO complaintsc;
GRANT view_db, cru_resident, cru_complaint, cru_official TO brgy_secretary;
GRANT CONNECT ON DATABASE complaintdb TO brgy_secretary;


-- BARANGAY CLERK - RESIDENT PROFILE ENCODER
CREATE USER clerk_resident_encoder WITH PASSWORD 'Clerk_residentEncoder';
ALTER USER clerk_resident_encoder SET SEARCH_PATH TO complaintsc;
GRANT resident_encoder TO clerk_resident_encoder;
GRANT CONNECT ON DATABASE complaintdb TO clerk_resident_encoder;

-- BARANGAY CLERK - RESIDENT PROFILE ADMIN
CREATE USER clerk_resident_admin WITH PASSWORD 'Clerk_residentAdmin';
GRANT cru_user, cru_resident, cru_official TO clerk_resident_admin;
GRANT CONNECT ON DATABASE complaintdb TO clerk_resident_admin;

-- BARANGAY CLERK - RESIDENT COMPLAINT ENCODER
CREATE USER clerk_complaint_encoder WITH PASSWORD 'Clerk_complaintEncoder';
ALTER USER clerk_complaint_encoder SET SEARCH_PATH TO complaintsc;
GRANT complaint_encoder TO clerk_complaint_encoder;
GRANT CONNECT ON DATABASE complaintdb TO clerk_complaint_encoder;

-- BARANGAY CLERK - COMPLAINT COMPLAINT ADMIN
CREATE USER clerk_complaint_admin WITH PASSWORD 'Clerk_complaintAdmin';
ALTER USER clerk_complaint_admin SET SEARCH_PATH TO complaintsc;
GRANT cru_user, cru_complaint, cru_official TO clerk_complaint_admin;
GRANT CONNECT ON DATABASE complaintdb TO clerk_complaint_admin;
