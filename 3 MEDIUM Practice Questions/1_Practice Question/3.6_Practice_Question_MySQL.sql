--------------------------------- Question No. 6 ---------------------------------
-- Category : Easy 

-- Show first name and last name concatinated into one column to show their full name.

-- Answer : 

SELECT CONCAT(first_name,' ', last_name) AS full_name
FROM patients;