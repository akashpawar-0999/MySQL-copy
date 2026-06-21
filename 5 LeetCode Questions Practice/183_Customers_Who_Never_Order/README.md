# 183. Customers Who Never Order

**Difficulty:** Easy

---

Table: `Customers`

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |

`id` is the primary key for this table.  
Each row of this table indicates the ID and name of a customer.

Table: `Orders`

| Column Name | Type |
|-------------|------|
| id          | int  |
| customerId  | int  |

`id` is the primary key for this table.  
`customerId` is a foreign key of the ID from the `Customers` table.  
Each row of this table indicates the ID of an order and the ID of the customer who ordered it.

Write a solution to find all customers who never order anything.

Return the result table in any order.

---

**Example 1:**

Input: `Customers` table:

| id | name  |
|----|-------|
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |

Input: `Orders` table:

| id | customerId |
|----|------------|
| 1  | 3          |
| 2  | 1          |

Output:

| Customers |
|-----------|
| Henry     |
| Max       |

**Explanation:** Henry and Max never ordered anything.

---

**Runtime :** 559 ms | **Beats :** 75.09%