SELECT current_schema();
select current_database();

set search_path to intern;

show search_path;

--INNER JOIN
SELECT
    students.name,
    enrollment.course_id
FROM students
INNER JOIN enrollment
ON students.student_id = enrollment.student_id;

SELECT
    students.name,
    course.course_name
FROM students
INNER JOIN enrollment
    ON students.student_id = enrollment.student_id
INNER JOIN course
    ON enrollment.course_id = course.course_id;

--LEFT JOIN
SELECT
    students.name,
    enrollment.course_id
FROM students
LEFT JOIN enrollment
    ON students.student_id = enrollment.student_id;

--LEFT JOIN WITH NULL
SELECT
    students.name
FROM students
LEFT JOIN enrollment
    ON students.student_id = enrollment.student_id
WHERE enrollment.student_id IS NULL;

--RIGHT JOIN
SELECT
    students.name,
    enrollment.course_id
FROM students
RIGHT JOIN enrollment
    ON students.student_id = enrollment.student_id;

--FULL OUTER JOIN
SELECT
    students.name,
    enrollment.course_id
FROM students
FULL OUTER JOIN enrollment
    ON students.student_id = enrollment.student_id;

--CROSS JOIN
SELECT
    students.name,
    course.course_name
FROM students
CROSS JOIN course;

--SELF JOIN
SELECT
    s1.name AS student_1,
    s2.name AS student_2
FROM students s1
INNER JOIN students s2
    ON s1.student_id < s2.student_id;

--Multi-Table JOIN
SELECT
    students.student_id,
    students.name,
    students.city,
    course.course_name
FROM students
INNER JOIN enrollment
    ON students.student_id = enrollment.student_id
INNER JOIN course
    ON enrollment.course_id = course.course_id
ORDER BY students.student_id;

--JOIN vs Filter on NULL Side
SELECT
    students.name,
    enrollment.course_id
FROM students
LEFT JOIN enrollment
    ON students.student_id = enrollment.student_id;

--
SELECT
    students.name,
    enrollment.course_id
FROM students
LEFT JOIN enrollment
    ON students.student_id = enrollment.student_id
WHERE enrollment.course_id = 1;

--
SELECT
    students.name,
    enrollment.course_id
FROM students
LEFT JOIN enrollment
    ON students.student_id = enrollment.student_id
    AND enrollment.course_id = 1;

--Report
SELECT
    students.name AS "Student Name",
    students.email AS "Email",
    students.city AS "City",
    course.course_name AS "Course Name"
FROM students
INNER JOIN enrollment
    ON students.student_id = enrollment.student_id
INNER JOIN course
    ON enrollment.course_id = course.course_id
ORDER BY students.name ASC;
