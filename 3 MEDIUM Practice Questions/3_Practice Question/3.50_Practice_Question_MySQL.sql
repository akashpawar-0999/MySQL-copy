--------------------------------- Question No. 50 ---------------------------------
-- Category : Medium 
-- THREE TABLES (patients , admission , doctors ) are used

-- Display every patient that has at least one admission and show their most recent admission along with the patient and doctor's full name.


-- Answer : 
SELECT CONCAT(p.first_name,' ',p.last_name) AS patient_name,    -- selected patient's full name 
    a.admission_date,                                           -- selected admission_date column
    CONCAT(d.first_name,' ',d.last_name) AS doctor_name         -- selected doctor's full name
FROM admissions a                           -- selected common table of admission a for joining with other tables  
JOIN patients p                             -- join patients table
ON a.patient_id = p.patient_id              -- joining admission table with patients table 
JOIN doctors d                              -- join doctors table 
ON a.attending_doctor_id = d.doctor_id      -- joining admission table with doctor table 
WHERE a.admission_date = (                  -- where admission_date in admissions table is 
    SELECT MAX(a2.admission_date)           -- select most recent date of admission from admission table a2
    FROM admissions a2                      -- select admission table a2 
    WHERE a2.patient_id = a.patient_id      -- connect admission tables in main query and subquery  
);