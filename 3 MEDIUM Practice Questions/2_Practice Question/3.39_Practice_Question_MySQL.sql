--------------------------------- Question No. 39 ---------------------------------
-- Category : Medium 

-- Display a single row with max_visits, min_visits, average_visits where the maximum, minimum and average number of admissions per day is calculated. 
-- Average is rounded to 2 decimal places.


-- Answer : 
SELECT MAX(daily_visits) AS max_visits,                 -- selected max_visits 
    MIN(daily_visits) AS min_visits,                    -- 
    ROUND(AVG(daily_visits), 2) AS average_visits       -- 
FROM (
    SELECT admission_date, COUNT(*) AS daily_visits     -- 1) Show the date  2) Count how many admissions occurred on that date
    FROM admissions                                     -- select admissions table 
    GROUP BY admission_date                             -- Put all identical dates into groups
)visits_per_day ;


select 
	max(number_of_visits) as max_visits,                    -- gives max_visits
	min(number_of_visits) as min_visits,                    -- gives min_visits
    round(avg(number_of_visits),2) as average_visits        -- Average is rounded to 2 decimal places
from (
    SELECT admission_date, COUNT(*) AS number_of_visits     -- 1) Show the date  2) Count how many admissions occurred on that date
    FROM admissions                                         -- select admissions table 
    GROUP BY admission_date                                 -- Put all identical dates into groups
);