# Writect1 your MySQL query statement below


SELECT requester_id AS id , count(*) as num
FROM  
 (SELECT requester_id
FROM RequestAccepted


UNION ALL

SELECT accepter_id
FROM RequestAccepted) as t1

GROUP BY requester_id
ORDER BY num DESC
LIMIT 1






