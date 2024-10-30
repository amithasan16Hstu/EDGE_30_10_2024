-- Left Join
create table student_info(
std_id int not null,
std_name varchar(20),
course_id int,
primary key(std_id),
foreign key(course_id) references course_info(course_id)
);
insert into student_info(std_id,std_name,course_id)
values(2102043,'Amit',101),(2102044,'Porag',102),(2102045,'Utal',103),
(2102057,'Nahida',104),(2102063,'Imtyaz',105);

create table course_info(
course_id int not null,
course_name varchar(20),
primary key(course_id)
);
insert into course_info(course_id,course_name)
values(101,'C'),(102,'C++'),(103,'JAVA'),(104,'DBMS'),(105,'Python');

-- Query 1
select student_info.std_id,student_info.std_name,course_info.course_id
from student_info
left join course_info on student_info.course_id=course_info.course_id;

-- Query 2
select student_info.std_id,student_info.std_name,course_info.course_id,course_info.course_name
from student_info
left join course_info on student_info.course_id=course_info.course_id;

-- Right Join
create table student_info1(
std_id int not null,
std_name varchar(20),
course_id int,
primary key(std_id),
foreign key(course_id) references course_info1(course_id)
);
insert into student_info1(std_id,std_name,course_id)
values(2102043,'Amit',101),(2102044,'Porag',102),(2102045,'Utal',103),
(2102057,'Nahida',104),(2102063,'Imtyaz',105);

create table course_info1(
course_id int not null,
course_name varchar(20),
primary key(course_id)
);
insert into course_info1(course_id,course_name)
values(101,'C'),(102,'C++'),(103,'JAVA'),(104,'DBMS'),(105,'Python');

-- Query 1
select student_info1.std_id,student_info1.std_name,course_info1.course_id
from student_info1
right join course_info1 on student_info1.course_id=course_info1.course_id;

-- Query 2
select student_info1.std_id,student_info1.std_name,course_info1.course_id,course_info1.course_name
from student_info1
right join course_info1 on student_info1.course_id=course_info1.course_id;

-- Full Outer Join
create table student_info2(
std_id int not null,
std_name varchar(20),
course_id int,
primary key(std_id),
foreign key(course_id) references course_info2(course_id)
);
insert into student_info2(std_id,std_name,course_id)
values(2102043,'Amit',101),(2102044,'Porag',102),(2102045,'Utal',103),
(2102057,'Nahida',104),(2102063,'Imtyaz',105);

create table course_info2(
course_id int not null,
course_name varchar(20),
primary key(course_id)
);
insert into course_info2(course_id,course_name)
values(101,'C'),(102,'C++'),(103,'JAVA'),(104,'DBMS'),(105,'Python');

-- Query 1
select student_info2.std_id,student_info2.std_name,course_info2.course_id
from student_info2
cross join course_info2 on student_info2.course_id=course_info2.course_id;

-- Query 2
select student_info2.std_id,student_info2.std_name,course_info2.course_id,course_info2.course_name
from student_info2
cross join course_info2 on student_info2.course_id=course_info2.course_id;


-- Self Join
create table student_info3(
std_id int not null,
std_name varchar(20),
course_id int,
primary key(std_id),
foreign key(course_id) references course_info3(course_id)
);
insert into student_info3(std_id,std_name,course_id)
values(2102043,'Amit',101),(2102044,'Porag',102),(2102045,'Utal',103),
(2102057,'Nahida',104),(2102063,'Imtyaz',105);

create table course_info3(
course_id int not null,
course_name varchar(20),
primary key(course_id)
);
insert into course_info3(course_id,course_name)
values(101,'C'),(102,'C++'),(103,'JAVA'),(104,'DBMS'),(105,'Python');

--  Query 1
SELECT student_info3.std_id, student_info3.std_name, course_info3.course_id
FROM student_info3, course_info3
WHERE student_info3.course_id <> course_info3.course_id;

--  Query 2
SELECT student_info3.std_id, student_info3.std_name, course_info3.course_id, course_info3.course_name
FROM student_info3, course_info3
WHERE student_info3.course_id <> course_info3.course_id;

-- Solve Problem

create table country(country_id int not null,
country_name varchar(20),
sports_id int,
primary key(country_id),
foreign key(sports_id) references sports(sports_id)
);
insert into country(country_id,country_name,sports_id)
values(1,'Bangladesh',101),(2,'England',102),(3,'USA',103),(4,'Japan',104),(5,'Korea',105);

create table sports(sports_id int not null,
sports_name varchar(20),
movie_id int,
primary key(sports_id),
foreign key(movie_id) references movie(movie_id)
);
insert into sports(sports_id,sports_name,movie_id)
values(101,'Hadudu',11),(102,'Cricket',12),(103,'Football',13),(104,'Basketball',14),(105,'Hockey',15);

create table movie(movie_id int not null,
movie_name varchar(20),
primary key(movie_id)
);
insert into movie(movie_id,movie_name)
values(11,'A'),(12,'B'),(13,'C'),(14,'D'),(15,'E');

-- By Outer join
select country.country_name,sports.sports_name
from country
cross join sports on country.sports_id=sports.sports_id;

-- By Self join
select country.country_name,sports.sports_name
from country,sports
where  country.sports_id <> sports.sports_id;






