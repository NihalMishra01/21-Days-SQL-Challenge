-- Day 20 SQL Challenge

-- Practice Questions:

-- 1. Calculate running total of patients admitted by week for each service.
SELECT 
    service,
    week,
    patients_admitted,
    SUM(patients_admitted) 
        OVER (PARTITION BY service ORDER BY week) AS running_total
FROM services_weekly;


-- 2. Find the moving average of patient satisfaction over 4-week periods.
SELECT
    service,
    week,
    patient_satisfaction,
    AVG(patient_satisfaction) 
        OVER (PARTITION BY service ORDER BY week ROWS 3 PRECEDING) AS moving_avg_4week
FROM services_weekly;


-- 3. Show cumulative patient refusals by week across all services.
SELECT
    week,
    SUM(patients_refused) AS total_refusals,
    SUM(SUM(patients_refused)) 
        OVER (ORDER BY week) AS cumulative_refusals
FROM service_weekly
GROUP BY week
ORDER BY week;


-- Daily Challenge:

-- Create a trend analysis showing for each service and week: week number, patients_admitted, running total of patients
-- admitted (cumulative), 3-week moving average of patient satisfaction (current week and 2 prior weeks), and the 
-- difference between current week admissions and the service average. Filter for weeks 10-20 only.
SELECT service, week, patients_admitted,
SUM(patients_admitted) OVER (PARTITION BY service ORDER BY week) AS running_total,
ROUND(AVG(patient_satisfaction) OVER (PARTITION BY service ORDER BY week ROWS 2 PRECEDING),2) AS moving_avg_3week,
patients_admitted - AVG(patients_admitted) OVER (PARTITION BY service) AS diff_from_service_avg
FROM services_weekly
WHERE week BETWEEN 10 AND 20
ORDER BY service, week;
