-- DAY 11 SQL Challenge

--### Practice Questions:
--1. List all unique services in the patients table.
SELECT DISTINCT service
FROM patients;

--2. Find all unique staff roles in the hospital.
SELECT DISTINCT role
FROM staff;

--3. Get distinct months from the service_weekly table.
SELECT DISTINCT(MONTH) AS month
FROM service_weekly;

select * from service_weekly
--### Daily Challenge:

--**Question:** Find all unique combinations of service and event type from the services_weekly table where events are not null or none, along with the count of occurrences for each combination. Order by count descending.
SELECT
    service,
    event,
    COUNT(*) AS occurrence_count
FROM service_weekly
WHERE event IS NOT NULL
  AND LOWER(event) <> 'none'
GROUP BY service, event
ORDER BY occurrence_count DESC;
