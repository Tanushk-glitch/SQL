-- create a database for your company named xyz
-- and enter details of id,name and salary.

create database xyz;

use xyz;
create table info(
  id int primary key,
  name  varchar(50),
  salary int 
);

insert into info
(id, name, salary)
values
(1," tanushk", 25000),
(2," Manish", 35000),
(3," Yash", 35000);

select * from info;