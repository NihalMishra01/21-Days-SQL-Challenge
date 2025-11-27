-- Day 15 SQL Challenge: Multi-Table JOINs

-- Practice Questions:

-- 1. Join patients, staff, and staff_schedule to show patient service and staff availability
SELECT 
    p.patient_id,
    p.name AS patient_name,
    p.service,
    s.staff_name,
    s.role,
    ss.week,
    ss.present
FROM patients p
INNER JOIN staff s ON p.service = s.service
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id;

-- 2. Combine services_weekly with staff and staff_schedule for comprehensive service analysis
SELECT 
    sw.service,
    sw.week,
    sw.patients_admitted,
    sw.patient_satisfaction,
    s.staff_name,
    s.role,
    ss.present
FROM service_weekly sw
LEFT JOIN staff s ON sw.service = s.service
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id AND ss.week = sw.week;

-- 3. Create a multi-table report showing patient admissions with staff information
SELECT 
    p.patient_id,
    p.name,
    p.service,
    p.satisfaction,
    s.staff_name,
    s.role,
    sw.patients_admitted,
    sw.patient_satisfaction AS service_avg_satisfaction
FROM patients p
INNER JOIN staff s ON p.service = s.service
INNER JOIN service_weekly sw ON p.service = sw.service;

-- Daily Challenge:
-- Comprehensive service analysis report for week 20
SELECT 
    sw.service,
    SUM(sw.patients_admitted) AS total_admitted,
    SUM(sw.patients_refused) AS total_refused,
    AVG(sw.patient_satisfaction) AS avg_satisfaction,
    COUNT(DISTINCT s.staff_id) AS staff_assigned,
    COUNT(ss.present) AS staff_present_count
FROM service_weekly sw
LEFT JOIN staff s ON sw.service = s.service
LEFT JOIN staff_schedule ss 
    ON s.staff_id = ss.staff_id AND ss.week = 20
WHERE sw.week = 20
GROUP BY sw.service
ORDER BY total_admitted DESC;
