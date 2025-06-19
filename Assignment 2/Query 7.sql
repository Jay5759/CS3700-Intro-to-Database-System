SELECT p.name AS professor_name, COUNT(e.grade = 'S' OR NULL) AS 
num_s_grades 
FROM professor p 
JOIN teaching t ON p.empId = t.empId 
JOIN enrollment e ON t.courseId = e.courseId 
GROUP BY p.empId 
HAVING COUNT(e.grade = 'S' OR NULL) > ( 
SELECT AVG(num_s_grades) 
FROM ( 
SELECT COUNT(e.grade = 'S' OR NULL) AS num_s_grades 
FROM professor p 
JOIN teaching t ON p.empId = t.empId 
JOIN enrollment e ON t.courseId = e.courseId 
GROUP BY p.empId 
) AS avg_s_grades 
); 