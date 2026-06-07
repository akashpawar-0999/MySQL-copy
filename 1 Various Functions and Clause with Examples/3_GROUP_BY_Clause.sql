-- GROUP BY Clause :
/* The GROUP BY clause is used to group rows that have the same values in specified columns.
   It is often used with aggregate functions such as:
   COUNT(), SUM(), AVG(), MAX(), MIN()
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


-- Example 1: Count Employees in Each Department
SELECT department, COUNT(*)
FROM employee
GROUP BY department;

-- Output:
-- +------------+----------+
-- | department | COUNT(*) |
-- +------------+----------+
-- | HR         |    2     |
-- | IT         |    3     |
-- | Sales      |    2     |
-- +------------+----------+


-- Example 2: Average Salary in Each Department
SELECT department, AVG(salary)
FROM employee
GROUP BY department;

-- Output:
-- +------------+-------------+
-- | department | AVG(salary) |
-- +------------+-------------+
-- | HR         | 42500.0000  |
-- | IT         | 55000.0000  |
-- | Sales      | 36500.0000  |
-- +------------+-------------+


-- Example 3: Highest Salary in Each Department
SELECT department, MAX(salary)
FROM employee
GROUP BY department;

-- Output:
-- +------------+-------------+
-- | department | MAX(salary) |
-- +------------+-------------+
-- | HR         |   45000     |
-- | IT         |   60000     |
-- | Sales      |   38000     |
-- +------------+-------------+


-- Example 4: Lowest Salary in Each Department
SELECT department, MIN(salary)
FROM employee
GROUP BY department;

-- Output:
-- +------------+-------------+
-- | department | MIN(salary) |
-- +------------+-------------+
-- | HR         |   40000     |
-- | IT         |   50000     |
-- | Sales      |   35000     |
-- +------------+-------------+


-- Example 5: Total Salary in Each Department
SELECT department, SUM(salary)
FROM employee
GROUP BY department;

-- Output:
-- +------------+-------------+
-- | department | SUM(salary) |
-- +------------+-------------+
-- | HR         |    85000    |
-- | IT         |   165000    |
-- | Sales      |    73000    |
-- +------------+-------------+


-- Example 6: Count Employees in Each City
SELECT city, COUNT(*)
FROM employee
GROUP BY city;

-- Output:
-- +--------+----------+
-- | city   | COUNT(*) |
-- +--------+----------+
-- | Delhi  |    2     |
-- | Mumbai |    2     |
-- | Pune   |    3     |
-- +--------+----------+


-- Example 7: Multiple Columns in GROUP BY
SELECT city, department, COUNT(*)
FROM employee
GROUP BY city, department;

-- Output:
-- +--------+------------+----------+
-- | city   | department | COUNT(*) |
-- +--------+------------+----------+
-- | Delhi  | Sales      |    2     |
-- | Mumbai | HR         |    1     |
-- | Mumbai | IT         |    1     |
-- | Pune   | HR         |    1     |
-- | Pune   | IT         |    2     |
-- +--------+------------+----------+


-- Example 8: GROUP BY with WHERE
SELECT department, COUNT(*)
FROM employee
WHERE salary > 40000
GROUP BY department;

-- Output:
-- +------------+----------+
-- | department | COUNT(*) |
-- +------------+----------+
-- | HR         |    1     |
-- | IT         |    3     |
-- +------------+----------+


-- Example 9: GROUP BY with ORDER BY
SELECT department, AVG(salary)
FROM employee
GROUP BY department
ORDER BY AVG(salary) DESC;

-- Output:
-- +------------+-------------+
-- | department | AVG(salary) |
-- +------------+-------------+
-- | IT         | 55000.0000  |
-- | HR         | 42500.0000  |
-- | Sales      | 36500.0000  |
-- +------------+-------------+