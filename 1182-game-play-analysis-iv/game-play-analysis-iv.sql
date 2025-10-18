# Write your MySQL query statement below
SELECT round(sum(if(player_login=1,1,0))/count(distinct player_id),2) AS fraction 
FROM
(SELECT player_id, datediff(event_date, min(event_date)over (partition by player_id))=1 as player_login 
FROM Activity) as players_data
