-- Aggregate Functions :
-- Aggregate Functions perform calculations on a group of rows and return a single value as the result.

CREATE DATABASE collage;

USE collage;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

INSERT INTO student (id, name, age) VALUES
(1, 'Akash', 20),
(2, 'Rahul', 19),
(3, 'Priya', 21),
(4, 'Sneha', 22);


-- 1. COUNT() : Counts the number of rows.
SELECT COUNT(*) FROM student;

-- Output:
-- +----------+
-- | COUNT(*) |
-- +----------+
-- |    4     |
-- +----------+


-- 2. MAX() : Returns the largest value in a column.
SELECT MAX(age) FROM student;

-- Output:
-- +----------+
-- | MAX(age) |
-- +----------+
-- |    22    |
-- +----------+


-- 3. MIN() : Returns the smallest value in a column.
SELECT MIN(age) FROM student;

-- Output:
-- +----------+
-- | MIN(age) |
-- +----------+
-- |    19    |
-- +----------+


-- 4. SUM() : Adds all values of a numeric column.
SELECT SUM(age) FROM student;

-- Output:
-- +----------+
-- | SUM(age) |
-- +----------+
-- |    82    |
-- +----------+


-- 5. AVG() : Calculates the average value.
SELECT AVG(age) FROM student;

-- Output:
-- +------------+
-- | AVG(age)   |
-- +------------+
-- | 20.5000    |
-- +------------+


-- 7. ROUND() : Rounds a number to specified decimal places.
SELECT ROUND(AVG(age), 2) FROM student;

-- Output:
-- +--------------------+
-- | ROUND(AVG(age), 2) |
-- +--------------------+
-- |       20.50        |
-- +--------------------+


-- 8. FIRST VALUE (Using ORDER BY + LIMIT) : Returns the highest age.
SELECT age
FROM student
ORDER BY age DESC
LIMIT 1;

-- Output:
-- +-----+
-- | age |
-- +-----+
-- | 22  |
-- +-----+


-- 9. GROUP_CONCAT() : Combines multiple row values into one string.
SELECT GROUP_CONCAT(name) FROM student;

-- Output:
-- +--------------------------+
-- | GROUP_CONCAT(name)       |
-- +--------------------------+
-- | Akash,Rahul,Priya,Sneha  |
-- +--------------------------+