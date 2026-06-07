-- WHERE Clause :
/* The WHERE clause is used to filter records based on a condition.
   It returns only those rows that satisfy the specified condition.
*/

CREATE DATABASE college;

USE college;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20)
);

INSERT INTO student VALUES
(1,'Akash',20,'Pune'),
(2,'Rahul',19,'Mumbai'),
(3,'Priya',21,'Pune'),
(4,'Sneha',22,'Delhi'),
(5,'Amit',18,'Mumbai');


-- Example 1 : Select students whose age is greater than 20
SELECT *
FROM student
WHERE age > 20;

-- Output:
-- +----+--------+------+-------+
-- | id | name   | age  | city  |
-- +----+--------+------+-------+
-- | 3  | Priya  | 21   | Pune  |
-- | 4  | Sneha  | 22   | Delhi |
-- +----+--------+------+-------+


-- Example 2 : Select student whose id is 1
SELECT *
FROM student
WHERE id = 1;

-- Output:
-- +----+-------+------+------+
-- | id | name  | age  | city |
-- +----+-------+------+------+
-- | 1  | Akash | 20   | Pune |
-- +----+-------+------+------+


-- Example 3 : Using AND Operator
SELECT *
FROM student
WHERE age > 18 AND city = 'Pune';

-- Output:
-- +----+--------+------+------+
-- | id | name   | age  | city |
-- +----+--------+------+------+
-- | 1  | Akash  | 20   | Pune |
-- | 3  | Priya  | 21   | Pune |
-- +----+--------+------+------+


-- Example 4 : Using OR Operator
SELECT *
FROM student
WHERE city = 'Mumbai' OR city = 'Delhi';

-- Output:
-- +----+--------+------+--------+
-- | id | name   | age  | city   |
-- +----+--------+------+--------+
-- | 2  | Rahul  | 19   | Mumbai |
-- | 4  | Sneha  | 22   | Delhi  |
-- | 5  | Amit   | 18   | Mumbai |
-- +----+--------+------+--------+


-- Example 5 : Using NOT Operator
SELECT *
FROM student
WHERE NOT city = 'Pune';

-- Output:
-- +----+--------+------+--------+
-- | id | name   | age  | city   |
-- +----+--------+------+--------+
-- | 2  | Rahul  | 19   | Mumbai |
-- | 4  | Sneha  | 22   | Delhi  |
-- | 5  | Amit   | 18   | Mumbai |
-- +----+--------+------+--------+


-- Example 6 : Using >= Operator
SELECT *
FROM student
WHERE age >= 21;

-- Output:
-- +----+--------+------+-------+
-- | id | name   | age  | city  |
-- +----+--------+------+-------+
-- | 3  | Priya  | 21   | Pune  |
-- | 4  | Sneha  | 22   | Delhi |
-- +----+--------+------+-------+


-- Example 7 : Using BETWEEN
SELECT *
FROM student
WHERE age BETWEEN 19 AND 21;

-- Output:
-- +----+--------+------+--------+
-- | id | name   | age  | city   |
-- +----+--------+------+--------+
-- | 1  | Akash  | 20   | Pune   |
-- | 2  | Rahul  | 19   | Mumbai |
-- | 3  | Priya  | 21   | Pune   |
-- +----+--------+------+--------+


-- Example 8 : Using IN
SELECT *
FROM student
WHERE city IN ('Pune','Delhi');

-- Output:
-- +----+--------+------+-------+
-- | id | name   | age  | city  |
-- +----+--------+------+-------+
-- | 1  | Akash  | 20   | Pune  |
-- | 3  | Priya  | 21   | Pune  |
-- | 4  | Sneha  | 22   | Delhi |
-- +----+--------+------+-------+


-- Example 9 : Using LIKE
SELECT *
FROM student
WHERE name LIKE 'A%';

-- Output:
-- +----+-------+------+--------+
-- | id | name  | age  | city   |
-- +----+-------+------+--------+
-- | 1  | Akash | 20   | Pune   |
-- | 5  | Amit  | 18   | Mumbai |
-- +----+-------+------+--------+
