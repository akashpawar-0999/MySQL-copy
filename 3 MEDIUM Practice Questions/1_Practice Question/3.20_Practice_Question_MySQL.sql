--------------------------------- Question No. 20 ---------------------------------
-- Category : Medium 

-- Show the city and the total number of patients in the city.
-- Order from most to least patients and then by city name ascending.


-- Answer : 
SELECT city, COUNT(*) AS total_patients
FROM patients
GROUP BY city                               -- You only GROUP BY the non-aggregated columns.
ORDER BY total_patients DESC, city ASC;     -- ordering the columns as required