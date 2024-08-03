SELECT e_name
FROM employee;
SELECT *
FROM employee
WHERE e_dept= ' IT';
Update employee
Set e_age=35
Where e_id='e001';
SET SQL_SAFE_UPDATES = 0;
select*from employee;
DELETE from employee
Where e_dept='IT';

Create table DR_Learners(
l_id varchar(25) primary key,
l_name varchar(100),
l_email varchar(100),
l_age int,
l_batch varchar(10));
 select *from DR_Learners



