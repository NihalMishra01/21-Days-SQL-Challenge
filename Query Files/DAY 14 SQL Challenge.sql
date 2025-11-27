-- Day 14 SQL Challenge: LEFT JOIN

-- Practice Questions:

-- 1. Show all staff members and their schedule information (including those with no schedule entries)
SELECT 
    s.staff_id,
    s.staff_name,
    s.role,
    s.service,
    ss.week,
    ss.present
FROM staff s
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id;

-- 2. List all services from services_weekly and their corresponding staff (show services even if no staff assigned)
SELECT 
    sw.service,
    sw.week,
    s.staff_name,
    s.role
FROM service_weekly sw
LEFT JOIN staff s ON sw.service = s.service;

-- 3. Display all patients and their service's weekly statistics (if available)
SELECT 
    p.patient_id,
    p.name,
    p.service,
    sw.week,
    sw.patient_satisfaction,
    sw.patients_admitted
FROM patients p
LEFT JOIN service_weekly sw ON p.service = sw.service;

-- Daily Challenge:
-- Staff utilization report showing all staff members and count of weeks they were present
SELECT 
    s.staff_id,
    s.staff_name,
    s.role,
    s.service,
    COUNT(ss.week) AS weeks_present
FROM staff s
LEFT JOIN staff_schedule ss ON s.staff_id = ss.staff_id
GROUP BY s.staff_id, s.staff_name, s.role, s.service
ORDER BY weeks_present DESC;
