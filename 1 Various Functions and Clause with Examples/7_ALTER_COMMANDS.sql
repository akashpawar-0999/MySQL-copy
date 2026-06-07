-- ALTER COMMANDS

CREATE DATABASE college;
USE college;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);
DESC student;
-- Output:
-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | NO   | PRI | NULL    |       |
-- | name  | varchar(50) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+


-- ADD COLUMN

ALTER TABLE student
ADD COLUMN email VARCHAR(100);
DESC student;
-- Output:
-- +-------+--------------+------+-----+---------+-------+
-- | Field | Type         | Null | Key | Default | Extra |
-- +-------+--------------+------+-----+---------+-------+
-- | id    | int          | NO   | PRI | NULL    |       |
-- | name  | varchar(50)  | YES  |     | NULL    |       |
-- | age   | int          | YES  |     | NULL    |       |
-- | email | varchar(100) | YES  |     | NULL    |       |
-- +-------+--------------+------+-----+---------+-------+


-- MODIFY COLUMN

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
-- | email | varchar(150) | YES  |     | NULL    |       |
-- +-------+--------------+------+-----+---------+-------+


-- CHANGE COLUMN

ALTER TABLE student
CHANGE COLUMN name student_name VARCHAR(100);
DESC student;

-- Output:
-- +--------------+--------------+------+-----+---------+-------+
-- | Field        | Type         | Null | Key | Default | Extra |
-- +--------------+--------------+------+-----+---------+-------+
-- | id           | int          | NO   | PRI | NULL    |       |
-- | student_name | varchar(100) | YES  |     | NULL    |       |
-- | age          | int          | YES  |     | NULL    |       |
-- | email        | varchar(150) | YES  |     | NULL    |       |
-- +--------------+--------------+------+-----+---------+-------+


-- DROP COLUMN

ALTER TABLE student
DROP COLUMN email;
DESC student;

-- Output:
-- +--------------+--------------+------+-----+---------+-------+
-- | Field        | Type         | Null | Key | Default | Extra |
-- +--------------+--------------+------+-----+---------+-------+
-- | id           | int          | NO   | PRI | NULL    |       |
-- | student_name | varchar(100) | YES  |     | NULL    |       |
-- | age          | int          | YES  |     | NULL    |       |
-- +--------------+--------------+------+-----+---------+-------+


-- RENAME TABLE

ALTER TABLE student
RENAME TO students;
SHOW TABLES;

-- Output:
-- +------------------+
-- | Tables_in_college|
-- +------------------+
-- | students         |
-- +------------------+


-- RENAME BACK

ALTER TABLE students
RENAME TO student;
SHOW TABLES;

-- Output:
-- +------------------+
-- | Tables_in_college|
-- +------------------+
-- | student          |
-- +------------------+