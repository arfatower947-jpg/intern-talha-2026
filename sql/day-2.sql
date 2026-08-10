--Selected Data from Tables.

select * from students;
select * from course;
select * from enrollment;

--Selecting Specific Column from a Table.
select name,city from students;
select name,city,age from students;

--Alies
select name as "Student Name" from students;
select student_id as "ID", name as "Name", age as "Age",email as "Email",city as "City" from Students;

--Adding more Data
select city from students;
insert into students (name, email, age, city) values ('john', 'john@321', 23, 'London'), ('Bilal', 'bilal@123', 24, 'Changa Manga'), ('Ali', 'ali@123', 21, 'Changa Manga');
insert into students (name, email, age, city) values ('john', 'john@432', 21, 'Changa Manga');
insert into students (name, email, age, city) values ('Numan', 'numan@321', 26, 'Chnaga Manga');

--Distinct
select DISTINCT city from students;
select distinct name from students;


--Where
select age from students where age = 24;
select name, age from students where name = 'john' and age = 23;

--Comparison Operators
select age from students where age > 24;
select name, email, age from students where name = 'john';
select name, city from students where age <> 24;
select name, age, city from students where age >= 25;
select name from students where age = 24;

--Logical Operators
select name, email from students where age > 21 and city = 'Changa Manga';
select name, email, age from students where age = 24 or age = 26;
select name, email, age, city from students where not age = 26;

--Between
select name,age,city from students where age between 24 and 26;

--IN
select name as Name,age as Age,city as City from students where age in (24, 26);
select name as Name, age as Age, city as City from students where city in ('Changa Manga', 'London');

--Like
SELECT *
FROM students
WHERE email LIKE 'j%';
select name as Name, age as Age, email as Email from students where name like 'J%' and age = 24;
select name as Name, age as Age from students where name ilike 'J%';

--Null
update course set duration = null where course_name = 'Jave';
select * from course;
select * from course where duration is null;

--ORDER
select * from students order by name;
select * from students order by age desc ;

--Limit
select * from students limit 3;
select * from course limit 1;




