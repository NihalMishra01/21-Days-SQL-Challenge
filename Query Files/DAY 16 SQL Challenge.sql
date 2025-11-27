-- Day 16 SQL Challenge: Subqueries

-- Practice Questions:

-- 1. Find patients who are in services with above-average staff count
SELECT 
    patient_id,
    name,
    service,
    age
FROM patients
WHERE service IN (
    SELECT service
    FROM staff
    GROUP BY service
    HAVING COUNT(staff_id) > (
        SELECT AVG(staff_count)
        FROM (
            SELECT COUNT(staff_id) AS staff_count
            FROM staff
            GROUP BY service
        ) AS service_staff
    )
);

-- 2. List staff who work in services that had any week with patient satisfaction below 70
SELECT 
    staff_id,
    staff_name,
    role,
    service
FROM staff
WHERE service IN (
    SELECT service
    FROM service_weekly
    WHERE patient_satisfaction < 70
);

-- 3. Show patients from services where total admitted patients exceed 1000
SELECT 
    patient_id,
    name,
    service,
    age,
    satisfaction
FROM patients
WHERE service IN (
    SELECT service
    FROM service_weekly
    GROUP BY service
    HAVING SUM(patients_admitted) > 1000
);

-- Daily Challenge:
-- Find patients in services that refused patients AND had below-average satisfaction
SELECT 
    p.patient_id,
    p.name,
    p.service,
    p.satisfaction
FROM patients p
WHERE p.service IN (
    SELECT sw.service
    FROM service_weekly sw
    WHERE sw.patients_refused > 0
    GROUP BY sw.service
    HAVING AVG(sw.patient_satisfaction) < (
        SELECT AVG(patient_satisfaction) 
        FROM service_weekly
    )
);
