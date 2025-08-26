CREATE DATABASE ORG1234;
SHOW DATABASES;
USE ORG1234;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
-- 1.⁠ ⁠Find workers not in HR or Admin with salary between 70000 and 300000.

select worker_id,first_name from worker where department not in ('hr','ADMIN')and salary between 70000 and 300000;

-- 2.⁠ ⁠Find workers with first name starting with 'V' and salary greater than or equal to 200000

select worker_id, first_name from worker where first_name like 'V%' and salary >= 200000;

-- 3.⁠ ⁠Find workers not in Admin with salary < 100000.

select worker_id , first_name from worker where department not in ('admin') and salary <100000;



