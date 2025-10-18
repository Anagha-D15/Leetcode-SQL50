# Write your MySQL query statement below
SELECT activity_date AS day, count(distinct user_id ) AS active_users
FROM Activity
WHERE DATEDIFF('2019-07-27', activity_date) <= 29
  AND DATEDIFF('2019-07-27', activity_date) >= 0
GROUP by activity_date
