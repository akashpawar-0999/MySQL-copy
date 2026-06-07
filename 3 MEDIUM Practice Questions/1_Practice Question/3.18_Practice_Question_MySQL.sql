--------------------------------- Question No. 18 ---------------------------------
-- Category : Medium 

-- Show the total amount of male patients and the total amount of female patients in the patients table.
-- Display the two results in the same row.


-- Answer : 
SELECT 
  (SELECT count(*) FROM patients WHERE gender='M') AS male_count, 
  (SELECT count(*) FROM patients WHERE gender='F') AS female_count;


SELECT 
  SUM(Gender = 'M') as male_count, 
  SUM(Gender = 'F') AS female_count
FROM patients


select 
  sum(case when gender = 'M' then 1 end) as male_count, 
  sum(case when gender = 'F' then 1 end) as female_count 
from patients;

-- case finds gender of patients 
-- when gives the condition of gender ( 'M'/'F' )
-- if condition satisfied it gives output like 1 
-- otherwise null (0)
-- then all the outputs are then summed and stored in male_count / female_count