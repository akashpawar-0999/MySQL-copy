Create table If Not Exists Users (user_id int, name varchar(40))
Truncate table Users
insert into Users (user_id, name) values ('1', 'aLice')
insert into Users (user_id, name) values ('2', 'bOB')

-- Solution 

SELECT user_id, 
    CONCAT( UPPER(LEFT(name, 1)) , LOWER (SUBSTRING(name, 2)) ) AS name
-- UPPER() converts letters to uppercase.
-- LEFT(string, number_of_characters)
-- It returns the specified number of characters from the left side.

-- LOWER() converts every letter to lowercase.
-- SUBSTRING(string,start_position)
-- It starts extracting characters from the given position.
-- SQL starts counting from 1, not 0.

FROM Users
ORDER BY user_id;