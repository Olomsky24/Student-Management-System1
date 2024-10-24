CREATE TABLE grades1(
grade_id INT PRIMARY KEY,
enrollment_id INT,
grade INT);

SELECT *
FROM grades1;

-- Insert grades for each enrollment in the `grades` table. --
INSERT INTO grades1 (grade_id, enrollment_id, grade) VALUES
(400, 1, 3),
(401, 2, 4),
(402, 3, 5),
(403, 4, 3),
(404, 5, 4),
(405, 6, 5),
(406, 7, 3),
(407, 8, 5),
(408, 9, 4),
(409, 10, 3),
(410, 11, 4),
(411, 12, 3),
(412, 13, 4),
(413, 14, 3),
(414, 15, 4),
(415, 16, 3),
(416, 17, 5),
(417, 18, 4),
(418, 19, 5),
(419, 20, 4),
(420, 21, 3),
(421, 22, 3),
(422, 23, 4),
(423, 24, 5),
(424, 25, 4),
(425, 26, 3),
(426, 27, 4),
(427, 28, 3),
(428, 29, 5),
(429, 30, 4),
(430, 31, 3),
(431, 32, 5),
(432, 33, 2),
(433, 34, 4),
(434, 35, 5),
(435, 36, 3),
(436, 37, 5),
(437, 38, 4),
(438, 39, 2),
(439, 40, 5),
(440, 41, 4),
(441, 42, 3),
(442, 43, 4),
(443, 44, 3),
(444, 45, 4);

INSERT INTO grades1 (grade_id, enrollment_id)VALUES
(445, 15),
(446, 16),
(447, 17),
(448, 18),
(449, 19);
SELECT *
FROM grades1;


-- Create a `CASE` statement to assign letter grades (A, B, C, D, F) based on numerical grades. --
SELECT enrollment_id, grade, 
       CASE
           WHEN grade >= 5 THEN 'A'
           WHEN grade >= 4 THEN 'B'
           WHEN grade >= 3 THEN 'C'
           WHEN grade >= 2 THEN 'D'
           ELSE 'F'
       END AS letter_grade
FROM grades1;

-- Delete all records from the grades table where the grade is below 50 and record the number of rows deleted. --


DELETE FROM grades1
WHERE grade < 3;

SELECT ROW_COUNT() AS rows_deleted;