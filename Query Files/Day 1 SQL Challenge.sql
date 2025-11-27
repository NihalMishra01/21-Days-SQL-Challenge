-- Creating Database

CREATE database Healthcare;

-- Creating a Table for the Patient data

CREATE TABLE patients(patient_id VARCHAR(20) PRIMARY KEY,
name VARCHAR(30),
age	int,
arrival_date DATE,
departure_date DATE,
service	VARCHAR(30),
satisfaction int
);

-- Q1 Retrieve all columns from the patients table.

SELECT * FROM patients

-- Q2 Select only the patient_id, name, and age columns from the patients table.
SELECT patient_id, name, age from patients;

-- Creating a Table for the Weekly Service data

CREATE TABLE service_weekly(
		week int,
		month int,
		service varchar(20),
		available_beds  int,
		patients_request int,
		patients_admitted int,
		patients_refused int,
		patient_satisfaction int,
		staff_morale int,
		event varchar(20)
)

-- Q3 Display the first 10 records from the services_weekly table.

SELECT * FROM service_weekly LIMIT 10;

-- daily challenge question
-- List all unique hospital services available in the hospital.

SELECT DISTINCT(service) FROM  service_weekly;

-- Practicing some quesion from the database 

--Fetching all data fromt he database 

SELECT * FROM patients;

-- List the names of patients who are above 40 years old.

SELECT name ,age FROM patients where age >40;

-- Show all patients who took the service 'emergency'.

SELECT name,service  FROM patients where service = 'emergency';

-- Retrieve all patients who arrived after '2025-01-01'.

SELECT name,arrival_date  FROM patients where arrival_date > '2025-01-01'; 






