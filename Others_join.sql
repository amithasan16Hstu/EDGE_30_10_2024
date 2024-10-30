create table countrys(country_id int not null,
country_name varchar(20),
sports_id int,
primary key(country_id)
-- foreign key(sports_id) references sports(sports_id)
);
insert into countrys(country_id,country_name)
values(1,'Bangladesh'),(2,'England'),(3,'USA'),(4,'Japan'),(5,'Korea');

create table sport(sports_id int not null,
sports_name varchar(20),
primary key(sports_id)
-- foreign key(movie_id) references movie(movie_id)
);
insert into sport(sports_id,sports_name)
values(101,'Hadudu'),(102,'Cricket'),(103,'Football'),(104,'Basketball'),(105,'Hockey');

create table movies(movie_id int not null,
movie_name varchar(20),
primary key(movie_id)
);
insert into movies(movie_id,movie_name)
values(11,'A'),(12,'B'),(13,'C'),(14,'D'),(15,'E');

-- By Outer join
select countrys.country_name,sport.sports_name
from countrys
cross join sport on countrys.sports_id=sport.sports_id;

-- By Self join
select countrys.country_name,sport.sports_id
from countrys,sport
where  countrys.sports_id <> sport.sports_id
order by sport.sports_id;



