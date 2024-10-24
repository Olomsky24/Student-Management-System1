CREATE TABLE dropped_courses (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE);
    
SELECT*
FROM dropped_courses;
  
  -- Create a new table named dropped_courses with the same structure as enrollments, then move all enrollments where the grade is "F" to this table. --
  
INSERT INTO dropped_courses (enrollment_id, student_id, course_id, enrollment_date)
SELECT e.enrollment_id, e.student_id, e.course_id, e.enrollment_date
FROM enrollments1 AS e
INNER JOIN grades1 AS g ON e.enrollment_id = g.enrollment_id
WHERE g.grade < 3;

SELECT*
FROM dropped_courses;