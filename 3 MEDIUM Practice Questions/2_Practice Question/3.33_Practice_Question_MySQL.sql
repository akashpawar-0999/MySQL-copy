--------------------------------- Question No. 33 ---------------------------------
-- Category : Medium 
-- BOTH TABLES (patients , admissions) are used

-- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.
-- Primary diagnosis is stored in the admissions table.


-- Answer : 
SELECT patients.patient_id, first_name, last_name               -- select which column want to show as output 
FROM patients                                                   -- select table name 
JOIN admissions ON admissions.patient_id = patients.patient_id  -- join both tables by using same column
WHERE diagnosis = 'Dementia';                                   -- condition of correct output 


SELECT patient_id, first_name, last_name        
FROM patients
WHERE patient_id IN (                           -- compare patient_id with another table's patient_id
    SELECT patient_id                           -- select another patient_id
    FROM admissions                             -- from admissions table
    WHERE diagnosis = 'Dementia'                -- condition of diagnosis in admission table 
);


SELECT patient_id, first_name, last_name        
FROM patients
WHERE 'Dementia' IN (                                   -- condition of diagnosis to compare with admission table 
    SELECT diagnosis                                    -- select diagnosis column
    FROM admissions                                     -- select admission table
    WHERE admissions.patient_id = patients.patient_id   -- connect both table by using patient_id
);