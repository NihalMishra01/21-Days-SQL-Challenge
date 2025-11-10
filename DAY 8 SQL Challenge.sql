--### Practice Questions:

--1. Convert all patient names to uppercase.

SELECT UPPER(name) from patients

--2. Find the length of each staff member's name.

select staff_name,LENGTH(staff_name) from staff;


--3. Concatenate staff_id and staff_name with a hyphen separator.

SELECT CONCAT(staff_id, '-', staff_name) AS staff_details
FROM staff;

select * from patients
--Question: Create a patient summary that shows patient_id, full name in uppercase, service i

SELECT 
    patient_id,
    UPPER(name) AS full_name,
    LOWER(service) AS service_lower,
    CASE 
        WHEN age >= 65 THEN 'Senior'
        WHEN age >= 18 THEN 'Adult'
        ELSE 'Minor'
    END AS age_category,
    LENGTH(name) AS name_length
FROM patients
WHERE LENGTH(name) > 10;
