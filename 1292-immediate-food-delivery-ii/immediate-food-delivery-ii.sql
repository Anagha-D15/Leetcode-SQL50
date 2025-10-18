# Write your MySQL query statement below
SELECT round(sum(if( mino = minp,1,0))/count(customer_id) * 100,2)AS immediate_percentage 
FROM
(SELECT customer_id, min(order_date) as mino, min(customer_pref_delivery_date) as minp
FROM Delivery
GROUP BY customer_id) as delivery_up



