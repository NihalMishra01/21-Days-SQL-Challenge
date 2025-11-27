-- DAY 9 SQL Challenge

--### Practice Questions:
--1. Extract the year from all patient arrival dates.

SELECT
	patient_id,
	arrival_date,
	EXTRACT(YEAR FROM arrival_date)
FROM patients;

--2. Calculate the length of stay for each patient (departure_date - arrival_date).

SELECT
  service,
  ROUND(AVG( (COALESCE(departure_date, CURRENT_DATE) - arrival_date) )::numeric, 2) AS avg_length_of_stay_days,
  COUNT(*) AS patient_count
FROM patients
WHERE arrival_date IS NOT NULL
GROUP BY service
HAVING AVG( (COALESCE(departure_date, CURRENT_DATE) - arrival_date) ) > 7
ORDER BY avg_length_of_stay_days DESC;


--3-. Find all patients who arrived in a specific month.
SELECT 
    patient_id,
    arrival_date
FROM patients
WHERE EXTRACT(MONTH FROM arrival_date) = 3;


--### Daily Challenge:

--**Question:** Calculate the average length of stay (in days) for each service, showing only services where the average stay is more than 7 days. Also show the count of patients and order by average stay descending.

SELECT 
    service,
    AVG(departure_date - arrival_date) AS avg_length_of_stay,
    COUNT(patient_id) AS patient_count
FROM patients
GROUP BY service
HAVING AVG(departure_date - arrival_date) > 7
ORDER BY avg_length_of_stay DESC;
