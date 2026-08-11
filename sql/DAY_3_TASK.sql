SELECT current_database();


SELECT current_schema();

set search_path to intern;

show search_path;

select * from students;
select * from students order by student_id;

--COUNT(*) 
select count(*) from students;
select count(fee) as "FEE" from students;

--SUM()
select sum(age) from students;

--AVG()

--Adding new Column in Students Table, So we can apply AVG() query on it.
ALTER TABLE students ADD COLUMN fee INT;

--Giving fee to Students
update students set fee = 20000 where student_id = 1;
update students set fee = 40000 where student_id = 2;
update students set fee = 30000 where student_id = 3;
update students set fee = 10000 where student_id = 4;
update students set fee = 50000 where student_id = 5;
update students set fee = 60000 where student_id = 6;
update students set fee = 20000 where student_id = 7;
update students set fee = 10000 where student_id = 8;

select avg(fee) as "Average_Fees" from students;

--MIN()
select min(fee) as "MIN Fee" from students;
select fee as "MIN Fee", name as "Name" from students where fee = (select MIN(fee) from students);

--MAX()
select max(fee) as "MAX Fee" from students;
select fee as "Max Fee" from students where fee = (select max(fee) from students);

--GROUP BY
select count(*) from students;
select city as "CITY", COUNT(*) from students group by city;

--Combne
select city as "CITY", SUM(FEE) as "Total Fee", AVG(fee) as "AVERAGE Fee" from students group by city;

--Where
select name from students where student_id = 1;
select city as "CITY", SUM(fee) as "Total Fee" from students where city = 'Changa Manga' group by city;

--Having
SELECT
    city,
    COUNT(*) AS total_students
FROM intern.students
GROUP BY city
HAVING COUNT(*) >= 2;

-- 10 Summary Queries

-- 1
SELECT COUNT(*) AS total_students FROM students;

--2
SELECT SUM(fee) AS total_fees FROM students;

--3
SELECT AVG(fee) AS average_fee FROM students;

--4
select MIN(fee) AS minimum_fee, MAX(fee) AS maximum_fee FROM students;

--5
select city, COUNT(*) AS total_students FROM students GROUP BY city;

--6
select city, SUM(fee) AS total_fee FROM students GROUP BY city;

--7
select city, AVG(fee) AS average_fee FROM students GROUP BY city;

--8
select city, COUNT(*) AS total_students FROM students WHERE fee >= 20000 GROUP BY city;

--9
select city, COUNT(*) AS total_students FROM students GROUP BY city HAVING COUNT(*) >= 2;

--10
select city, COUNT(*) AS total_students, SUM(fee) AS total_fee, AVG(fee) AS average_fee FROM students WHERE fee >= 20000 GROUP BY city HAVING COUNT(*) >= 2 ORDER BY total_fee DESC;


--