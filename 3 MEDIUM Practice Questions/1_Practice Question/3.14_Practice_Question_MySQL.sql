--------------------------------- Question No. 14 ---------------------------------
-- Category : Medium 

-- Show unique birth years from patients and order them by ascending.


-- Answer : 
SELECT DISTINCT YEAR(birth_date)
FROM patients
ORDER BY YEAR(birth_date);

SELECT year(birth_date)
FROM patients
GROUP BY year(birth_date)