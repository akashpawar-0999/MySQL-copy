--------------------------------- Question No. 32 ---------------------------------
-- Category : Easy 

-- Show all the columns from admissions where the patient was admitted and discharged on the same day.


-- Answer : 
select * 
from admissions
where admission_date = discharge_date ;