CREATE TABLE course1(
course_id INT PRIMARY KEY,
course_name VARCHAR (45),
course_code INT,
credits INT);

SELECT*
FROM course1;

ALTER TABLE course1
MODIFY COLUMN course_code VARCHAR (15);

-- Insert at least 10 courses into the `courses` table. --

INSERT INTO course1 (course_id, course_name, credits, course_code) VALUES
(101, 'General Studies 101', 3, 'GNS 1O1'),
(103, 'General Studies 103', 2, 'GNS 1O3'),
(105, 'General Studies 105', 3, 'GNS 1O5'),
(107, 'General Studies 107', 2, 'GNS 1O7'),
(109, 'General Studies 109', 3, 'GNS 109'),
(201, 'General Studies 201', 3, 'GNS 2O1'),
(203, 'General Studies 203', 3, 'GNS 2O3'),
(205, 'General Studies 205', 3, 'GNS 2O5'),
(207, 'General Studies 207', 3, 'GNS 2O7'),
(209, 'General Studies 209', 3, 'GNS 2O9');

SELECT*
FROM course1;

-- Write a query that returns the average grade for each course. --

SELECT c.course_name, AVG(g.grade) AS average_grade
FROM course1 AS c
INNER JOIN enrollments1 AS e ON c.course_id = e.course_id
INNER JOIN grades1 AS g ON e.enrollment_id = g.enrollment_id
GROUP BY c.course_id;