--------------------------------- Question No. 48 ---------------------------------
-- Category : Medium 

-- For each doctor, display their id, full name, and the first and last admission date they attended.


-- Answer : 
SELECT d.doctor_id, CONCAT(d.first_name,' ',d.last_name) AS full_name,      
    MIN(a.admission_date) AS first_admission_date,                          -- Finds the smallest (earliest) date in the group.
    MAX(a.admission_date) AS last_admission_date                            -- Finds the largest (latest) date in the group.
FROM doctors as d                                                           -- select table doctors as d
JOIN admissions as a                                                        -- join admissions table as a
ON d.doctor_id = a.attending_doctor_id                                      -- connect them by doctor_id and attending_doctor_id
GROUP BY d.doctor_id, d.first_name, d.last_name;                            -- all these rows become one group.