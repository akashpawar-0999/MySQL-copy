--------------------------------- Question No. 27 ---------------------------------
-- Category : Medium 

-- Display patient's full name, height in the units feet rounded to 1 decimal, weight in the unit pounds rounded to 0 decimals, birth_date, gender non abbreviated.
-- Convert CM to feet by dividing by 30.48.
-- Convert KG to pounds by multiplying by 2.205.


-- Answer : 
SELECT CONCAT(first_name,' ',last_name) AS patient_name,            -- display full name 
	ROUND(height / 30.48, 1) AS height_feet,                        -- height rounding to 1 decimal number
	ROUND(weight * 2.205, 0) AS weight_pounds,                      -- weight rounding to 0 decimal 
	birth_date,                                                     -- display birth_date as it is 
	CASE WHEN gender = 'M' THEN 'Male'          -- 1) when gender is 'M' ==> 'Male'
        WHEN gender = 'F' THEN 'Female'         -- 2) when gender is 'F' ==> 'Female'  
        END AS gender_type                      -- 3) END and rename as gender_type
FROM patients;                                                      -- from patients table