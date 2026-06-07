-- CASCADE EXAMPLE (ON DELETE & ON UPDATE)

CREATE DATABASE college;
USE college;

-- Parent Table
CREATE TABLE department(
    deptid INT PRIMARY KEY,
    deptname VARCHAR(50)
);

-- Child Table
CREATE TABLE employee(
    empid INT PRIMARY KEY,
    empname VARCHAR(50),
    deptid INT,
    FOREIGN KEY(deptid)
    REFERENCES department(deptid)
    ON DELETE CASCADE					-- If a department is deleted from the parent table, 
	-- ---------------------------->	-- all employees belonging to that department are automatically deleted.
    ON UPDATE CASCADE					-- If the department ID changes in the parent table, 
    -- ---------------------------->	-- it automatically changes in the child table.
);

-- Insert data into Parent Table
INSERT INTO department VALUES
(101,'IT'),
(102,'HR');

SELECT * FROM department;

-- Output:
-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- | 101    | IT       |
-- | 102    | HR       |
-- +--------+----------+

-- Insert data into Child Table
INSERT INTO employee VALUES
(1,'Akash',101),
(2,'Rahul',101),
(3,'Priya',102);

SELECT * FROM employee;

-- Output:
-- +-------+---------+--------+
-- | empid | empname | deptid |
-- +-------+---------+--------+
-- | 1     | Akash   | 101    |
-- | 2     | Rahul   | 101    |
-- | 3     | Priya   | 102    |
-- +-------+---------+--------+


-- USE OF ( ON UPDATE CASCADE )

UPDATE department
SET deptid = 201
WHERE deptid = 101;

SELECT * FROM department;

-- Output:
-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- | 201    | IT       |
-- | 102    | HR       |
-- +--------+----------+

SELECT * FROM employee;

-- Output:
-- +-------+---------+--------+
-- | empid | empname | deptid |
-- +-------+---------+--------+
-- | 1     | Akash   | 201    |
-- | 2     | Rahul   | 201    |
-- | 3     | Priya   | 102    |
-- +-------+---------+--------+

-- Notice:
-- Child table deptid automatically changed
-- from 101 to 201


-- USE OF ( ON DELETE CASCADE )

DELETE FROM department
WHERE deptid = 201;

SELECT * FROM department;

-- Output:
-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- | 102    | HR       |
-- +--------+----------+

SELECT * FROM employee;

-- Output:
-- +-------+---------+--------+
-- | empid | empname | deptid |
-- +-------+---------+--------+
-- | 3     | Priya   | 102    |
-- +-------+---------+--------+

-- Notice:
-- Employee records having deptid = 201
-- were automatically deleted.
