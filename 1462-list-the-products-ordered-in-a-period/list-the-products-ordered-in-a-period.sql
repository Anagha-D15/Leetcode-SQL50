# Write your MySQL query statement below

SELECT product_name, unit
FROM
(SELECT  product_name, sum(unit ) AS unit
FROM Products p
LEFT JOIN Orders o
ON p.product_id = o.product_id
WHERE month(order_date) = 2 AND year(order_date) = 2020
GROUP BY product_name) AS t1
WHERE unit > 99