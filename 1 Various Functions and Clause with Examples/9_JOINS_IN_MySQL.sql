-- JOINS IN SQL (ALL TYPES)

CREATE DATABASE college;
USE college;

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE course(
    student_id INT,
    course VARCHAR(50)
);

INSERT INTO student VALUES
(101,'adam'),
(102,'bob'),
(103,'casey'),
(104,'john'),
(106,'emma');

SELECT * FROM student;
-- Output:
-- +------------+-------+
-- | student_id | name  |
-- +------------+-------+
-- | 101        | adam  |
-- | 102        | bob   |
-- | 103        | casey |
-- | 104        | john  |
-- | 106        | emma  |
-- +------------+-------+


INSERT INTO course VALUES
(102,'english'),
(105,'math'),
(103,'science'),
(107,'computer science');

SELECT * FROM course;
-- Output:
-- +------------+------------------+
-- | student_id | course           |
-- +------------+------------------+
-- | 102        | english          |
-- | 105        | math             |
-- | 103        | science          |
-- | 107        | computer science |
-- +------------+------------------+


-- 1. INNER JOIN

SELECT *
FROM student
INNER JOIN course
ON student.student_id = course.student_id;

-- Output:
-- +------------+-------+------------+---------+
-- | student_id | name  | student_id | course  |
-- +------------+-------+------------+---------+
-- | 102        | bob   | 102        | english |
-- | 103        | casey | 103        | science |
-- +------------+-------+------------+---------+

-- Explanation:
-- Only matching records from both tables.
-- Common IDs: 102, 103


-- 2. LEFT JOIN

SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.student_id;

-- Output:
-- +------------+-------+------------+---------+
-- | student_id | name  | student_id | course  |
-- +------------+-------+------------+---------+
-- | 101        | adam  | NULL       | NULL    |
-- | 102        | bob   | 102        | english |
-- | 103        | casey | 103        | science |
-- | 104        | john  | NULL       | NULL    |
-- | 106        | emma  | NULL       | NULL    |
-- +------------+-------+------------+---------+

-- Explanation:
-- All records from left table (student)
-- Matching records from course
-- Unmatched records get NULL


-- 3. RIGHT JOIN

SELECT *
FROM student
RIGHT JOIN course
ON student.student_id = course.student_id;

-- Output:
-- +------------+-------+------------+------------------+
-- | student_id | name  | student_id | course           |
-- +------------+-------+------------+------------------+
-- | 102        | bob   | 102        | english          |
-- | NULL       | NULL  | 105        | math             |
-- | 103        | casey | 103        | science          |
-- | NULL       | NULL  | 107        | computer science |
-- +------------+-------+------------+------------------+

-- Explanation:
-- All records from right table (course)
-- Matching records from student
-- Unmatched records get NULL


-- 4. FULL OUTER JOIN

-- MySQL does not directly support FULL OUTER JOIN.
-- We use UNION of LEFT JOIN and RIGHT JOIN.

SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.student_id
UNION
SELECT *
FROM student
RIGHT JOIN course
ON student.student_id = course.student_id;

-- Output:
-- +------------+-------+------------+------------------+
-- | student_id | name  | student_id | course           |
-- +------------+-------+------------+------------------+
-- | 101        | adam  | NULL       | NULL             |
-- | 102        | bob   | 102        | english          |
-- | 103        | casey | 103        | science          |
-- | 104        | john  | NULL       | NULL             |
-- | 106        | emma  | NULL       | NULL             |
-- | NULL       | NULL  | 105        | math             |
-- | NULL       | NULL  | 107        | computer science |
-- +------------+-------+------------+------------------+
-- Explanation:
-- All matching records
-- All non-matching records from student
-- All non-matching records from course


-- 5. LEFT EXCLUSIVE JOIN
-- Records present only in LEFT table (student)
-- and NOT present in RIGHT table (course)

SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.student_id
WHERE course.student_id IS NULL;

-- Output:
-- +------------+------+------------+--------+
-- | student_id | name | student_id | course |
-- +------------+------+------------+--------+
-- | 101        | adam | NULL       | NULL   |
-- | 104        | john | NULL       | NULL   |
-- | 106        | emma | NULL       | NULL   |
-- +------------+------+------------+--------+
-- Explanation:
-- IDs present only in student table:
-- 101, 104, 106


-- 6. RIGHT EXCLUSIVE JOIN
-- Records present only in RIGHT table (course)
-- and NOT present in LEFT table (student)

SELECT *
FROM student
RIGHT JOIN course
ON student.student_id = course.student_id
WHERE student.student_id IS NULL;

-- Output:
-- +------------+------+------------+------------------+
-- | student_id | name | student_id | course           |
-- +------------+------+------------+------------------+
-- | NULL       | NULL | 105        | math             |
-- | NULL       | NULL | 107        | computer science |
-- +------------+------+------------+------------------+
-- Explanation:
-- IDs present only in course table:
-- 105, 107


-- 7. FULL EXCLUSIVE JOIN
-- Records that are present in ONLY one table
-- (excluding common records)

SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.student_id
WHERE course.student_id IS NULL
UNION
SELECT *
FROM student
RIGHT JOIN course
ON student.student_id = course.student_id
WHERE student.student_id IS NULL;

-- Output:
-- +------------+------+------------+------------------+
-- | student_id | name | student_id | course           |
-- +------------+------+------------+------------------+
-- | 101        | adam | NULL       | NULL             |
-- | 104        | john | NULL       | NULL             |
-- | 106        | emma | NULL       | NULL             |
-- | NULL       | NULL | 105        | math             |
-- | NULL       | NULL | 107        | computer science |
-- +------------+------+------------+------------------+

-- Explanation:
-- Excludes common IDs: 102, 103
-- Includes only unmatched records


-- 8. SELF JOIN

CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee VALUES
(1,'Akash',3),
(2,'Rahul',3),
(3,'Priya',NULL),
(4,'Sneha',3),
(5,'Amit',1);

SELECT * FROM employee;

-- Output:
-- +--------+----------+------------+
-- | emp_id | emp_name | manager_id |
-- +--------+----------+------------+
-- | 1      | Akash    | 3          |
-- | 2      | Rahul    | 3          |
-- | 3      | Priya    | NULL       |
-- | 4      | Sneha    | 3          |
-- | 5      | Amit     | 1          |
-- +--------+----------+------------+


-- SELF JOIN
-- Find employee and their manager
SELECT
E.emp_id,						-- emp_id column will be returned 
E.emp_name AS Employee,			-- emp_name column will be returned as Employee
M.emp_name AS Manager			-- emp_name column will be returned as Manager 
FROM employee E					-- E is an alias (short name) for the employee table.
LEFT JOIN employee M			-- M is an alias (short name) for the employee table.
ON E.manager_id = M.emp_id;		-- This is the matching condition ( Employee's manager_id = Manager's emp_id )

-- Output:
-- +--------+----------+---------+
-- | emp_id | Employee | Manager |
-- +--------+----------+---------+
-- | 1      | Akash    | Priya   |
-- | 2      | Rahul    | Priya   |
-- | 3      | Priya    | NULL    |
-- | 4      | Sneha    | Priya   |
-- | 5      | Amit     | Akash   |
-- +--------+----------+---------+
-- Explanation:
-- Same table is used twice.
-- E = Employee Table
-- M = Manager Table
-- MySQL treats them as two separate tables.


/*---------------Visual Understanding--------------
Priya (3)
│
├── Akash (1)
│     └── Amit (5)
│
├── Rahul (2)
│
└── Sneha (4)
*/