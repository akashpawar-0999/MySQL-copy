--------------------------------- Question No. 3 ---------------------------------
-- Category : Easy 

-- Show first name of patients that start with the letter 'C'

-- Answer : 

SELECT first_name
FROM patients
WHERE first_name LIKE 'C%';