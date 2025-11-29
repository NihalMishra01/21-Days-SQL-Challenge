SELECT
    e.employee_id,
    e.name,
    k.entry_time,
    k.exit_time,
    e.role
FROM
    employees e
JOIN
    keycard_logs k ON e.employee_id = k.employee_id
WHERE
    k.room = 'CEO Office' AND
    k.entry_time BETWEEN '2025-10-15 20:30:00' AND '2025-10-15 21:30:00';


SELECT
    e.name,
    a.claimed_location,
    a.claim_time
FROM
    employees e
JOIN
    alibis a ON e.employee_id = a.employee_id
WHERE
    e.name = 'David Kumar' AND
    a.claim_time BETWEEN '2025-10-15 20:30:00' AND '2025-10-15 21:30:00';


SELECT
    T1.name AS caller_name,
    T3.name AS receiver_name,
    T2.call_time,
    T2.duration_sec
FROM
    employees AS T1
JOIN
    calls AS T2 ON T1.employee_id = T2.caller_id OR T1.employee_id = T2.receiver_id
JOIN
    employees AS T3 ON (T1.employee_id = T2.caller_id AND T3.employee_id = T2.receiver_id) OR (T1.employee_id = T2.receiver_id AND T3.employee_id = T2.caller_id)
WHERE
    T1.employee_id = 4 AND
    T2.call_time BETWEEN '2025-10-15 20:30:00' AND '2025-10-15 21:00:00';

SELECT
    room,
    description,
    found_time
FROM
    evidence
WHERE
    room = 'CEO Office';


SELECT
    name AS killer
FROM
    employees
WHERE
    employee_id = 4;