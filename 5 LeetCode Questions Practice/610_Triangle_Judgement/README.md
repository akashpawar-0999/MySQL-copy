# 610. Triangle Judgement

**Difficulty:** Easy

---

Table: `Triangle`

| Column Name | Type |
|-------------|------|
| x           | int  |
| y           | int  |
| z           | int  |

In SQL, `(x, y, z)` is the primary key column for this table.  
Each row of this table contains the lengths of three line segments.

Write a solution to report for every three line segments whether they can form a triangle.

Return the result table in any order.

---

**Example 1:**

Input: `Triangle` table:

| x  | y  | z  |
|----|----|----|
| 13 | 15 | 30 |
| 10 | 20 | 15 |

Output:

| x  | y  | z  | triangle |
|----|----|----|----------|
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |

---

**Runtime :** 286 ms | **Beats :** 86.64%