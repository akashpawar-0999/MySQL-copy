--------------------------------- Question No. 24 ---------------------------------
-- Category : Medium 

-- Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.


-- Answer : 
SELECT province_id, SUM(height) AS total_height
FROM patients
GROUP BY province_id
HAVING SUM(height) >= 7000;


select * 
from (
    select province_id, SUM(height) 
    as sum_height 
    FROM patients 
    group by province_id) 
where sum_height >= 7000;