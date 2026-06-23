Create table If Not Exists MyNumbers (num int)
Truncate table MyNumbers
insert into MyNumbers (num) values ('8')
insert into MyNumbers (num) values ('8')
insert into MyNumbers (num) values ('3')
insert into MyNumbers (num) values ('3')
insert into MyNumbers (num) values ('1')
insert into MyNumbers (num) values ('4')
insert into MyNumbers (num) values ('5')
insert into MyNumbers (num) values ('6')

-- Solution 

SELECT MAX(num) AS num          -- Find the largest number from the subquery result
FROM (                          -- Start subquery
    SELECT num                  -- Select the number
    FROM MyNumbers              -- Read data from MyNumbers table
    GROUP BY num                -- Group same numbers together
    HAVING COUNT(*) = 1         -- Keep only numbers appearing exactly once
) t;                            -- Give subquery a temporary name (alias)