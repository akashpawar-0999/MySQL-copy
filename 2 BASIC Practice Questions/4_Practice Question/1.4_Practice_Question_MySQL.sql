CREATE DATABASE College;
USE College;

CREATE TABLE student(
    rollno INT,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

INSERT INTO student VALUES
(101,'anil',78,'Pune'),
(102,'bhumika',93,'Mumbai'),
(103,'chetan',85,'Mumbai'),
(104,'dhruv',96,'Delhi'),
(105,'emanuel',92,'Delhi'),
(106,'farah',82,'Delhi');

------------------------ NORMAL METHOD ------------------------

-- Find students from Delhi
SELECT *
FROM student
WHERE city = 'Delhi';

-- Output:
-- +--------+---------+-------+-------+
-- | rollno | name    | marks | city  |
-- +--------+---------+-------+-------+
-- | 104    | dhruv   | 96    | Delhi |
-- | 105    | emanuel | 92    | Delhi |
-- | 106    | farah   | 82    | Delhi |
-- +--------+---------+-------+-------+

-- Find maximum marks among Delhi students
-- YOU CAN DIRECTLY RUN THIS ALSO TO GET OUTPUT 
SELECT MAX(marks) AS max_marks
FROM student
WHERE city = 'Delhi';

-- Output:
-- +-----------+
-- | max_marks |
-- +-----------+
-- | 96        |
-- +-----------+

------------------------ SUB QUERY METHOD ------------------------

-- Subquery creates a list of Delhi students and outer query finds maximum marks
SELECT MAX(marks) AS max_marks
FROM
(
    SELECT *
    FROM student
    WHERE city = 'Delhi'
) AS DelhiStudents;

-- Output:
-- +-----------+
-- | max_marks |
-- +-----------+
-- | 96        |
-- +-----------+

-- If we dont use AS DelhiStudents After Sub Querry,
-- it will give error as "Every derived table must have its own alias" !!
-- A subquery in the FROM clause behaves like a temporary table, and every table must have a name. 
-- That's why AS DelhiStudents is required.
