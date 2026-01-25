create database system1;

use system1;


create table student(
id int primary key,
name varchar(50),
grade char(2),
city varchar(20)
);

create table dept(
id int primary key,
name varchar(50)
);

insert into dept 
values
(101, "English"),
(102, "IT");

update dept 
set id =103
where id =102;

select * from dept;

create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
);

insert into teacher
values
(101, "Uppu", 101),
(102,"annan", 102);


insert into student
(id ,name, grade, city)
values
(101, "Tanushk", "77", "mumbai"),
(102, "Manish", "85", "pune"),
(103, "Aaryan", "52", "Delhi" ),
(104, "Pratiksha", "32", "Mumbai" ),
(105, "Aaryan", "98", "pune" ),
(106, "Aaryan", "74", "Delhi" ),
(107, "Aaryan", "45", "mumbai" ),
(108, "Aaryan", "63", "Delhi" ),
(109, "Aaryan", "52", "Delhi" ),
(110, "Aaryan", "88", "Delhi" );


select *from student;

select city ,avg(grade)
from student
group by city
order by avg(grade);