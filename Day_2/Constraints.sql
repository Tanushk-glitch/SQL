create database university;

use university;

create table students(
 rollno  int primary key,
 name varchar(20),
 marks int not null,
 grade varchar(1),
 city varchar(20)
);

insert into students
(rollno, name, marks, grade, city)
values
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi");

insert into students
values
(107, "Manish", 85, "B", "Mumbai"),
(105, "Tanushk", 85, "B", "Mumbai");
select * from students;

select * 
from students
where marks > 90;