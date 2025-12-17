# Write your MySQL query statement below

WITH DailySums AS (SELECT visited_on, sum(amount) AS day_amount
FROM customer
GROUP BY visited_on),

MovingCalculations AS(
    SELECT visited_on,
    sum(day_amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW ) AS total_amount,
    avg(day_amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW ) AS average_amount,
    ROW_NUMBER()OVER (ORDER BY visited_on) AS day_count
    FROM Dailysums
)

SELECT 
    visited_on, 
    total_amount AS amount, 
    ROUND(average_amount, 2) AS average_amount
FROM MovingCalculations
WHERE day_count >= 7
ORDER BY visited_on;
