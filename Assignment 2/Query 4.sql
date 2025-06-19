SELECT c.cname AS course_name, p.name AS professor_name, t.classRoom, 
t.year  
FROM teaching t 
JOIN course c ON t.courseId = c.courseId 
JOIN professor p ON t.empId = p.empId 
JOIN department d ON c.deptNo = d.deptId 
WHERE (d.name = 'Physics' OR d.name = 'Psychology') 
AND t.sem = "even" 
AND p.startYear >= 1992; 