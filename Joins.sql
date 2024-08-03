use batch_2024;

create table student(
Roll_No int PRIMARY KEY,
Std_Name varchar(50),
Address varchar(250),
Mobile int,
Age int
);

insert into student values
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
select * from studentcourse;
insert into studentcourse values
(1,1),
(2,2),
(2,3),
(3,4),
(1,5),
(4,9),
(5,10),
(4,11);

alter table student
rename column Roll to Roll_No;

select * from studentcourse;
#INNER JOIN
select student.Roll_No, Std_name, studentcourse.course_id
from student
inner join studentcourse
on
student.Roll_No = studentcourse.Roll_No;

#LEFT OUTER
select student.Roll_No, Std_name, studentcourse.course_id
from student
left join studentcourse
on
student.Roll_No = studentcourse.Roll_No;

#RIGHT OUTER
select student.Roll_No, Std_name, studentcourse.course_id
from student
right join studentcourse
on
student.Roll_No = studentcourse.Roll_No;

use batch_2024;
 
select student.Roll_No, Std_name, studentcourse.course_id
from student
full join studentcourse
on
student.Roll_No = studentcourse.Roll_No;


#FULL OUTER
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

#CROSS JOIN

use batch_2024;
select * from student;
select * from studentcourse;

select student.Roll_No, student.Std_Name, studentcourse.course_id
from student
cross join studentcourse; 


#CROSS JOIN with ON works same as as INNER JOIN
select student.Roll_No, student.Std_Name, studentcourse.course_id
from student
cross join studentcourse
on
student.Roll_No = studentcourse.Roll_No;


#INNER JOIN   ---- common rows
select s.Roll_no, s.Std_Name, s.Age, sc.course_id
from student s
inner join studentcourse sc
on 
s.Roll_No = sc.Roll_No;

select * from student;
select * from studentcourse;

#LEFT OUTER   
select s.Roll_no, s.Std_Name, s.Age, sc.course_id
from student s
left join studentcourse sc
on
s.Roll_No = sc.Roll_No;


#RIGHT OUTER
select s.Roll_No, s.Std_Name, sc.course_id
from student s
right join studentcourse sc
on
s.Roll_No = sc.Roll_No;