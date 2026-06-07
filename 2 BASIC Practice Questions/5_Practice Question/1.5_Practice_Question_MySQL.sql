CREATE DATABASE Company;
USE Company;

CREATE TABLE employee(
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);

INSERT INTO employee VALUES
(101,'Akash',45000,'HR'),
(102,'Rohan',55000,'IT'),
(103,'Priya',50000,'Sales'),
(104,'Neha',70000,'IT'),
(105,'Karan',65000,'IT'),
(106,'Simran',48000,'HR');

------------------------ NORMAL METHOD ------------------------

-- Find employees from IT department
SELECT *
FROM employee
WHERE department = 'IT';

-- Output:
-- +--------+----------+--------+------------+
-- | emp_id | emp_name | salary | department |
-- +--------+----------+--------+------------+
-- | 102    | Rohan    | 55000  | IT         |
-- | 104    | Neha     | 70000  | IT         |
-- | 105    | Karan    | 65000  | IT         |
-- +--------+----------+--------+------------+


-- Find highest salary among IT employees
-- YOU CAN DIRECTLY RUN THIS ALSO TO GET OUTPUT 
SELECT MAX(salary) AS highest_salary
FROM employee
WHERE department = 'IT';

-- Output:
-- +----------------+
-- | highest_salary |
-- +----------------+
-- | 70000          |
-- +----------------+

------------------------ SUB QUERY METHOD ------------------------

-- Subquery creates a list of IT employees and outer query finds highest salary
SELECT MAX(salary) AS highest_salary
FROM
(
    SELECT *
    FROM employee
    WHERE department = 'IT'
) AS ITEmployees;

-- Output:
-- +----------------+
-- | highest_salary |
-- +----------------+
-- | 70000          |
-- +----------------+
