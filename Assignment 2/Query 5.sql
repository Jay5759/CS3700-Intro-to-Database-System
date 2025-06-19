SELECT d.name AS department_name, COUNT(DISTINCT p.empId) / 
COUNT(DISTINCT s.rollNo) AS professor_to_students_ratio 
FROM department d 
JOIN course c ON d.deptId = c.deptNo 
JOIN teaching t ON c.courseId = t.courseId 
JOIN professor p ON t.empId = p.empId 
JOIN enrollment e ON c.courseId = e.courseId 
JOIN student s ON e.rollNo = s.rollNo 
GROUP BY d.name 
HAVING COUNT(DISTINCT c.courseId) >= 3  
ORDER BY professor_to_students_ratio DESC; 