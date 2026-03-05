# Write your MySQL query statement below
SELECT name, If (sum(distance) IS NULL, 0, sum(distance)) as travelled_distance
FROM Users u LEFT JOIN Rides r
ON u.id = r.user_id
GROUP BY user_id
ORDER BY travelled_distance desc, name ASC
