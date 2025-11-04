-- DAY2 Challenge 
-- Creating table  for inserting data

CREATE TABLE staff(
	staff_id varchar(20),
	staff_name varchar(20),
	role varchar(20),
	service varchar(20)
);

CREATE TABLE staff_schedule(
		week int,
		staff_id varchar(20),
		staff_name varchar(30),
		role varchar(20),
		service varchar(20),
		present int
		
);
-- Find all patients who are older than 60 years.

select * from patients where age>60;

-- Retrieve all staff members who work in the 'Emergency' service.

SELECT * FROM staff where service = 'emergency';

-- List all weeks where more than 100 patients requested admission in any service.

select week,
	service,
	patients_request
from service_weekly 
where patients_request>100
order by week ASC;

--Question: Find all patients admitted to 'Surgery' service with a satisfaction score below 70, showing their patient_id, name, age, and satisfaction score.

select patient_id, name, age,satisfaction from patients where service = 'surgery' AND satisfaction<70;

-- 	Q1. List all patients who belong to the service 'ICU'.

select * from patients where service = 'ICU';

-- Q2. Find all patients whose age is greater than 60.

select * from patients where age>60;

-- Q3. Show all staff members whose role is 'Doctor'.

select * from staff where role = 'doctor';

-- Q4. Get all records from service_weekly where available beds are less than 20.

select * from service_weekly where available_beds<20;

-- Q5. List all patients who arrived after '2025-01-01' and belong to the 'Emergency' service.

select * from patients where arrival_date>'2025-01-01' AND service = 'emergency';

-- Q6. Show all staff members who are working in 'surgery' or 'general_medicine'.

select * from staff where service IN('surgery','general_medicine')

-- Q7. Find all patients whose satisfaction score is between 70 and 90.

select * from patients where satisfaction Between 70 AND 90;

-- Q8. Show all weeks where either patients_refused > 50 or staff_morale < 60 in service_weekly.

select week,patients_refused,staff_morale from service_weekly where patients_refused > 50 OR staff_morale < 60;

-- Q9. Find all patients whose name starts with the letter 'A' and service is not 'emergency'.

select * from patients where name like 'A%' AND service !='emergency'

