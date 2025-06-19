SELECT s.rollNo, s.name AS student_name, c.cname AS course_name 
FROM student s 
JOIN enrollment e ON s.rollNo = e.rollNo 
JOIN course c ON e.courseId = c.courseId 
JOIN teaching t ON e.courseId = t.courseId 
LEFT JOIN professor p ON s.advisor = p.empId AND t.empId = p.empId 
WHERE p.empId IS NULL OR c.credits < 4; 