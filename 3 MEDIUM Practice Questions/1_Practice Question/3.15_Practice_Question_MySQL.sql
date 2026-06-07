--------------------------------- Question No. 15 ---------------------------------
-- Category : Medium 

-- Show unique first names from the patients table which only occurs once in the list.
-- For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. 
-- If only 1 person is named 'Leo' then include them in the output.


-- Answer : 
SELECT first_name
FROM patients
GROUP BY first_name
HAVING COUNT(*) = 1;


SELECT first_name
FROM (
    SELECT first_name, count(first_name)
    FROM patients
    GROUP BY first_name
)
HAVING COUNT(first_name) = 1


SELECT first_name
FROM (
    SELECT first_name, COUNT(first_name) AS cnt
    FROM patients
    GROUP BY first_name
) AS A
WHERE cnt = 1;