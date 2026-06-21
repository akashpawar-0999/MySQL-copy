# 182. Duplicate Emails

**Difficulty:** Easy

---

Table: `Person`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

`id` is the primary key for this table.  
Each row of this table contains an email. The emails will not contain uppercase letters.

Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.

Return the result table in any order.

---

**Example 1:**

Input: `Person` table:

| id | email   |
|----|---------|
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |

Output:

| Email   |
|---------|
| a@b.com |

**Explanation:** a@b.com is repeated two times.

---

**Constraints:**

- The email field is not NULL.
- All emails are in lowercase.

---

**Runtime :** 365 ms | **Beats :** 89.84%