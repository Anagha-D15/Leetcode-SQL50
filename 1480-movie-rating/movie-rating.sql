(SELECT #u.user_id,
u.name AS results #, count(mr.rating)
FROM Users u INNER JOIN MovieRating mr
ON u.user_id = mr.user_id
GROUP BY u.user_id
ORDER BY count(rating) DESC, name
LIMIT 1)

UNION ALL

(SELECT  m.title AS results # , avg(mr.rating)
FROM Movies m INNER JOIN MovieRating mr
ON m.movie_id= mr.movie_id 
WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY title
ORDER BY avg(rating) DESC, results ASC
LIMIT 1)






