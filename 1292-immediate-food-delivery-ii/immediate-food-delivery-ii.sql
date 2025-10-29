# Write your MySQL query statement below
SELECT round((sum(pref)/ count(distinct customer_id))*100,2) as immediate_percentage

FROM
(SELECT delivery_id,customer_id,order_date,customer_pref_delivery_date,if(order_date = customer_pref_delivery_date, '1', '0' ) as pref
FROM 
Delivery
WHERE 
(customer_id,order_date)
IN
(SELECT  customer_id,min(order_date) as min 
FROM Delivery
GROUP BY customer_id) ) as t1


