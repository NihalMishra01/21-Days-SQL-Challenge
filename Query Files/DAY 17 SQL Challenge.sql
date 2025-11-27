-- Day 17 SQL Challenge

-- Practice Questions:

-- 1. Show each patient with their service's average satisfaction as an additional column.
SELECT 
p.patient_id,p.name,p.service,s.service,p.satisfaction FROM patients p
JOIN service_weekly s ON p.service = s.service
JOIN (
SELECT service,AVG(patient_satisfaction) AS avg_satisfaction
FROM service_weekly GROUP BY service) sw ON p.service = sw.service;
 
-- 2. Create a derived table of service statistics and query from it.
SELECT *
FROM (SELECT service,
COUNT(patients_admitted) AS total_patients,AVG(patient_satisfaction) AS avg_satisfaction,
SUM(staff_morale) AS total_staff FROM services_weekly GROUP BY service) AS service_stats
ORDER BY avg_satisfaction DESC;

-- 3. Display staff with their service's total patient count as a calculated field.
SELECT st.staff_id,st.staff_name,st.service,s.service,svc.total_patients
FROM staff st JOIN services_weekly s ON st.service = s.service
JOIN (SELECT service,COUNT(patient_id) AS total_patients FROM patient GROUP BY service)
svc ON st.service = svc.service;


-- Daily Challenge:

-- Create a report showing each service with: service name, total patients admitted, 
-- the difference between their total admissions and the average admissions across all services, and 
-- a rank indicator ('Above Average', 'Average', 'Below Average'). Order by total patients admitted descending.
WITH service_summary AS (
    SELECT 
        s.service,
        COUNT(p.patient_id) AS total_patients
    FROM services_weekly s
    JOIN patient p ON s.service = p.service
    GROUP BY s.service, s.service
),
overall_avg AS (
    SELECT AVG(patients_admitted) AS avg_patients
    FROM services_weekly
)
SELECT 
    ss.service,
    ss.patients_admitted,
    ss.patients_admitted - oa.avg_patients AS difference_from_avg,
    CASE 
        WHEN ss.patients_admitted > oa.avg_patients THEN 'Above Average'
        WHEN ss.patients_admitted = oa.avg_patients THEN 'Average'
        ELSE 'Below Average'
    END AS rank_indicator
FROM services_weekly ss, overall_avg oa
ORDER BY ss.patients_admitted DESC;

