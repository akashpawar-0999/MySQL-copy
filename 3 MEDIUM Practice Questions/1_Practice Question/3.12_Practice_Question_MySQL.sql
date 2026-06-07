--------------------------------- Question No. 12 ---------------------------------
-- Category : Easy 

-- Write a query to find the first_name, last name and birth date of patients who has height greater than 160 and weight greater than 70


-- Answer : 
select first_name , last_name , birth_date
from patients
where height > 160 and weight > 70 ;