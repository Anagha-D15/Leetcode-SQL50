# Write your MySQL query statement below

WITH ref AS(SELECT tiv_2015, count(pid)
FROM Insurance
GROUP BY tiv_2015
Having count(pid) > 1), 
ref2 AS
(SELECT  lat, lon 
FROM Insurance
GROUP BY lat, lon
HAVING count(pid) = 1)

SELECT round(sum(tiv_2016),2) as tiv_2016
FROM Insurance
WHERE (tiv_2015 IN (SELECT tiv_2015 FROM ref )) AND (lat IN (SELECT lat FROM ref2 ))


