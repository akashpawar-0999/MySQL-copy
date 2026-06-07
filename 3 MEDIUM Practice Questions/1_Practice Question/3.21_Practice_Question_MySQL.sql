--------------------------------- Question No. 21 ---------------------------------
-- Category : Medium 

-- Show all allergies ordered by popularity. Remove NULL values from query.


-- Answer : 
select allergies , count (*) as total_diagnosis
from patients 
where allergies is not null 
group by allergies
order by total_diagnosis desc ;


SELECT allergies, count(allergies) AS total_diagnosis
FROM patients
GROUP BY allergies
HAVING allergies IS NOT NULL
ORDER BY total_diagnosis DESC ;