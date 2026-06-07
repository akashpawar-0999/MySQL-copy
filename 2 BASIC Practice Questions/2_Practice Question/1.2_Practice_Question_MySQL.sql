CREATE DATABASE College;
USE College;

CREATE TABLE student(
    rollno INT,                 
    name VARCHAR(50),
    marks INT
);

INSERT INTO student VALUES
(101,'anil',78),
(102,'bhumika',93),
(103,'chetan',85),
(104,'dhruv',96),
(105,'emanuel',92),
(106,'farah',82);

------------------------ NORMAL METHOD ------------------------

-- Find Average Marks
SELECT AVG(marks) AS avg_marks
FROM student;

-- Output:
-- +-----------+
-- | avg_marks |
-- +-----------+
-- | 87.6667   |
-- +-----------+


-- Get Students Above Average

SELECT name, marks
FROM student
WHERE marks > 87.67;

-- Output:
-- +---------+-------+
-- | name    | marks |
-- +---------+-------+
-- | bhumika | 93    |
-- | dhruv   | 96    |
-- | emanuel | 92    |
-- +---------+-------+

------------------------ SUB QUERY METHOD ------------------------

-- Subquery finds average marks and outer query returns students above average
SELECT name, marks
FROM student
WHERE marks > ( SELECT AVG(marks) FROM student );

-- Output:
-- +---------+-------+
-- | name    | marks |
-- +---------+-------+
-- | bhumika | 93    |
-- | dhruv   | 96    |
-- | emanuel | 92    |
-- +---------+-------+
