select current_database();

select current_user;

select current_schema;

select table_schema, table_name
from information_schema.tables
where table_type = 'BASE TABLE';

select * from intern.students;

--LENGTH()
select length(name) as "Legth of Name" from intern.students;
select email as "Email" from intern.students where length(name) >= 5;

--SUBSTR()
select substr('Hello World!', 1, 5);
select substr(email, 1,3) from intern.students;


--SUBSTRING()
select substring(email, 1, 4) from intern.students;

--OCTET_LENGTH()
select OCTET_LENGTH(name) from intern.students;

--LEFT()
select left('Hello', 3);
select left(email, 5) from intern.students;

--RIGHT()
select right('Hello', 3);
select right(email, 3) from intern.students;

--SPLIT_PART()
select split_part('hel,lo', ',', 1);
select split_part('hel,lo', ',', -1);

--lower()
select lower('HELLO');
select lower(name) as "Lower Name" from intern.students;

--UPPER()
select upper('hello');
select upper(name) as "Upper Name" from intern.students;

--INITCAP()
select initcap('hello'); 
select initcap(name) as "Name" from intern.students;

--Repeat()
select repeat('Hello', 3);

--CONCAT()
select concat('Hello', 'World!');

--CONCAT_WS()
select concat_ws(' ', 'Hello', 'World!');

--REVERSE()
select reverse(name) as "Rever Name" from intern.students;

--REGEX_LIKE()
SELECT regexp_like('The quick brown FOX jumps', 'fox', 'i');


--CAST()
SELECT CAST(fee AS DECIMAL) AS decimal_fee
FROM intern.students;

SELECT
    name,
    fee,
    CAST(fee AS DECIMAL) AS decimal_fee
FROM intern.students;


--case when
select name as "Name", fee as "Free", 
	case 
		when fee >= 30000 then 'High' 
		else 'Low' 
	end as "Cat Fee" 
from intern.students;

--COALESCE()
SELECT COALESCE(NULL, NULL, 'Hello', 'World') AS result;
select coalesce(city, 'No City') as "City" from intern.students where student_id > 12;

--UNION()
--for performing union and union all we add more data in students table
select * from intern.students;
insert into intern.students (name, email, age, fee)
values 
(' Ali Raza', 'Ali@123', 24, 45000 ),
('Bilal Abas ', 'abas@123', 24, 45000 ),
('Akbar', 'akbar@123', 28, 70000 ),
('    Tamoor', 'tamoor@123', 29, 5000 ),
(' Khan    ', 'kahn@123', 26, 53000 ),
(' Sameer   ', 'sameer@123', 24, 40000 ),
(' Umer   ', 'umer@123', 30, 43000 );

update intern.students
set city = 'Phool Nagar'
where student_id = 16;

update intern.students
set city = 'Pattoki'
where student_id = 15;

update intern.students
set city = 'Cahnga Manga'
where student_id = 12;

update intern.students
set city = 'Changa Manga'
where student_id = 10;

update intern.students
set city = 'Cahnga Manga'
where student_id = 9;

SELECT name
FROM intern.students
WHERE city = 'London'

UNION

SELECT name
FROM intern.students
WHERE fee >= 30000;

--UNION ALL
SELECT name
FROM intern.students
WHERE city = 'London'

UNION ALL

SELECT name
FROM intern.students
WHERE fee >= 30000;

--cleanup query

select
trim(name) as "Clean Name",
lower(
coalesce(city, 'No City')) as "Clean City",
cast(fee as text) as "Text Fee",
case 
	when fee < 30000 then 'Low'
	when fee >= 30000 and fee < 40000 then 'Medium'
	when fee >= 40000 then 'High'
	else 'Wrong'
end as "Fee Graph"
from intern.students;




