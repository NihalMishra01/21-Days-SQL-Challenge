-- Day 19 SQL Challenge

-- Practice Questions:

-- 1. Rank patients by satisfaction score within each service.
SELECT patient_id,name, service, satisfaction,RANK() OVER 
(PARTITION BY service ORDER BY satisfaction DESC) AS satisfaction_rank FROM patient;


-- 2. Assign row numbers to staff ordered by their name.
SELECT staff_id, staff_name, service, ROW_NUMBER() OVER (ORDER BY staff_name ASC) AS row_number FROM staff;


-- 3. Rank services by total patients admitted.
SELECT s.service, COUNT(p.patient_id) AS total_patients, RANK() OVER 
(ORDER BY COUNT(p.patient_id) DESC) AS service_rank FROM services_weekly s LEFT JOIN patient p ON s.service = p.service
GROUP BY s.service, s.service ORDER BY service_rank;


-- Daily Challenge:

-- For each service, rank the weeks by patient satisfaction score (highest first). Show service, 
-- week, patient_satisfaction, patients_admitted, and the rank. Include only the top 3 weeks per service.
WITH ranked_weeks AS (SELECT 
        sw.service,
        sw.week,
        sw.patient_satisfaction,
        sw.patients_admitted,
        RANK() OVER (
            PARTITION BY sw.service 
            ORDER BY sw.patient_satisfaction DESC
        ) AS satisfaction_rank
    FROM services_weekly sw)
SELECT service, week, patient_satisfaction, patients_admitted, satisfaction_rank
FROM ranked_weeks WHERE satisfaction_rank <= 3 ORDER BY service, satisfaction_rank;

