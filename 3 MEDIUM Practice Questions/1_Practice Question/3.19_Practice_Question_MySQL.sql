--------------------------------- Question No. 19 ---------------------------------
-- Category : Medium 

-- Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. 
-- Show results ordered ascending by allergies then by first_name then by last_name.


-- Answer : 
select first_name , last_name , allergies
from patients
where allergies = 'Penicillin' OR allergies = 'Morphine' 
order by allergies , first_name , last_name ;


SELECT first_name, last_name, allergies
FROM patients
WHERE allergies IN ('Penicillin', 'Morphine')
ORDER BY allergies, first_name, last_name;