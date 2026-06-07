-- HAVING Clause :
/* Similar to WHERE clause, but used after GROUP BY.
   WHERE filters rows before grouping.
   HAVING filters groups after grouping.
*/

CREATE DATABASE company;

USE company;

CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(20),
    city VARCHAR(20),
    salary INT
);

INSERT INTO employee VALUES
(1,'Akash','IT','Pune',50000),
(2,'Rahul','IT','Mumbai',60000),
(3,'Priya','HR','Pune',40000),
(4,'Sneha','HR','Mumbai',45000),
(5,'Amit','IT','Pune',55000),
(6,'Neha','Sales','Delhi',35000),
(7,'Rohan','Sales','Delhi',38000);


-- Example 1 : Departments having more than 2 employees
SELECT department, COUNT(*)
FROM employee
GROUP BY department
HAVING COUNT(*) > 2;

-- Output:
-- +------------+----------+
-- | department | COUNT(*) |
-- +------------+----------+
-- | IT         |    3     |
-- +------------+----------+


-- Example 2 : Departments with average salary greater than 45000
SELECT department, AVG(salary)
FROM employee
GROUP BY department
HAVING AVG(salary) > 45000;

-- Output:
-- +------------+-------------+
-- | department | AVG(salary) |
-- +------------+-------------+
-- | IT         | 55000.0000  |
-- +------------+-------------+


-- Example 3 : Departments whose total salary is greater than 100000
SELECT department, SUM(salary)
FROM employee
GROUP BY department
HAVING SUM(salary) > 100000;

-- Output:
-- +------------+-------------+
-- | department | SUM(salary) |
-- +------------+-------------+
-- | IT         |   165000    |
-- +------------+-------------+


-- Example 4 : Cities having more than 2 employees
SELECT city, COUNT(*)
FROM employee
GROUP BY city
HAVING COUNT(*) > 2;

-- Output:
-- +------+----------+
-- | city | COUNT(*) |
-- +------+----------+
-- | Pune |    3     |
-- +------+----------+


-- Example 5 : Departments with maximum salary above 50000
SELECT department, MAX(salary)
FROM employee
GROUP BY department
HAVING MAX(salary) > 50000;

-- Output:
-- +------------+-------------+
-- | department | MAX(salary) |
-- +------------+-------------+
-- | IT         |   60000     |
-- +------------+-------------+


-- Example 6 : WHERE + GROUP BY + HAVING
SELECT department, COUNT(*)
FROM employee
WHERE salary > 40000
GROUP BY department
HAVING COUNT(*) >= 2;

-- Output:
-- +------------+----------+
-- | department | COUNT(*) |
-- +------------+----------+
-- | IT         |    3     |
-- +------------+----------+