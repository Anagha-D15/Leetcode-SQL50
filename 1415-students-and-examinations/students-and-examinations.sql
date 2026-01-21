# Write your MySQL query statement below
SELECT s.student_id, student_name, sub.subject_name , sum(IF(ex.subject_name IS NULL, 0,1 )) AS attended_exams
FROM Students s CROSS JOIN Subjects sub LEFT JOIN Examinations ex
ON s.student_id = ex.student_id AND sub.subject_name = ex.subject_name
GROUP BY subject_name, student_id, student_name
ORDER BY student_id, subject_name, student_name


