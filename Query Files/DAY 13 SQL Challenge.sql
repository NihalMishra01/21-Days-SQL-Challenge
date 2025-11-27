-- Day 13 SQL Challenge: INNER JOIN

-- Practice Questions:

-- 1. Join patients with their service details
SELECT 
    p.patient_id,
    p.name,
    p.age,
    p.service,
    sw.week,
    sw.patient_satisfaction
FROM patients p
INNER JOIN service_weekly sw ON p.service = sw.service;

-- 2. Get patient names with assigned staff
SELECT 
    p.patient_id,
    p.name AS patient_name,
    p.service,
    s.staff_name,
    s.role
FROM patients p
INNER JOIN staff s ON p.service = s.service
WHERE p.age > 40
ORDER BY p.service;

-- 3. Combine patient and service performance data
SELECT 
    p.service,
    COUNT(p.patient_id) AS total_patients,
    AVG(sw.patient_satisfaction) AS avg_service_satisfaction
FROM patients p
INNER JOIN service_weekly sw ON p.service = sw.service
GROUP BY p.service;

-- Daily Challenge:
-- Staff roster with patient counts per service
SELECT 
    s.service,
    s.staff_name,
    s.role,
    COUNT(p.patient_id) AS patient_count
FROM staff s
INNER JOIN patients p ON s.service = p.service
GROUP BY s.service, s.staff_name, s.role
ORDER BY patient_count DESC;
