--For Seeing Current User
select current_database();

--For Current User
select current_user;

create schema intern;

set search_path to intern;

show search_path;

--Creating Table Student
create table students (
student_id SERIAL primary key,
name varchar not null,
email varchar unique ,
age int not null,
city varchar(100)
);

select * from students;

--creating Table Course
create table course (
course_id SERIAL primary key,
course_name varchar(100) unique,
duration int
);

select * from course;

--creating table enrollment
create table enrollment (
enrollment_id SERIAL primary key,
student_id int,
course_id int,

constraint fk_student
foreign key (student_id) references students(student_id),

constraint fk_course foreign key (course_id) references course(course_id)
);

select * from enrollment;

--Entering Data in Students Table
insert into students (name, email, age, city) values ('John', 'John@123', 24, 'D.C.'), 
('Mohn', 'Mohn@123', 25, 'London'), ('Lohn', 'Lohn@123', 26, 'Area');

--Entering Data in Course Table
insert into course (course_name, duration) values ('Python', 2), ('MySql', 2), ('Java', 3);

--Enrolling Courses to Students.
insert into enrollment (student_id, course_id) values (1, 3), (1, 2), (3, 1);

select * from students;
select * from course;
select * from enrollment;


SELECT enrollment.*, course.course_name
FROM enrollment
JOIN course
ON enrollment.course_id = course.course_id;