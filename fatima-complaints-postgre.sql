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
        restored_by varchar(50),
		date_restored timestamp DEFAULT NULL,
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
        remarks VARCHAR(255),
        archived_by VARCHAR(100),
        date_archived TIMESTAMP DEFAULT NULL,
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
        date_archived TIMESTAMP DEFAULT NULL,
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
-- ------------------------------------------------------------------------------------------------------------------------

-- VIEWS
-- View to retrieve basic information of residents.
-- CREATE OR REPLACE VIEW resident_info AS
-- SELECT resident_id, first_name, last_name, date_of_birth, occupation, email
-- FROM resident;
--
-- View to get details of complaints along with the names of complainants and respondents
CREATE OR REPLACE VIEW complaint_details AS
SELECT c.case_no, r1.first_name AS complainant_first_name, r1.last_name AS complainant_last_name,
       r2.first_name AS respondent_first_name, r2.last_name AS respondent_last_name,
       c.complaint_description, c.date_of_hearing
FROM complaint c
JOIN complainant cmp ON c.complainant_id = cmp.complainant_id
JOIN respondent rsp ON c.respondent_id = rsp.respondent_id
JOIN resident r1 ON cmp.resident_id = r1.resident_id
JOIN resident r2 ON rsp.resident_id = r2.resident_id;

-- View to retrieve information of officials and their positions
CREATE OR REPLACE VIEW official_info AS
SELECT o.official_id, r.first_name, r.last_name, o.off_position
FROM official o
JOIN resident r ON o.resident_id = r.resident_id;
-- --------------------------------------------------------------------------------------------------------------------

-- TRIGGER FUNCTIONS

-- RESIDENT
-- CREATE OR REPLACE FUNCTION before_resident_delete()
-- RETURNS TRIGGER AS $$
-- BEGIN
--    INSERT INTO resident_archive (resident_id, first_name, mid_name, last_name, suffix, sex, date_of_birth, place_of_birth, civil_status, nationality, occupation, religion, blood_type, fourps_status, disability_status, type_disability, senior_status, educational_attainment, phone_number, tel_number, email, purok, street, lot_number, voter_status, voter_id, precinct_number, national_id, vaccine_status, vaccine_1, vaccine_date_1, vaccine_2, vaccine_date_2, booster_status, booster_1, booster_date_1, booster_2, booster_date_2, emergency_person, relationship, emergency_address, emergency_contact, img_url, alien_status, deceased_status, date_of_death, created_by, date_created, updated_by, date_updated, remarks, archived_by, date_archived)
--    VALUES (OLD.resident_id, OLD.first_name, OLD.mid_name, OLD.last_name, OLD.suffix, OLD.sex, OLD.date_of_birth, OLD.place_of_birth, OLD.civil_status, OLD.nationality, OLD.occupation, OLD.religion, OLD.blood_type, OLD.fourps_status, OLD.disability_status, OLD.type_disability, OLD.senior_status, OLD.educational_attainment, OLD.phone_number, OLD.tel_number, OLD.email, OLD.purok, OLD.street, OLD.lot_number, OLD.voter_status, OLD.voter_id, OLD.precinct_number, OLD.national_id, OLD.vaccine_status, OLD.vaccine_1, OLD.vaccine_date_1, OLD.vaccine_2, OLD.vaccine_date_2, OLD.booster_status, OLD.booster_1, OLD.booster_date_1, OLD.booster_2, OLD.booster_date_2, OLD.emergency_person, OLD.relationship, OLD.emergency_address, OLD.emergency_contact, OLD.img_url, OLD.alien_status, OLD.deceased_status, OLD.date_of_death, OLD.created_by, OLD.date_created, OLD.updated_by, OLD.date_updated, NULL, NULL, current_timestamp);
--    RETURN OLD;
-- END;
-- $$ LANGUAGE plpgsql;
--
-- CREATE TRIGGER before_resident_delete
-- BEFORE DELETE ON resident
-- FOR EACH ROW
-- EXECUTE FUNCTION before_resident_delete();
--
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

-- Create the trigger
CREATE TRIGGER before_official_delete
BEFORE DELETE ON official
FOR EACH ROW
EXECUTE FUNCTION before_official_delete();

-- -----------------------------------------------------------------------------------------------------------------------------------------

-- FUNCTION

-- Get the resident id
CREATE OR REPLACE FUNCTION get_resident_by_id(residentID INT)
RETURNS VARCHAR(255)
AS $$
DECLARE
    residentInfo VARCHAR(255);
BEGIN
    SELECT CONCAT(first_name, ' ', last_name, ' ', mid_name, ' ', suffix) INTO residentInfo
    FROM resident
    WHERE resident_id = residentID;
    RETURN residentInfo;
END;
$$ LANGUAGE plpgsql;

-- Count the complaint record
CREATE OR REPLACE FUNCTION get_complaint_count(complainantID INT)
RETURNS INT
AS $$
DECLARE
    complaintCount INT;
BEGIN
    SELECT COUNT(*) INTO complaintCount
    FROM complaint
    WHERE complainant_id = complainantID;
    RETURN complaintCount;
END;
$$ LANGUAGE plpgsql;

-- Function to get the age of a resident
CREATE OR REPLACE FUNCTION get_resident_age(resident_id INT) 
RETURNS INT
AS $$
DECLARE
    age INT;
BEGIN
    SELECT EXTRACT(YEAR FROM AGE(CURRENT_DATE, date_of_birth))::INT INTO age
    FROM resident
    WHERE resident_id = resident_id;
    RETURN age;
END;
$$ LANGUAGE plpgsql;

-- Function to get the total number of barangay clearances issued for a resident
CREATE OR REPLACE FUNCTION get_resident_clearance_count(resident_id INT) 
RETURNS INT
AS $$
DECLARE
    clearance_count INT;
BEGIN
    SELECT COUNT(*) INTO clearance_count
    FROM barangay_clearance
    WHERE resident_id = resident_id;
    RETURN clearance_count;
END;
$$ LANGUAGE plpgsql;
-- --------------------------------------------------------------------------------------------------------------------------------------

-- Stored Procedure 
CREATE OR REPLACE FUNCTION GetResidentsByAgeRange(
  min_age INT,
  max_age INT
)
RETURNS TABLE (
  resident_id INT,
  name VARCHAR,
  date_of_birth DATE
)
AS $$
BEGIN
  RETURN QUERY
  SELECT *
  FROM resident
  WHERE EXTRACT(YEAR FROM age(CURRENT_DATE, date_of_birth)) BETWEEN min_age AND max_age;
END;
$$ LANGUAGE plpgsql;

-- SELECT * FROM GetResidentsByAgeRange(18, 30);


CREATE OR REPLACE FUNCTION CalculateAverageAgeByGender()
RETURNS TABLE (
  gender VARCHAR,
  average_age NUMERIC
)
AS $$
BEGIN
  RETURN QUERY
  SELECT 
    CASE 
      WHEN sex = 'Male' THEN 'Male'
      WHEN sex = 'Female' THEN 'Female'
      ELSE 'Other'
    END AS gender,
    AVG(EXTRACT(DAY FROM age(CURRENT_DATE, date_of_birth)) / 365) AS average_age
  FROM resident
  GROUP BY gender;
END;
$$ LANGUAGE plpgsql;


-- ----------------------------------------------------------------------------------------------------------------------------
-- ROLE


CREATE ROLE superadmin WITH LOGIN SUPERUSER CREATEDB CREATEROLE;

-- GRANTING ROLES TO USERS
-- ADMINISTRATOR - HAVE ALL OF THE PRIVILEGES
 CREATE USER brgy_administrator WITH PASSWORD 'Brgy_superAdmin';
 ALTER USER brgy_administrator SET SEARCH_PATH TO complaintsc;
 GRANT superadmin TO brgy_administrator;
 GRANT ALL PRIVILEGES ON DATABASE complaintdb TO brgy_administrator;


CREATE ROLE captain LOGIN;
GRANT SELECT ON TABLE complaintsc.resident TO captain;
GRANT SELECT ON TABLE complaintsc.resident_archive TO captain;
GRANT SELECT ON TABLE complaintsc.complaint TO captain;
GRANT SELECT ON TABLE complaintsc.complaint_archive TO captain;
GRANT SELECT ON TABLE complaintsc.complainant TO captain;
GRANT SELECT ON TABLE complaintsc.respodent TO captain;
GRANT SELECT ON TABLE complaintsc.mediator TO captain;


CREATE ROLE secretary LOGIN;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.users TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.resident TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.resident_archive TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complaint TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complaint_archive TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complainant TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.respondent TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.mediator TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complaint_archive TO secretary;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official TO secretary;
GRANT SELECT, UPDATE ON TABLE complaintsc.official_archive TO secretary;

CREATE ROLE resident_encoder LOGIN;
GRANT INSERT, SELECT ON TABLE complaintsc.resident TO resident_encoder;

CREATE ROLE resident_admin LOGIN;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.users TO resident_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.resident TO resident_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.resident_archive TO resident_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official TO resident_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official_archive TO resident_admin;

CREATE ROLE complaint_encoder LOGIN;
GRANT INSERT, SELECT ON TABLE complaintsc.complaint TO complaint_encoder;
GRANT INSERT, SELECT ON TABLE complaintsc.complainant TO complaint_encoder;
GRANT INSERT, SELECT ON TABLE complaintsc.respondent TO complaint_encoder;
GRANT INSERT, SELECT ON TABLE complaintsc.mediator TO complaint_encoder;

CREATE ROLE complaint_admin LOGIN;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.users TO complaint_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complaint TO complaint_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complainant TO complaint_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.respondent TO complaint_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.mediator TO complaint_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.complaint_archive TO complaint_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official TO complaint_admin;
GRANT INSERT, SELECT, UPDATE ON TABLE complaintsc.official_archive TO complaint_admin;


-- BARANGAY CAPTAIN
CREATE USER brgy_captain WITH PASSWORD 'Brgy_captain';
ALTER USER brgy_captain SET SEARCH_PATH TO complaintsc;
GRANT captain TO brgy_captain; 
GRANT CONNECT ON DATABASE complaintdb TO brgy_captain;

-- BARANGAY SECRETARY
CREATE USER brgy_secretary WITH PASSWORD 'Brgy_secretary';
ALTER USER brgy_secretary SET SEARCH_PATH TO complaintsc;
GRANT secretary TO brgy_secretary;
GRANT CONNECT ON DATABASE complaintdb TO brgy_secretary;


-- BARANGAY CLERK - RESIDENT PROFILE ENCODER
CREATE USER clerk_resident_encoder WITH PASSWORD 'Clerk_residentEncoder';
ALTER USER clerk_resident_encoder SET SEARCH_PATH TO complaintsc;
GRANT resident_encoder TO clerk_resident_encoder;
GRANT CONNECT ON DATABASE complaintdb TO clerk_resident_encoder;

-- BARANGAY CLERK - RESIDENT PROFILE ADMIN
CREATE USER clerk_resident_admin WITH PASSWORD 'Clerk_residentAdmin';
GRANT resident_admin TO clerk_resident_admin;
GRANT CONNECT ON DATABASE complaintdb TO clerk_resident_admin;

-- BARANGAY CLERK - RESIDENT COMPLAINT ENCODER
CREATE USER clerk_complaint_encoder WITH PASSWORD 'Clerk_complaintEncoder';
ALTER USER clerk_complaint_encoder SET SEARCH_PATH TO complaintsc;
GRANT complaint_encoder TO clerk_complaint_encoder;
GRANT CONNECT ON DATABASE complaintdb TO clerk_complaint_encoder;

-- BARANGAY CLERK - COMPLAINT COMPLAINT ADMIN
CREATE USER clerk_complaint_admin WITH PASSWORD 'Clerk_complaintAdmin';
ALTER USER clerk_complaint_admin SET SEARCH_PATH TO complaintsc;
GRANT complaint_admin TO clerk_complaint_admin;
GRANT CONNECT ON DATABASE complaintdb TO clerk_complaint_admin;
