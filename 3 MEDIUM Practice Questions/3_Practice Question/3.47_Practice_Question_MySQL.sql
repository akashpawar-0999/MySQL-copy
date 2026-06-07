--------------------------------- Question No. 47 ---------------------------------
-- Category : Medium 
-- BOTH TABLES (admission  , doctors) are used

-- Show first_name, last_name, and the total number of admissions attended for each doctor.
-- Every admission has been attended by a doctor.


-- Answer : 
SELECT d.first_name, d.last_name, COUNT(*) AS total_admissions      -- select columns from doctor table ( d.column_name )
FROM doctors d                                          -- select table doctor as d
JOIN admissions a                                       -- join another table admissions as a
ON d.doctor_id = a.attending_doctor_id                  -- connect them by doctor_id and attending_doctor_id
GROUP BY d.doctor_id, d.first_name, d.last_name;        -- GROUP BY creates a separate group for each doctor.
-- COUNT(*) is an aggregate function. When you use an aggregate function along with normal columns (first_name, last_name)
-- There are multiple rows for the same doctor.
-- Without GROUP BY, SQL cannot show one row per doctor while also calculating COUNT(*). 
-- It would either give an error or count all rows together, depending on the database.