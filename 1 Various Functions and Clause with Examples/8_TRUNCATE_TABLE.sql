-- TRUNCATE TABLE

-- TRUNCATE is used to delete all rows (data)
-- from a table but keeps the table structure intact.

CREATE DATABASE college;
USE college;

-- Create Table
CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- Insert Records
INSERT INTO student VALUES
(1,'Akash',20),
(2,'Rahul',19),
(3,'Priya',21);

SELECT * FROM student;
-- Output:
-- +----+-------+-----+
-- | id | name  | age |
-- +----+-------+-----+
-- | 1  | Akash | 20  |
-- | 2  | Rahul | 19  |
-- | 3  | Priya | 21  |
-- +----+-------+-----+


-- TRUNCATE TABLE

TRUNCATE TABLE student;
SELECT * FROM student;

-- +----+------+-----+
-- | id | name | age |
-- +----+------+-----+
-- +----+------+-----+

DESC student;

-- Output:
-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | NO   | PRI | NULL    |       |
-- | name  | varchar(50) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+

-- Notice:
-- All records are deleted.
-- Table structure remains unchanged.