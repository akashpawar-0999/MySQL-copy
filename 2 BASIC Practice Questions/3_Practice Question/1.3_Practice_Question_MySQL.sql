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

-- Find all even roll numbers
SELECT rollno
FROM student
WHERE rollno % 2 = 0;

-- Output:
-- +--------+
-- | rollno |
-- +--------+
-- | 102    |
-- | 104    |
-- | 106    |
-- +--------+


-- Display names of students having even roll numbers
-- YOU CAN DIRECTLY RUN THIS ALSO TO GET OUTPUT 
SELECT name, rollno
FROM student
WHERE rollno % 2 = 0;

-- Output:
-- +---------+--------+
-- | name    | rollno |
-- +---------+--------+
-- | bhumika | 102    |
-- | dhruv   | 104    |
-- | farah   | 106    |
-- +---------+--------+

------------------------ SUB QUERY METHOD ------------------------

-- Subquery finds even roll numbers and outer query returns student names
SELECT name, rollno
FROM student
WHERE rollno IN
(
    SELECT rollno
    FROM student
    WHERE rollno % 2 = 0
);

-- Output:
-- +---------+--------+
-- | name    | rollno |
-- +---------+--------+
-- | bhumika | 102    |
-- | dhruv   | 104    |
-- | farah   | 106    |
-- +---------+--------+
