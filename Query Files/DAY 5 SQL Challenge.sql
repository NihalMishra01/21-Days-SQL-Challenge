-- #DAY5 SQL Challenge
-- 1. Count the total number of patients in the hospital.
select count(patient) 
from patient;

-- 2. Calculate the average satisfaction score of all patients.
select AVG(satisfaction) 
as satisfaction_score 
from patient;

-- 3. Find the minimum and maximum age of patients.
select MIN(age), 
MAX(age) 
from patient;

-- 4. Calculate the total number of patients admitted, total patients refused,and the average patient 
--    satisfaction across all services and weeks. Round the average satisfaction to 2 decimal places.
select count(patients_admitted), 
count(patients_refused), 
Round(AVG(patient_satisfaction),2) 
from services_weekly;

-- Extra Practice Question

-- How many patients in the patients table are under the age of 18?
select count(patient) 
from patient 
where age>18;

-- What is the average satisfaction score for each service? Show the service and its average score.
select service,AVG(satisfaction) 
from patient 
group by service;

-- What is the age of the single oldest patient and the single youngest patient in the patients table?
select MAX(age),
MIN(age) 
from patient;

-- What is the average satisfaction score given only by patients in the 'surgery' service?
select AVG(satisfaction) 
from patient 
where service = 'surgery';