--------------------------------- Question No. 60 ---------------------------------
-- Category : Medium 
-- BOTH TABLES (province_names , patients) are used

-- Display the total amount of patients for each province. Order by descending.


-- Answer : 
SELECT pn.province_name, COUNT(*) AS patient_count      -- select column with short name such as pn
FROM province_names pn                                  -- select table province_names as pn
JOIN patients p                                         -- join with table patients as p
ON pn.province_id = p.province_id                       -- connect both tables
GROUP BY pn.province_name                               -- grouping by non aggrigate function
ORDER BY patient_count DESC;                            -- order patient_count by descending order