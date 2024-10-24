CREATE TABLE enrollments1(
enrollment_id INT PRIMARY KEY,
student_id INT,
course_id INT,
enrollment_date DATE);

SELECT*
FROM enrollments1;

-- Insert at least 12 records into the `enrollments` table, ensuring that some students are enrolled in multiple courses. --

INSERT INTO enrollments1(enrollment_id, student_id, course_id, enrollment_date) VALUES
(1, 1111, 101, '2024-10-01'),
(2, 1112, 101, '2024-10-02'),
(3, 1113, 107, '2024-10-02'),
(4, 1114, 103, '2024-10-02'),
(5, 1115, 105, '2024-10-02'),
(6, 1116, 201, '2024-10-03'),
(7, 1117, 203, '2024-10-03'),
(8, 1118, 109, '2024-10-04'),
(9, 1119, 203, '2024-10-04'),
(10, 1120, 205, '2024-10-04'),
(11, 1121, 103, '2024-10-05'),
(12, 1122, 209, '2024-10-05'),
(13, 1123, 203, '2024-10-05'),
(14, 1124, 105, '2024-10-05'),
(15, 1125, 103, '2024-10-06'),
(16, 1126, 205, '2024-10-06'),
(17, 1127, 209, '2024-10-06'),
(18, 1128, 105, '2024-10-07'),
(19, 1129, 107, '2024-10-07'),
(20, 1130, 203, '2024-10-07'),
(21, 1131, 205, '2024-10-07'),
(22, 1132, 207, '2024-10-08'),
(23, 1133, 201, '2024-10-08'),
(24, 1134, 109, '2024-10-08'),
(25, 1135, 105, '2024-10-09'),
(26, 1136, 201, '2024-10-10'),
(27, 1137, 107, '2024-10-10'),
(28, 1138, 101, '2024-10-10'),
(29, 1139, 101, '2024-10-11'),
(30, 1140, 109, '2024-10-11'),
(31, 1115, 109, '2024-10-12'),
(32, 1116, 207, '2024-10-12'),
(33, 1117, 209, '2024-10-12'),
(34, 1118, 209, '2024-10-13'),
(35, 1119, 103, '2024-10-13'),
(36, 1120, 105, '2024-10-13'),
(37, 1121, 203, '2024-10-14'),
(38, 1122, 109, '2024-10-15'),
(39, 1123, 103, '2024-10-15'),
(40, 1124, 205, '2024-10-15'),
(41, 1125, 203, '2024-10-16'),
(42, 1126, 105, '2024-10-16'),
(43, 1127, 109, '2024-10-16'),
(44, 1128, 205, '2024-10-17'),
(45, 1129, 207, '2024-10-17');

INSERT INTO enrollments1(enrollment_id, student_id, course_id, enrollment_date) VALUES
(46, 1125, 107, '2024-10-06'),
(47, 1126, 207, '2024-10-06'),
(48, 1127, 201, '2024-10-06'),
(49, 1128, 101, '2024-10-07'),
(50, 1129, 109, '2024-10-07');

SELECT*
FROM enrollments1;


-- Write a query to retrieve the full names and courses for all students. --

SELECT enrollments1.student_id, enrollments1.enrollment_id, course_id, first_name, last_name, students13.student_id, grade, grades1.enrollment_id
FROM enrollments1
INNER JOIN students13
ON enrollments1.student_id = students13.student_id
INNER JOIN grades1
ON enrollments1.enrollment_id = grades1.enrollment_id;


-- Write a query to count the number of students enrolled in each course. --

SELECT c.course_name, COUNT(e.student_id) AS num_students
FROM course1 AS c
INNER JOIN enrollments1 AS e ON c.course_id = e.course_id
GROUP BY c.course_id;


-- Create a report showing the total number of students, courses, and enrollments. --

SELECT
    (SELECT COUNT(*) FROM students13) AS total_students,
    (SELECT COUNT(*) FROM course1) AS total_courses,
    (SELECT COUNT(*) FROM enrollments1) AS total_enrollments;