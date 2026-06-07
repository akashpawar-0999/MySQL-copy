--------------------------------- Question No. 16 ---------------------------------
-- Category : Medium 

-- Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.


-- Answer : 
SELECT patient_id, first_name
FROM patients
WHERE first_name LIKE 's%s'             -- cheaks first_name starts with s and ends with s 
AND LENGTH(first_name) >= 6;            -- condition for length of first_name using (LENGTH)


SELECT patient_id, first_name           
FROM patients
WHERE first_name LIKE 's____%s';        -- cheaks all conditions in one line [ s|_|_|_|_|s ]


SELECT patient_id, first_name
FROM patients
WHERE name LIKE 's%s'                   -- cheaks first_name starts with s and ends with s 
AND len(first_name) >= 6;               -- condition for length of first_name using (len) 


SELECT patient_id, first_name
FROM patients
where first_name like 's%'              -- cheaks first_name starts with s letter
and first_name like '%s'                -- cheaks first_name ends with s letter
and len(first_name) >= 6;               -- cheaks length of first_name 