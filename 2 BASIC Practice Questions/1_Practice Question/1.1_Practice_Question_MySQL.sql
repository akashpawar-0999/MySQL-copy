CREATE DATABASE XYZ_Company ;       -- database created 
USE XYZ_Company ;                   -- operations will be on created database 

CREATE TABLE Employee (             -- creating Employee Table 
	id INT ,                        -- create INT Type id variable
    name VARCHAR (50),              -- create VARCHAR Type name variable
    salary INT                      -- create INT Type salary variable
);

SHOW TABLES ;                       -- shows all tables ( operation )

-- OUTPUT : 
-- +------------------------+
-- | Tables_in_xyz_company  |
-- +------------------------+
-- | employee               |
-- +------------------------+


DESC Employee ;                     -- describing Empolyee Table ( operation )

-- OUTPUT : 
-- +--------+-------------+------+-----+---------+-------+
-- | Field  | Type        | Null | Key | Default | Extra |
-- +--------+-------------+------+-----+---------+-------+
-- | id     | int         | YES  |     | NULL    |       |
-- | name   | varchar(50) | YES  |     | NULL    |       |
-- | salary | int         | YES  |     | NULL    |       |
-- +--------+-------------+------+-----+---------+-------+


INSERT INTO Employee (id,name,salary) VALUES    -- insert data in Employee Table
(1,"ADAM",25000),                               -- 1st Data
(2,"BOB",30000),                                -- 2nd Data
(3,"Casey",40000) ;                             -- 3rd Data

SELECT * FROM Employee ;                        -- Show Updated Table 

-- OUTPUT : 
-- +----+-------+--------+
-- | id | name  | salary |
-- +----+-------+--------+
-- | 1  | ADAM  | 25000  |
-- | 2  | BOB   | 30000  |
-- | 3  | Casey | 40000  |
-- +----+-------+--------+