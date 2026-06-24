Create table If Not Exists Prices (product_id int, start_date date, end_date date, price int)
Create table If Not Exists UnitsSold (product_id int, purchase_date date, units int)
Truncate table Prices
insert into Prices (product_id, start_date, end_date, price) values ('1', '2019-02-17', '2019-02-28', '5')
insert into Prices (product_id, start_date, end_date, price) values ('1', '2019-03-01', '2019-03-22', '20')
insert into Prices (product_id, start_date, end_date, price) values ('2', '2019-02-01', '2019-02-20', '15')
insert into Prices (product_id, start_date, end_date, price) values ('2', '2019-02-21', '2019-03-31', '30')
Truncate table UnitsSold
insert into UnitsSold (product_id, purchase_date, units) values ('1', '2019-02-25', '100')
insert into UnitsSold (product_id, purchase_date, units) values ('1', '2019-03-01', '15')
insert into UnitsSold (product_id, purchase_date, units) values ('2', '2019-02-10', '200')
insert into UnitsSold (product_id, purchase_date, units) values ('2', '2019-03-22', '30')

-- Solution

SELECT p.product_id,                                                        -- Get product ID
    ROUND(                                                                  -- Round result to 2 decimal places
        IFNULL(                                                             -- If result is NULL, return 0
            SUM(p.price * u.units) / SUM(u.units), 0),2) AS average_price   -- Weighted Average = Total Revenue / Total Units
FROM Prices p                                                               -- Prices table
LEFT JOIN UnitsSold u                                                       -- Keep all products even if not sold
ON p.product_id = u.product_id                                              -- Match same product
AND u.purchase_date BETWEEN p.start_date AND p.end_date                     -- Match correct price period
GROUP BY p.product_id;                                                      -- One row per product