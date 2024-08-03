Create Database Batch_26A;
use Batch_26A;
use batch_26a;
Create Table employee(
e_id varchar(10),
e_name varchar(50),
e_age int,
e_email varchar(20),
e_dept varchar(10),
e_city varchar(15));
show columns from employee;
insert into employee values
('e001','Doris',29,'doris@gmail.com','IT','Naivasha');
insert into employee (e_id,e_name,e_age,e_email,e_dept,e_city)values
('e002','David',30,'david@gmail.com','business','capetown'),
('e003','Jacob',30,'jacob@gmail.com','IT','Naivasha'),
('e004','Mary',34,'mary@gmail.com','credit','ireland'),
('e005','Sharon',25,'sharon@gmail.com','Med','Nyeri'),
('e006','Kelvin',29,'kelvin@gmail.com','agri','Nairobi'),
('e007','Lee',23,'lee@gmail.com','HR','Nakuru'),
('e008','Esther',45,'esther@gmail.com','Med','Nyeri'),
('e009','winne',26,'winne@gmail.com','IT','Naivasha'),
('e010','Sam',21,'sam@gmail.com','operations','Nairobi');
select* from employee;

alter table employee add salary int;
show columns from employee;
alter table employee modify column e_email varchar(50);
show columns from employee;
alter table employee drop column e_dept;
show columns from employee;
alter table employee add e_dept varchar(10);
show columns from employee;
alter table employee rename column e_city to e_address;
show columns from employee;
rename Table employee to workers;
drop table workers;

