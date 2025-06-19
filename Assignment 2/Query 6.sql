SELECT degree, COUNT(rollNo) AS total_students_enrolled, COUNT(sex = 
'female' OR NULL) AS female_students_enrolled, COUNT(sex = 'male' OR 
NULL) AS male_students_enrolled 
FROM student 
GROUP BY degree 
HAVING SUM(sex = 'female' OR NULL) >= 0.2 * COUNT(rollNo) 
ORDER BY COUNT(sex = 'female' OR NULL)/COUNT(sex = 'male' OR NULL); 