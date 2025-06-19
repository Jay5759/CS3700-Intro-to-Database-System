SELECT p.empId, p.name AS professor_name, d1.name AS department_name 
FROM professor p 
LEFT JOIN student s ON p.empId = s.advisor 
LEFT JOIN department d ON p.empId = d.hod 
JOIN department d1 ON p.deptNo = d1.deptId 
WHERE s.advisor IS NULL AND d.hod IS NULL; 