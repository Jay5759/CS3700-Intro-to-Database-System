SELECT s.rollNo, s.name AS student_name, c1.cname AS course_name, 
e1.year as course_year, c2.cname AS prerequisite_course, e2.year as 
prerequisite_course_year  
FROM student s 
JOIN enrollment e1 ON s.rollNo = e1.rollNo 
JOIN course c1 ON e1.courseId = c1.courseId 
JOIN preRequisite pr ON c1.courseId = pr.courseId 
JOIN course c2 ON pr.preReqCourse = c2.courseId 
JOIN enrollment e2 ON (s.rollNo = e2.rollNo AND e2.courseId = 
c2.courseId) 
WHERE e1.year > e2.year;