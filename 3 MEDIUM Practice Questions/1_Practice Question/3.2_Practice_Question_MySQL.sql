--------------------------------- Question No. 2 ---------------------------------
-- Category : Easy 

-- Show first name and last name of patients who does not have allergies. (null)

-- Answer : 

select first_name , last_name 
from patients
where allergies IS NULL ;