# 1075. Project Employees I

**Difficulty:** Easy

---

Table: `Project`

| Column Name | Type |
|-------------|------|
| project_id  | int  |
| employee_id | int  |

`(project_id, employee_id)` is the primary key for this table.  
`employee_id` is a foreign key referencing the `Employee` table.  
Each row of this table indicates that the employee with `employee_id` is working on the project with `project_id`.

Table: `Employee`

| Column Name      | Type    |
|------------------|---------|
| employee_id      | int     |
| name             | varchar |
| experience_years | int     |

`employee_id` is the primary key for this table.  
It's guaranteed that `experience_years` is not NULL.  
Each row of this table contains information about one employee.

Write a solution to report the average experience years of all the employees for each project, rounded to 2 digits.

Return the result table in any order.

---

**Example 1:**

Input: `Project` table:

| project_id | employee_id |
|------------|-------------|
| 1          | 1           |
| 1          | 2           |
| 1          | 3           |
| 2          | 1           |
| 2          | 4           |

Input: `Employee` table:

| employee_id | name   | experience_years |
|-------------|--------|------------------|
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |

Output:

| project_id | average_years |
|------------|---------------|
| 1          | 2.00          |
| 2          | 2.50          |

**Explanation:** The average experience years for project 1 is (3 + 2 + 1) / 3 = 2.00 and for project 2 is (3 + 2) / 2 = 2.50.

---

**Runtime :** 466 ms | **Beats :** 99.79%