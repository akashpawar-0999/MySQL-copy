--------------------------------- Question No. 37 ---------------------------------
-- Category : Medium 

-- Show patient_id, attending_doctor_id, and diagnosis for admissions that match one of the two criteria:
-- 1. patient_id is an odd number and attending_doctor_id is either 1, 5, or 19.
-- 2. attending_doctor_id contains a 2 and the length of patient_id is 3 characters.


-- Answer : 
SELECT patient_id, attending_doctor_id, diagnosis                   -- selecting column want to display as output 
FROM admissions                                                     -- from table admissions 
WHERE (patient_id % 2 = 1 AND attending_doctor_id IN (1,5,19))      -- patient_id is ODD  AND  attending_doctor_id is (1,5,19)
OR                                                                  -- OR
(attending_doctor_id LIKE '%2%' AND LENGTH(patient_id) = 3);        -- attending_doctor_id contains digit 2  AND  length of patient_id is 3