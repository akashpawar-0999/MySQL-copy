# 1484. Group Sold Products By The Date

**Difficulty:** Easy

---

Table: `Activities`

| Column Name | Type    |
|-------------|---------|
| sell_date   | date    |
| product     | varchar |

There is no primary key for this table. It may contain duplicates.  
Each row of this table contains the product name and the date it was sold in a market.

Write a solution to find for each date the number of different products sold and their names.

The sold products names for each date should be sorted lexicographically.

Return the result table ordered by `sell_date`.

---

**Example 1:**

Input: `Activities` table:

| sell_date  | product    |
|------------|------------|
| 2020-05-30 | Headphone  |
| 2020-06-01 | Pencil     |
| 2020-06-02 | Mask       |
| 2020-05-30 | Basketball |
| 2020-06-01 | Bible      |
| 2020-06-02 | Mask       |
| 2020-05-30 | T-Shirt    |

Output:

| sell_date  | num_sold | products                     |
|------------|----------|------------------------------|
| 2020-05-30 | 3        | Basketball,Headphone,T-Shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |

**Explanation:** For 2020-05-30, sold items were (Headphone, Basketball, T-Shirt) and they are sorted lexicographically. For 2020-06-01, sold items were (Pencil, Bible) and they are sorted lexicographically. For 2020-06-02, the only sold item is Mask.

---

**Runtime :** 444 ms | **Beats :** 87.37%