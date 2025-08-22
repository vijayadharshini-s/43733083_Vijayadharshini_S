create database students;
use students;
create table ece(
register_number int,
name varchar(50),
dept varchar(50),
cgpa float,
ad_year int);
select * from ece;

create table cse(
register_number int,
name varchar(50),
dept varchar(50),
cgpa float,
ad_year int);
select* from cse;
insert into ece (register_number, name, dept, cgpa, ad_year) VALUES
(1001, 'Ram', 'ECE', 8.2, 2021),
(1002, 'Sam', 'ECE', 7.9, 2021),
(1003, 'Abi', 'ECE', 8.5, 2022),
(1004, 'Raj', 'ECE', 7.6, 2023),
(1005, 'Leo', 'ECE', 9.1, 2023);

insert into  cse (register_number, name, dept, cgpa, ad_year) VALUES
(2001, 'Kav', 'CSE', 8.8, 2021),
(2002, 'Dev', 'CSE', 7.5, 2021),
(2003, 'Ana', 'CSE', 8.3, 2022),
(2004, 'Ben', 'CSE', 7.9, 2023),
(2005, 'Sri', 'CSE', 9.0, 2023);

select * from ece;
select * from cse;
SET SQL_SAFE_UPDATES = 0;
update ece
set register_number = register_number - 900
where register_number BETWEEN 1001 AND 1005;
update cse
set register_number = register_number - 900
where register_number BETWEEN 2001 AND 2005;
select * from ece;
select * from cse;







