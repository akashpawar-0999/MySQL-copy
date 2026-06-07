--------------------------------- Question No. 7 ---------------------------------
-- Category : Easy 

-- Show first name, last name, and the full province name of each patient.
-- Example: 'Ontario' instead of 'ON'


-- Answer : 

SELECT first_name, last_name, province_name             -- columns which we want to show as output
FROM patients                                           -- from patient table
JOIN province_names                                     -- Connect province_names table with the patients table using JOIN
ON province_names.province_id = patients.province_id;   -- ON specifies the matching condition.
--                                                      -- Compare province_id from both tables.
--                                                      -- If the values are the same, the rows are combined.