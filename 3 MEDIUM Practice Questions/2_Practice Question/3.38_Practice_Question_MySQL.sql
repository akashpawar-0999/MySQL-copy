--------------------------------- Question No. 38 ---------------------------------
-- Category : Medium 

-- Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table. 
-- (Their patient_id does not exist in any admissions.patient_id rows.)


-- Answer : 
select p.patient_id , p.first_name , p.last_name    -- select columns from patients table
from patients p                                     -- select patients table as p
left join admissions a                              -- left join admission table as a
on p.patient_id = a.patient_id                      -- connect patients and admissions table 
where a.patient_id IS NULL;                         -- condition of patient_id does not exist 


SELECT patients.patient_id, first_name, last_name   -- select columns to display 
from patients as p                                  -- select table patients 
where p.patient_id not in (                         -- patient_id in patients table is not in
    select a.patient_id                             -- admission table's patient_id
    from admissions as a                            -- select table of subquery 
);