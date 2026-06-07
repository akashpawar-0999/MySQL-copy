--------------------------------- Question No. 17 ---------------------------------
-- Category : Medium 

-- Display every patient's first_name. 
-- Order the list by the length of each name and then by alphabetically.


-- Answer : 
select first_name                   -- select column to show in output
from patients                       -- from patiemts table
order by len (first_name) ,         -- order the column by length of first_name 
first_name;                         -- actual column with want to show with order