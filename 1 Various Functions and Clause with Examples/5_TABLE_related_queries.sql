-- TABLE RELATED QUERIES 

CREATE DATABASE college;
USE college;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    marks INT
);

INSERT INTO student VALUES
(1,'Akash',20,'Pune',85),
(2,'Rahul',19,'Mumbai',70),
(3,'Priya',21,'Pune',92),
(4,'Sneha',22,'Delhi',88),
(5,'Amit',18,'Mumbai',65),
(6,'Neha',20,'Delhi',95),
(7,'Rohan',23,'Pune',75);



-- Display all records
SELECT * FROM student;
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 1  | Akash | 20  | Pune   | 85    |
-- | 2  | Rahul | 19  | Mumbai | 70    |
-- | 3  | Priya | 21  | Pune   | 92    |
-- | 4  | Sneha | 22  | Delhi  | 88    |
-- | 5  | Amit  | 18  | Mumbai | 65    |
-- | 6  | Neha  | 20  | Delhi  | 95    |
-- | 7  | Rohan | 23  | Pune   | 75    |
-- +----+-------+-----+--------+-------+


-- Display specific columns
SELECT name, marks FROM student;
-- Output:
-- +-------+-------+
-- | name  | marks |
-- +-------+-------+
-- | Akash | 85    |
-- | Rahul | 70    |
-- | Priya | 92    |
-- | Sneha | 88    |
-- | Amit  | 65    |
-- | Neha  | 95    |
-- | Rohan | 75    |
-- +-------+-------+


-- Distinct values
SELECT DISTINCT city FROM student;
-- Output:
-- +--------+
-- | city   |
-- +--------+
-- | Pune   |
-- | Mumbai |
-- | Delhi  |
-- +--------+


-- Count total records
SELECT COUNT(*) FROM student;
-- Output:
-- +----------+
-- | COUNT(*) |
-- +----------+
-- | 7        |
-- +----------+


-- Maximum marks
SELECT MAX(marks) FROM student;
-- Output:
-- +------------+
-- | MAX(marks) |
-- +------------+
-- | 95         |
-- +------------+


-- Minimum marks
SELECT MIN(marks) FROM student;
-- Output:
-- +------------+
-- | MIN(marks) |
-- +------------+
-- | 65         |
-- +------------+


-- Average marks
SELECT AVG(marks) FROM student;
-- Output:
-- +------------+
-- | AVG(marks) |
-- +------------+
-- | 81.4286    |
-- +------------+


-- Total marks
SELECT SUM(marks) FROM student;
-- Output:
-- +------------+
-- | SUM(marks) |
-- +------------+
-- | 570        |
-- +------------+


-- Students from Pune
SELECT * FROM student
WHERE city='Pune';
-- Output:
-- +----+-------+-----+------+-------+
-- | id | name  | age | city | marks |
-- +----+-------+-----+------+-------+
-- | 1  | Akash | 20  | Pune | 85    |
-- | 3  | Priya | 21  | Pune | 92    |
-- | 7  | Rohan | 23  | Pune | 75    |
-- +----+-------+-----+------+-------+


-- Students with marks greater than 80
SELECT * FROM student
WHERE marks > 80;
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 1  | Akash | 20  | Pune   | 85    |
-- | 3  | Priya | 21  | Pune   | 92    |
-- | 4  | Sneha | 22  | Delhi  | 88    |
-- | 6  | Neha  | 20  | Delhi  | 95    |
-- +----+-------+-----+--------+-------+


-- Students between age 18 and 21
SELECT * FROM student
WHERE age BETWEEN 18 AND 21;
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 1  | Akash | 20  | Pune   | 85    |
-- | 2  | Rahul | 19  | Mumbai | 70    |
-- | 3  | Priya | 21  | Pune   | 92    |
-- | 5  | Amit  | 18  | Mumbai | 65    |
-- | 6  | Neha  | 20  | Delhi  | 95    |
-- +----+-------+-----+--------+-------+


-- Students from Pune or Delhi
SELECT * FROM student
WHERE city='Pune' OR city='Delhi';
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 1  | Akash | 20  | Pune   | 85    |
-- | 3  | Priya | 21  | Pune   | 92    |
-- | 4  | Sneha | 22  | Delhi  | 88    |
-- | 6  | Neha  | 20  | Delhi  | 95    |
-- | 7  | Rohan | 23  | Pune   | 75    |
-- +----+-------+-----+--------+-------+


-- Students not from Mumbai
SELECT * FROM student
WHERE city != 'Mumbai';
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 1  | Akash | 20  | Pune   | 85    |
-- | 3  | Priya | 21  | Pune   | 92    |
-- | 4  | Sneha | 22  | Delhi  | 88    |
-- | 6  | Neha  | 20  | Delhi  | 95    |
-- | 7  | Rohan | 23  | Pune   | 75    |
-- +----+-------+-----+--------+-------+


-- Names starting with A
SELECT * FROM student
WHERE name LIKE 'A%';
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 1  | Akash | 20  | Pune   | 85    |
-- | 5  | Amit  | 18  | Mumbai | 65    |
-- +----+-------+-----+--------+-------+


-- Names ending with a
SELECT * FROM student
WHERE name LIKE '%a';
-- Output:
-- +----+-------+-----+-------+-------+
-- | id | name  | age | city  | marks |
-- +----+-------+-----+-------+-------+
-- | 3  | Priya | 21  | Pune  | 92    |
-- | 4  | Sneha | 22  | Delhi | 88    |
-- | 6  | Neha  | 20  | Delhi | 95    |
-- +----+-------+-----+-------+-------+


-- Names containing h
SELECT * FROM student
WHERE name LIKE '%h%';
-- Output:
-- +----+-------+-----+-------+-------+
-- | id | name  | age | city  | marks |
-- +----+-------+-----+-------+-------+
-- | 1  | Akash | 20  | Pune  | 85    |
-- | 4  | Sneha | 22  | Delhi | 88    |
-- | 6  | Neha  | 20  | Delhi | 95    |
-- | 7  | Rohan | 23  | Pune  | 75    |
-- +----+-------+-----+-------+-------+


-- Students from Pune and marks > 80
SELECT * FROM student
WHERE city='Pune' AND marks>80;
-- Output:
-- +----+-------+-----+------+-------+
-- | id | name  | age | city | marks |
-- +----+-------+-----+------+-------+
-- | 1  | Akash | 20  | Pune | 85    |
-- | 3  | Priya | 21  | Pune | 92    |
-- +----+-------+-----+------+-------+


-- Sort by marks ascending
SELECT * FROM student
ORDER BY marks ASC;
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 5  | Amit  | 18  | Mumbai | 65    |
-- | 2  | Rahul | 19  | Mumbai | 70    |
-- | 7  | Rohan | 23  | Pune   | 75    |
-- | 1  | Akash | 20  | Pune   | 85    |
-- | 4  | Sneha | 22  | Delhi  | 88    |
-- | 3  | Priya | 21  | Pune   | 92    |
-- | 6  | Neha  | 20  | Delhi  | 95    |
-- +----+-------+-----+--------+-------+


-- Sort by marks descending
SELECT * FROM student
ORDER BY marks DESC;
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 6  | Neha  | 20  | Delhi  | 95    |
-- | 3  | Priya | 21  | Pune   | 92    |
-- | 4  | Sneha | 22  | Delhi  | 88    |
-- | 1  | Akash | 20  | Pune   | 85    |
-- | 7  | Rohan | 23  | Pune   | 75    |
-- | 2  | Rahul | 19  | Mumbai | 70    |
-- | 5  | Amit  | 18  | Mumbai | 65    |
-- +----+-------+-----+--------+-------+


-- Highest scorer
SELECT * FROM student
ORDER BY marks DESC
LIMIT 1;
-- Output:
-- +----+------+-----+-------+-------+
-- | id | name | age | city  | marks |
-- +----+------+-----+-------+-------+
-- | 6  | Neha | 20  | Delhi | 95    |
-- +----+------+-----+-------+-------+


-- Top 3 scorers
SELECT * FROM student
ORDER BY marks DESC
LIMIT 3;
-- Output:
-- +----+-------+-----+-------+-------+
-- | id | name  | age | city  | marks |
-- +----+-------+-----+-------+-------+
-- | 6  | Neha  | 20  | Delhi | 95    |
-- | 3  | Priya | 21  | Pune  | 92    |
-- | 4  | Sneha | 22  | Delhi | 88    |
-- +----+-------+-----+-------+-------+


-- First 2 rows
SELECT * FROM student
LIMIT 2;
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 1  | Akash | 20  | Pune   | 85    |
-- | 2  | Rahul | 19  | Mumbai | 70    |
-- +----+-------+-----+--------+-------+


-- Skip first 2 rows and show next 3
SELECT * FROM student
LIMIT 2,3;
-- Output:
-- +----+-------+-----+------+-------+
-- | id | name  | age | city | marks |
-- +----+-------+-----+------+-------+
-- | 3  | Priya | 21  | Pune | 92    |
-- | 4  | Sneha | 22  | Delhi| 88    |
-- | 5  | Amit  | 18  | Mumbai| 65   |
-- +----+-------+-----+------+-------+


-- Count students city wise
SELECT city, COUNT(*)
FROM student
GROUP BY city;
-- Output:
-- +--------+----------+
-- | city   | COUNT(*) |
-- +--------+----------+
-- | Delhi  | 2        |
-- | Mumbai | 2        |
-- | Pune   | 3        |
-- +--------+----------+


-- Average marks city wise
SELECT city, AVG(marks)
FROM student
GROUP BY city;
-- Output:
-- +--------+------------+
-- | city   | AVG(marks) |
-- +--------+------------+
-- | Delhi  | 91.5000    |
-- | Mumbai | 67.5000    |
-- | Pune   | 84.0000    |
-- +--------+------------+


-- Maximum marks city wise
SELECT city, MAX(marks)
FROM student
GROUP BY city;
-- Output:
-- +--------+------------+
-- | city   | MAX(marks) |
-- +--------+------------+
-- | Delhi  | 95         |
-- | Mumbai | 70         |
-- | Pune   | 92         |
-- +--------+------------+


-- Minimum marks city wise
SELECT city, MIN(marks)
FROM student
GROUP BY city;
-- Output:
-- +--------+------------+
-- | city   | MIN(marks) |
-- +--------+------------+
-- | Delhi  | 88         |
-- | Mumbai | 65         |
-- | Pune   | 75         |
-- +--------+------------+
 

-- Total marks city wise
SELECT city, SUM(marks)
FROM student
GROUP BY city;
-- Output:
-- +--------+------------+
-- | city   | SUM(marks) |
-- +--------+------------+
-- | Delhi  | 183        |
-- | Mumbai | 135        |
-- | Pune   | 252        |
-- +--------+------------+


-- Cities having more than 2 students
SELECT city, COUNT(*)
FROM student
GROUP BY city
HAVING COUNT(*) > 2;
-- Output:
-- +------+----------+
-- | city | COUNT(*) |
-- +------+----------+
-- | Pune | 3        |
-- +------+----------+


-- Cities with average marks above 80
SELECT city, AVG(marks)
FROM student
GROUP BY city
HAVING AVG(marks) > 80;
-- Output:
-- +--------+------------+
-- | city   | AVG(marks) |
-- +--------+------------+
-- | Delhi  | 91.5000    |
-- | Pune   | 84.0000    |
-- +--------+------------+


-- Group by + Order by
SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks) DESC;
-- Output:
-- +--------+------------+
-- | city   | AVG(marks) |
-- +--------+------------+
-- | Delhi  | 91.5000    |
-- | Pune   | 84.0000    |
-- | Mumbai | 67.5000    |
-- +--------+------------+


-- Update marks
UPDATE student
SET marks = 90
WHERE id = 1;
SELECT * FROM student;
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 1  | Akash | 20  | Pune   | 90    |
-- | 2  | Rahul | 19  | Mumbai | 70    |
-- | 3  | Priya | 21  | Pune   | 92    |
-- | 4  | Sneha | 22  | Delhi  | 88    |
-- | 5  | Amit  | 18  | Mumbai | 65    |
-- | 6  | Neha  | 20  | Delhi  | 95    |
-- | 7  | Rohan | 23  | Pune   | 75    |
-- +----+-------+-----+--------+-------+


-- Update city
UPDATE student
SET city = 'Nashik'
WHERE id = 2;
SELECT * FROM student;
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 1  | Akash | 20  | Pune   | 90    |
-- | 2  | Rahul | 19  | Nashik | 70    |
-- | 3  | Priya | 21  | Pune   | 92    |
-- | 4  | Sneha | 22  | Delhi  | 88    |
-- | 5  | Amit  | 18  | Mumbai | 65    |
-- | 6  | Neha  | 20  | Delhi  | 95    |
-- | 7  | Rohan | 23  | Pune   | 75    |
-- +----+-------+-----+--------+-------+


-- Delete one record
DELETE FROM student
WHERE id = 5;
SELECT * FROM student;
-- Output:
-- +----+-------+-----+--------+-------+
-- | id | name  | age | city   | marks |
-- +----+-------+-----+--------+-------+
-- | 1  | Akash | 20  | Pune   | 90    |
-- | 2  | Rahul | 19  | Nashik | 70    |
-- | 3  | Priya | 21  | Pune   | 92    |
-- | 4  | Sneha | 22  | Delhi  | 88    |
-- | 6  | Neha  | 20  | Delhi  | 95    |
-- | 7  | Rohan | 23  | Pune   | 75    |
-- +----+-------+-----+--------+-------+


-- Add new column
ALTER TABLE student
ADD email VARCHAR(100);
DESC student;
-- Output:
-- +-------+--------------+------+-----+---------+-------+
-- | Field | Type         | Null | Key | Default | Extra |
-- +-------+--------------+------+-----+---------+-------+
-- | id    | int          | NO   | PRI | NULL    |       |
-- | name  | varchar(50)  | YES  |     | NULL    |       |
-- | age   | int          | YES  |     | NULL    |       |
-- | city  | varchar(20)  | YES  |     | NULL    |       |
-- | marks | int          | YES  |     | NULL    |       |
-- | email | varchar(100) | YES  |     | NULL    |       |
-- +-------+--------------+------+-----+---------+-------+


-- Modify datatype
ALTER TABLE student
MODIFY email VARCHAR(150);
DESC student;
-- Output:
-- +-------+--------------+------+-----+---------+-------+
-- | Field | Type         | Null | Key | Default | Extra |
-- +-------+--------------+------+-----+---------+-------+
-- | id    | int          | NO   | PRI | NULL    |       |
-- | name  | varchar(50)  | YES  |     | NULL    |       |
-- | age   | int          | YES  |     | NULL    |       |
-- | city  | varchar(20)  | YES  |     | NULL    |       |
-- | marks | int          | YES  |     | NULL    |       |
-- | email | varchar(150) | YES  |     | NULL    |       |
-- +-------+--------------+------+-----+---------+-------+


-- Rename column
ALTER TABLE student
RENAME COLUMN email TO student_email;
DESC student;
-- Output:
-- +---------------+--------------+------+-----+---------+-------+
-- | Field         | Type         | Null | Key | Default | Extra |
-- +---------------+--------------+------+-----+---------+-------+
-- | id            | int          | NO   | PRI | NULL    |       |
-- | name          | varchar(50)  | YES  |     | NULL    |       |
-- | age           | int          | YES  |     | NULL    |       |
-- | city          | varchar(20)  | YES  |     | NULL    |       |
-- | marks         | int          | YES  |     | NULL    |       |
-- | student_email | varchar(150) | YES  |     | NULL    |       |
-- +---------------+--------------+------+-----+---------+-------+


-- Drop column
ALTER TABLE student
DROP COLUMN student_email;
DESC student;
-- Output:
-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | NO   | PRI | NULL    |       |
-- | name  | varchar(50) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- | city  | varchar(20) | YES  |     | NULL    |       |
-- | marks | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+


-- Rename table
RENAME TABLE student TO students;
SHOW TABLES;
-- Output:
-- +------------------+
-- | Tables_in_college|
-- +------------------+
-- | students         |
-- +------------------+


-- Rename back
RENAME TABLE students TO student;
SHOW TABLES;
-- Output:
-- +------------------+
-- | Tables_in_college|
-- +------------------+
-- | student          |
-- +------------------+


-- Truncate table
TRUNCATE TABLE student;
SELECT * FROM student;
-- Output:
-- Empty set (0 rows)

-- +----+------+-----+------+-------+
-- | id | name | age | city | marks |
-- +----+------+-----+------+-------+
-- +----+------+-----+------+-------+


-- Drop table
DROP TABLE student;
SHOW TABLES;
-- Output:
-- Empty set


-- Drop database
DROP DATABASE college;
-- Output:
-- Query OK, 0 rows affected
