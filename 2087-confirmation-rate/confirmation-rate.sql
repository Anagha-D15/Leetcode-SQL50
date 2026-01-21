# Write y ur MySQL query statement below
SELECT user_id,  round(avg(if(action = 'confirmed',1,0)),2) AS confirmation_rate
FROM Confirmations 
GROUP BY user_id

UNION
SELECT user_id, 0 AS confirmation_rate
FROM Signups
WHERE user_id
NOT IN 
(SELECT DISTINCT user_id FROM ConfirmationS)


