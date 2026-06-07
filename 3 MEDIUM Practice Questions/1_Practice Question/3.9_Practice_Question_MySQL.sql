--------------------------------- Question No. 9 ---------------------------------
-- Category : Easy 

-- Show the first_name, last_name, and height of the patient with the greatest height.


-- Answer : 
SELECT first_name, last_name, height
FROM patients
WHERE height = (
    SELECT MAX(height)
    FROM patients
);


SELECT first_name, last_name, height
FROM patients
ORDER BY height DESC
LIMIT 1;