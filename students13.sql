CREATE TABLE students13(
student_id INT,
first_name VARCHAR (45),
last_name VARCHAR(45),
dob DATE,
email VARCHAR (50),
phone_number INT);


-- Add a column `address` to the `students` table. --
ALTER TABLE students13
ADD COLUMN address VARCHAR (100);

SELECT*
FROM students13;

-- Rename the `dob` column in `students` to `date_of_birth`. --

ALTER TABLE students13
RENAME COLUMN dob TO date_of_birth;

-- Insert at least 30 students into the `students` table. --

INSERT INTO students13 (student_id, first_name, last_name, date_of_birth, email, phone_number, address) VALUES
(1111, 'Salako', 'Banmeke', '2003-05-22', 'salakobams@gmail.com', 0804567123, '34, Sogbeke Street, Abeokuta, Ogun State.'),
(1112, 'Dende', 'Adekunle', '2002-08-02', 'Deeman@gmail.com', 0901234567, '4, Itoku Street, Ode-Ogbolu, Ogun State.'),
(1113, 'Mabioku', 'Johnson', '2000-01-28', 'mabijohnson12@yahoo.com', 0702354769, '3, Gado Nasco Street, Kubwa, Abuja.'),
(1114, 'Cyril', 'Stoba', '2003-05-22', 'salakobams@gmail.com', 0807648672, '54, Sogbeke Street, Abeokuta, Ogun State.'),
(1115, 'Abubakar', 'Danladi', '2000-05-12', 'shegea70@gmail.com', 0813467865, '93, Danbaba Street, Kuje, Abuja.'),
(1116, 'Celestine', 'Suara', '2005-09-20', 'selebobo10@gmail.com', 0701254769, '33, Skelewu Street, Gboko, Benue State.'),
(1117, 'Donald', 'Trump', '1903-05-27', 'djtrump@gmail.com', 0901122334, '34. Cat&Dogs Street, Springfield, Ohio State.'),
(1118, 'Jacob', 'Fatu', '2001-05-11', 'jfatu@gmail.com', 0819943621, '86, Kuto Street, Abeokuta, Ogun State.'),
(1119, 'John', 'Sina', '2005-12-18', 'jsina33@gmail.com', 0817043626, '08, Oke-Osun Street, Oshogbo, Osun State.'),
(1120, 'Sabitiyu', 'Rabiu', '2000-11-12', 'sabirabi@gmail.com', 0803343628, '06, Alekunwodo Street, Oshogbo, Osun State.'),
(1121, 'Segun', 'Ogunjuyigbe', '2002-01-29', 'segelu29@gmail.com', 0801373618, '56, Oke-Ogun Street, Odeogbolu, Ogun State.'),
(1122, 'Erastus', 'Samson', '2004-11-12', 'erason@gmail.com', 0803763539, '136, Bobrisky Street, Lekki, Lagos State.'),
(1123, 'Dodo', 'Sawaba', '2000-10-19', 'dodo22@gmail.com', 0801190725, '206, Okepupa Street, Oshogbo, Osun State.'),
(1124, 'Alabetutu', 'Joseph', '2002-11-12', 'alabej@gmail.com', 0803901764, '41, Egbatedo Street, Oshogbo, Osun State.'),
(1125, 'Denwa', 'Gokop', '2000-12-02', 'denwag@gmail.com', 0812206789, '09, Biruwa Street, Jos, Plateau State.'),
(1126, 'Donatus', 'Agaba', '2001-06-30', 'donagab@gmail.com', 0703259830, '98, Dagwa Street, Makurdi, Benue State.'),
(1127, 'oladimeji', 'Ajagbe', '2003-07-13', 'dimeji77@gmail.com', 0817752498, '51, Beyioku Street, Shagamu, Ogun State.'),
(1128, 'Sule', 'Maito', '2000-02-14', 'sulemaito@gmail.com', 0803076814, '119, Olorungbekun Street, Ibodi, Osun State.'),
(1129, 'Roman', 'Reigns', '2003-10-12', 'romanreigns@gmail.com', 0713490856, '07, Oduduwa Street, Kubwa, Abuja.'),
(1130, 'Cole', 'Palmer', '2004-04-23', 'icecoldpalmer@gmail.com', 0803936301, '20, Stamfordbridge Street, Ikeja, Lagos State.'),
(1131, 'Reece', 'James', '2005-03-15', 'rjames24@gmail.com', 0803281343, '72, Bambale Street, Yola, Adamawa State.'),
(1132, 'Saki', 'Sabana', '2000-11-03', 'sabirabi@gmail.com', 0808134336, '711, Kumasi Street, Ohafia, Anambra State.'),
(1133, 'Aliyu', 'Rabiu', '2005-12-31', 'aliyuabiu31@gmail.com', 0804136233, '55, Bakori Street, Kubwa, Abuja.'),
(1134, 'Lookman', 'Sebastin', '2003-09-18', 'lookman18@gmail.com', 0803712519, '43, Arab Road, Phase 4 Kubwa, Abujka.'),
(1135, 'Suleiman', 'Raba', '2004-01-28', 'suleraba11@gmail.com', 0701912518, '39, Agwan Boka Street, Karmu, Abuja.'),
(1136, 'Ahmed', 'Naallah', '2001-03-12', 'ahmednaala22@gmail.com', 0803719125, '75, Kado-Binko Road, Jabi, Abuja.'),
(1137, 'Imade', 'Pariola', '2005-02-12', 'imade4real@gmail.com', 0803725919, '66, Carwash Street, Lugbe, Abuja.'),
(1138, 'Gaube', 'Yanga', '2001-04-26', 'yangube26@gmail.com', 0803628133, '3, Gafere Street, Ijumu, Kogi State.'),
(1139, 'Maitumbi', 'Ahmed', '2005-03-28', 'ahmedmait28@gmail.com', 0802813634, '06, Shehu Kangiwa Road, Minna, Niger State.'),
(1140, 'Shakiru', 'Gunu', '2001-01-17', 'shagunu@gmail.com', 0703343328, '94, Sakwatu Street, Shiroro, Niger State.');

SELECT * 
FROM students13;

-- Write a query to retrieve the full names and courses for all students. --
SELECT s.first_name, s.last_name, c.course_name
FROM students13 AS s
INNER JOIN enrollments1 AS e ON s.student_id = e.student_id
INNER JOIN course1 AS c ON e.course_id = c.course_id
ORDER BY s.last_name, s.first_name;

-- Write a query to find all students who have not yet been assigned a grade. --
SELECT s.student_id, s.first_name, s.last_name
FROM students13 AS s
LEFT JOIN enrollments1 AS e ON s.student_id = e.student_id
LEFT JOIN grades1 AS g ON e.enrollment_id = g.enrollment_id
WHERE g.grade_id IS NULL;


-- Use subqueries to find students with the highest grades in each course. --
SELECT s.student_id, s.first_name, s.last_name, c.course_name
FROM students13 AS s
INNER JOIN enrollments1 AS e 
ON s.student_id = e.student_id
INNER JOIN course1 AS c 
ON e.course_id = c.course_id
INNER JOIN (
    SELECT course_id, MAX(grade) AS highest_grade
    FROM enrollments1 AS e2
    INNER JOIN grades1 AS g2 
    ON e2.enrollment_id = g2.enrollment_id
    GROUP BY course_id
) AS highest_grades
ON c.course_id = highest_grades.course_id AND g.grade = highest_grades.highest_grade;


-- Write a CTE to list all students with their course names and grades. --

WITH student_courses AS (
    SELECT s.student_id, s.first_name, s.last_name, c.course_name, g.grade
    FROM students13 AS s
    INNER JOIN enrollments1 AS e ON s.student_id = e.student_id
    INNER JOIN course1 AS c ON e.course_id = c.course_id
    INNER JOIN grades1 AS g ON e.enrollment_id = g.enrollment_id
)
SELECT student_id, first_name, last_name, course_name, grade
FROM student_courses;

-- Write a CTE to find students who have taken more than 2 courses. --

WITH student_course_counts AS (
    SELECT s.student_id, COUNT(DISTINCT e.course_id) AS num_courses
    FROM students13 AS s
    INNER JOIN enrollments1 AS e ON s.student_id = e.student_id
    GROUP BY s.student_id
)
SELECT s.student_id, s.first_name, s.last_name
FROM student_course_counts AS sc
INNER JOIN students13 AS s ON sc.student_id = s.student_id
WHERE sc.num_courses > 2;

-- Use a JOIN to retrieve the names of students and the courses they are not enrolled in. --

SELECT s.student_id, s.first_name, s.last_name, c.course_name
FROM students13 AS s
CROSS JOIN course1 AS c
LEFT JOIN enrollments1 AS e ON s.student_id = e.student_id AND c.course_id = e.course_id
WHERE e.enrollment_id IS NULL;


-- Write a query to find students who share the same last name. --

SELECT s1.student_id, s1.first_name, s1.last_name
FROM students13 AS s1
JOIN students13 AS s2 ON s1.last_name = s2.last_name AND s1.student_id <> s2.student_id;