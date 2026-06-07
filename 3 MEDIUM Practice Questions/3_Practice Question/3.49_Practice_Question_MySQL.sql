--------------------------------- Question No. 49 ---------------------------------
-- Category : Medium 
-- THREE TABLES (patients , admission , doctors ) are used

-- For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.


-- Answer : 
SELECT  CONCAT(p.first_name, ' ', p.last_name) AS patient_name,         -- selected patient's full name 
        a.diagnosis,                                                    -- selected diagnosis column
        CONCAT(d.first_name, ' ', d.last_name) AS doctor_name           -- selected doctor's full name 
FROM admissions a                                       -- selected common table of admission a for joining with other tables  
JOIN patients p                                         -- join patients table
ON a.patient_id = p.patient_id                          -- joining admission table with patients table 
JOIN doctors d                                          -- join doctors table 
ON a.attending_doctor_id = d.doctor_id;                 -- joining admission table with doctor table 