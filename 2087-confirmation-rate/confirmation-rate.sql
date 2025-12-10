# Write y ur MySQL query statement below


WITH r1 as (SELECT s.user_id, c.action
FROM Signups s LEFT JOIN Confirmations c
ON s.user_id = c.user_id)

SELECT user_id,ROUND( AVG(IF(action = 'timeout'or action is NULL,0,1)),2)  AS confirmation_rate
FROM r1
GROUP BY user_id