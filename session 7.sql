Create database SchoolDB;
use SchoolDB;
create table tblStudent (ID int auto_increment primary key, StudentName varchar(250), ClassRoom char(1), Grade char(2));

insert into tblstudent (StudentName, Classroom, Grade) values 

('Nisarg Upadhyay','A','A+'),

('Nirali Upadhyay','A','A+'),

('Bharti Upadhyay','A','B+'),

('Dixit Upadhyay','B','A+'),

('Hemant Bhatt','B','D-'),

('Usha Bhatt','A','A+'),

('Shailja Chauhan','B','D'),

('Deep Chauhan','A','B+'),

('Omkar Bhatt','C','A+'),

('Rajesh Bhatt',NULL,NULL),

('Vinesh Patel',NULL,NULL);

create table tblMarks(ID integer auto_increment primary key, student_id int, subject varchar(50), Marks int);
insert into tblmarks (student_id, subject, Marks ) values (3,'Maths',100);
insert into tblmarks (student_id, subject, Marks ) values (1,'SS',80);
insert into tblmarks (student_id, subject, Marks ) values (1,'Science',90);
insert into tblmarks (student_id, subject, Marks ) values (2,'SS',45);
insert into tblmarks (student_id, subject, Marks ) values (2,'Maths',50);
insert into tblmarks (student_id, subject, Marks ) values (2,'Science',35);
insert into tblmarks (student_id, subject, Marks ) values (3,'Science',35);
select * from tblmarks;
select grade,if(grade='A+','Brilliant','Average')as label
from tblstudent;
select studentname,grade, ifnull (Grade,'absent') as attendance
from tblstudent;
select studentname,classroom, ifnull (classroom,'Not admitted') as admission
from tblstudent;

Select Id,student_id,marks,
CASE
when marks  >=' 90' then 'A+'
when marks between 75 and 89 then 'A'
when marks between 50 and 74 then 'B'
else 'C'
end as 'badge'
from tblmarks;

SELECT Id, student_id, marks,
    CASE 
        WHEN marks >= 90 THEN 'A+'
        WHEN marks BETWEEN 75 AND 89 THEN 'A'
        WHEN marks BETWEEN 50 AND 74 THEN 'B'
        ELSE 'C'
    END AS badge
FROM tblmarks;

## Marks >=90 - Badge -> A+

## Marks between 75 to 89 - Badge - A 

## Marks between 50 to 74 - Badge - B

## else Badge - C



