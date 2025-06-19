SELECT dd.name AS department_name, pp.name as professor_name, 
p.max_advisees AS num_of_advisees 
FROM ( 
SELECT p.empId, MAX(p.advisees) AS max_advisees 
FROM ( 
SELECT p.empId, COUNT(p.empId) AS advisees 
FROM department d 
JOIN professor p ON p.deptNo = d.deptId 
JOIN student s ON s.advisor = p.empId 
GROUP BY p.empId  
) AS p 
GROUP BY p.empId 
) AS p 
JOIN professor pp ON p.empId = pp.empId 
JOIN department dd ON pp.deptNo = dd.deptId;