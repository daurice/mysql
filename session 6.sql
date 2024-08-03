create database batch_2024;
use batch_2024;
create table student(
Roll_No int PRIMARY KEY,
Std_Name varchar(50),
Address varchar(250),
Mobile int,
Age int
);
insert into student (Roll_No, Std_Name, Address, Mobile, Age) values
(1, 'Harsh', 'Delhi', 987653, 18),
(2, 'Pratik', 'Bihar', 654980, 21),
(3, 'Riyanka', 'Siliguri', 1547890, 20),
(4,' Deep', 'Ramnagar', 456930,18),
(5, 'Saptarni', 'Kolkata',74630,21),
(6, 'Dhanraj', 'Gujarat', 859741,17),
(8, 'Rohit', 'Maharashtra', 91320,23),
(9, 'Niraj', 'Bengaluru', 78501, 25);

select * from student;
create table studentcourse(
course_id int,
Roll_No int 
);

insert into studentcourse (course_id,Roll_No) values

(1,1),

(2,2),

(2,3),

(3,4),

(1,5),

(4,9),

(5,10),

(4,11);
select * from studentcourse;

select student.Roll_No,student.Std_name,studentcourse.course_id
from student
inner join studentcourse
on
student.Roll_No =studentcourse.Roll_No;

select student.Roll_No,student.Std_name,studentcourse.course_id
from student
left join studentcourse
on
student.Roll_No =studentcourse.Roll_No;

select student.Roll_No, Std_name, studentcourse.course_id
from student
left join studentcourse
on
student.Roll_No = studentcourse.Roll_No;

select student.Roll_No, Std_name, studentcourse.course_id
from student
right join studentcourse
on
student.Roll_No = studentcourse.Roll_No;

select student.Roll_No, Std_name, studentcourse.course_id
from student
left join studentcourse
on
student.Roll_No = studentcourse.Roll_No
union
select student.Roll_No, Std_name, studentcourse.course_id
from student
right join studentcourse
on
student.Roll_No = studentcourse.Roll_No;