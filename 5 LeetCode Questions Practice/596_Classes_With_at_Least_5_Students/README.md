# 596. Classes With at Least 5 Students

**Difficulty:** Easy

---

Table: `Courses`

| Column Name | Type    |
|-------------|---------|
| student     | varchar |
| class       | varchar |

`(student, class)` is the primary key for this table.  
Each row of this table indicates the name of a student and the class in which they are enrolled.

Write a solution to find all the classes that have at least five students.

Return the result table in any order.

---

**Example 1:**

Input: `Courses` table:

| student | class    |
|---------|----------|
| A       | Math     |
| B       | English  |
| C       | Math     |
| D       | Biology  |
| E       | Math     |
| F       | Computer |
| G       | Math     |
| H       | Math     |
| I       | Math     |

Output:

| class |
|-------|
| Math  |

**Explanation:** Math has 6 students, so we include it. All other classes have fewer than 5 students.

---

**Runtime :** 334 ms | **Beats :** 61.76%