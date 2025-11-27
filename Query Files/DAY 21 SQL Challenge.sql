-- Day 21 SQL Challenge

-- Practice Questions:

-- 1. Create a CTE to calculate service statistics, then query from it.
WITH service_stats AS (
    SELECT
        service,
        COUNT(*) AS total_weeks,
        SUM(patients_admitted) AS total_admissions,
        SUM(patients_refused) AS total_refusals,
        ROUND(AVG(patient_satisfaction), 2) AS avg_satisfaction
    FROM service_weekly
    GROUP BY service
)
SELECT * FROM service_stats;


-- 2. Use multiple CTEs to break down a complex query into logical steps.
WITH admissions_cte AS (
    SELECT service, SUM(patients_admitted) AS total_admissions
    FROM services_weekly
    GROUP BY service
),
refusals_cte AS (
    SELECT service, SUM(patients_refused) AS total_refusals
    FROM services_weekly
    GROUP BY service
)
SELECT
    a.service,
    a.total_admissions,
    r.total_refusals
FROM admissions_cte a
JOIN refusals_cte r USING (service);


-- 3. Build a CTE for staff utilization and join it with patient data.
WITH staff_util AS (
    SELECT
        service,
        COUNT(staff_id) AS total_staff
    FROM staff
    GROUP BY service
)
SELECT
    s.service,
    s.total_staff,
    p.total_admissions
FROM staff_util s
JOIN (
    SELECT service, SUM(patients_admitted) AS total_admissions
    FROM services_weekly
    GROUP BY service
) p USING (service);


-- Daily Challenge:

-- Create a comprehensive hospital performance dashboard using CTEs. Calculate: 1) Service-level
-- metrics (total admissions, refusals, avg satisfaction), 2) Staff metrics per service (total staff,
-- avg weeks present), 3) Patient demographics per service (avg age, count). Then combine all three CTEs
-- to create a final report showing service name, all calculated metrics, and an overall performance score 
-- (weighted average of admission rate and satisfaction). Order by performance score descending.
WITH 
service_metrics AS (
    SELECT
        s.service,
        p.name,
        SUM(s.patients_admitted) AS total_admissions,
        SUM(s.patients_refused) AS total_refusals,
        ROUND(AVG(s.patient_satisfaction), 2) AS avg_satisfaction
    FROM services_weekly s
    JOIN patient p ON s.service = p.service
    GROUP BY s.service, p.name
),
staff_metrics AS (
    SELECT
        service,
        COUNT(staff_id) AS total_staff
    FROM staff
    GROUP BY service
),
patient_demo AS (
    SELECT
        service,
        ROUND(AVG(age), 1) AS avg_patient_age,
        COUNT(patient_id) AS total_patients
    FROM patient
    GROUP BY service
)
SELECT
    sm.service,
    sm.total_admissions,
    sm.total_refusals,
    sm.avg_satisfaction,
    st.total_staff,
    pd.avg_patient_age,
    pd.total_patients,
    ROUND(
        ( (sm.total_admissions * 0.6) + (sm.avg_satisfaction * 0.4) ) / 10,
        2
    ) AS performance_score

FROM service_metrics sm
LEFT JOIN staff_metrics st ON sm.service = st.service
LEFT JOIN patient_demo pd ON sm.service = pd.service
ORDER BY performance_score DESC;


	