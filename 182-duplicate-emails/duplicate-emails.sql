# Write your MySQL query statement below
SELECT email AS Email
FROM

(SELECT email, count(*) as cnt
FROM Person
GROUP BY email
HAVING cnt > 1 ) AS ref
