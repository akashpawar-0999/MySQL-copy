Create table If Not Exists Employee (Id int, Salary int)
Truncate table Employee
insert into Employee (id, salary) values ('1', '100')
insert into Employee (id, salary) values ('2', '200')
insert into Employee (id, salary) values ('3', '300')

-- Solution 

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;                         -- Convert N to OFFSET
    RETURN (
        SELECT DISTINCT salary             -- Remove duplicates
        FROM Employee
        ORDER BY salary DESC               -- Highest to lowest
        LIMIT 1 OFFSET N                   -- Get Nth highest
    );
END
