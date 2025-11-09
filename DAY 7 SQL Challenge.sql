--1. Find services that have admitted more than 500 patients in total.
select service,SUM(patients_admitted)
FROM service_weekly
group by service
having SUM(patients_admitted)>500;
--2. Show services where average patient satisfaction is below 75.

select service,AVG(satisfaction) from patients
group by service
having AVG(satisfaction)<75
--3. List weeks where total staff presence across all services was less than 50.


SELECT week, SUM(present) AS total_staff_present
FROM staff_schedule
GROUP BY week
HAVING SUM(present) < 50;

--Question: Identify services that refused more than 100 patients in total and had an average patient satisfaction below 80. Show service name, total refused, and average satisfaction.


SELECT 
    service,
    SUM(patients_refused) AS total_refused,
    AVG(patient_satisfaction) AS avg_satisfaction
FROM service_weekly
GROUP BY service
HAVING 
    SUM(patients_refused) > 100
    AND AVG(patient_satisfaction) < 80;

