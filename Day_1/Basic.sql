create database college;

use college;

create table student(
 id int primary key,
 name varchar(20),
 age int not null

);

insert into student values(1, "tanushk", 20);

select * from student;