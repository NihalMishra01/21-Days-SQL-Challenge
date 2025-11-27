-- #DAY 6 SQL Challenge
--Question one 
--Count the number of patients by each service.

select count(patients_admitted) as total_patients,
service from service_weekly
group by service;

--Question two 
--Calculate the average age of patients grouped by service.

select avg(age) as patients_avg_age from patients 
group by service;

--Question three 
--Find the total number of staff members per role.

select count(staff_id) as total_num_staff,
role from staff 
group by role;

--Daily Challenge Question 
--For each hospital service, calculate the total number of patients admitted, 
--total patients refused, and the admission rate 
--(percentage of requests that were admitted). Order by admission rate descending.


SELECT 
    service,
    SUM(patients_admitted) AS total_admitted,
    SUM(patients_refused) AS total_refused,
    ROUND(
        (SUM(patients_admitted) * 100.0) / 
        (SUM(patients_admitted) + SUM(patients_refused)), 2
    ) AS admission_rate
FROM service_weekly
GROUP BY service
ORDER BY admission_rate DESC;