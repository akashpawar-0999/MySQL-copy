--------------------------------- Question No. 35 ---------------------------------
-- Category : Medium 

-- Show all columns for patient_id 542's most recent admission_date.


-- Answer : 
SELECT *
FROM admissions
WHERE patient_id = 542
ORDER BY admission_date DESC
LIMIT 1;


SELECT *
FROM admissions
WHERE patient_id = 542
GROUP BY patient_id
HAVING admission_date = MAX(admission_date);


SELECT *
FROM admissions
WHERE patient_id = '542' AND admission_date = (
    SELECT MAX(admission_date)
    FROM admissions
    WHERE patient_id = '542'
);


SELECT *
FROM admissions
GROUP BY patient_id
HAVING patient_id = 542 AND max(admission_date) ;