-- # DAY 4 SQL Challenge

-- 1. Display the first 5 patients from the patients table.
SELECT *
FROM patients
LIMIT 5;

-- 2. Show patients 11-20 using OFFSET.
SELECT *
FROM patients
LIMIT 10 OFFSET 10;

-- 3. Get the 10 most recent patient admissions based on arrival_date.
SELECT *
FROM patients
ORDER BY arrival_date DESC
LIMIT 10;

-- 4. 3rd to 7th highest patient satisfaction scores.
SELECT patient_id, name, service, satisfaction
FROM patients
ORDER BY satisfaction DESC
LIMIT 5 OFFSET 2;

-- 5. Display the first 8 records.
SELECT *
FROM patients
LIMIT 8;

-- 6. Last 5 patients (most recent).
SELECT *
FROM patients
ORDER BY arrival_date DESC
LIMIT 5;

-- 7. Top 10 highest satisfaction scores.
SELECT satisfaction
FROM patients
ORDER BY satisfaction DESC
LIMIT 10;

-- 8. Skip first 15 and show next 5.
SELECT *
FROM patients
LIMIT 5 OFFSET 15;

-- 9. Retrieve all except first 5 rows.
SELECT *
FROM patients
OFFSET 5;

-- 10. Show records 6 to 12 sorted by age (youngest first).
SELECT *
FROM patients
ORDER BY age ASC
LIMIT 7 OFFSET 5;

-- 11. Show the 3rd, 4th, and 5th most recent admissions.
SELECT name, arrival_date
FROM patients
ORDER BY arrival_date DESC
LIMIT 3 OFFSET 2;

-- 12. Show 5 lowest satisfaction patients.
SELECT patient_id, name, satisfaction
FROM patients
ORDER BY satisfaction ASC
LIMIT 5;

-- 13. Minimum satisfaction score.
SELECT MIN(satisfaction)
FROM patients;
