# Write your MySQL query statement below
WITH ref AS (SELECT product_id, min(year) AS fr
FROM Sales
GROUP BY product_id )

SELECT s.product_id, s.year AS first_year, quantity, price
FROM Sales s Join ref r
ON s.product_id = r.product_id AND s.year = r.fr







