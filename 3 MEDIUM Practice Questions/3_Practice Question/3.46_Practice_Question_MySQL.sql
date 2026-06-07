--------------------------------- Question No. 46 ---------------------------------
-- Category : Medium 
-- BOTH TABLES (patients , doctors) are used

-- Show first name, last name and role of every person that is either patient or doctor.
-- The roles are either "Patient" or "Doctor"


-- Answer : 
SELECT first_name, last_name, 'Patient' AS role     -- select column requeried in output
FROM patients                                       -- role of everyone in patients table is Patient
--                                                  
UNION ALL                                           -- only UNION removes duplicate rows 
--                                                  -- UNION ALL keeps all rows 
SELECT first_name, last_name, 'Doctor' AS role      -- select column requeried in output
FROM doctors;                                       -- role of everyone in doctors table is doctor