--------------------------------- Question No. 26 ---------------------------------
-- Category : Medium 

-- display the first name, last name and number of duplicate patients based on their first name and last name.
-- Ex: A patient with an identical name can be considered a duplicate.


-- Answer : 
SELECT first_name, last_name, COUNT(*) AS num_of_duplicates
FROM patients
GROUP BY first_name, last_name
HAVING COUNT(*) > 1;                                -- to remove duplicates