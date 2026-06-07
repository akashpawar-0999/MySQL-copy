--------------------------------- Question No. 13 ---------------------------------
-- Category : Easy 

-- Write a query to find list of patients first_name, last_name, and allergies where allergies are not null and are from the city of 'Hamilton'


-- Answer : 
select first_name , last_name , allergies 
from patients 
where allergies is not NULL and city = 'Hamilton'