-- Day 18 SQL Challenge

-- Practice Questions

-- 1. Combine patient names and staff names into a single list.
SELECT name, 'Patient' AS type
FROM patient UNION ALL SELECT staff_name AS name, 'Staff' AS type FROM staff;

-- 2. Create a union of high satisfaction patients (>90) and low satisfaction patients (<50).
SELECT patient_id, name, service, satisfaction, 'High Satisfaction' AS category
FROM patient WHERE satisfaction > 90
UNION
SELECT patient_id, name, service, satisfaction, 'Low Satisfaction' AS category
FROM patient WHERE satisfaction < 50;


-- 3. List all unique names from both patients and staff tables.
SELECT name FROM patients
UNION
SELECT staff_name AS name FROM staff;



-- Daily Challenge:

-- Create a comprehensive personnel and patient list showing: identifier (patient_id or staff_id), full name, 
-- type ('Patient' or 'Staff'), and associated service. Include only those in 'surgery' or 'emergency' services.
-- Order by type, then service, then name.
SELECT p.patient_id AS identifier,p.name AS full_name,'Patient' AS type,s.service
FROM patient p JOIN services_weekly s ON p.service = s.service WHERE LOWER(s.service) IN ('surgery', 'emergency')
UNION ALL
SELECT st.staff_id AS identifier,st.staff_name AS full_name,'Staff' AS type,s.service
FROM staff st JOIN services_weekly s ON st.service = s.service
WHERE LOWER(s.service) IN ('surgery', 'emergency') ORDER BY type, service, full_name;
