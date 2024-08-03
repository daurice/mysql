create database SchoolDB;
use SchoolDB;
create table tblStudent (ID int auto_increment primary key, StudentName varchar(250), ClassRoom char(1), Grade char(2));
create table tblMarks(ID integer auto_increment primary key, student_id int, subject varchar(50), Marks int);



insert into tblstudent (StudentName,ClassRoom,Grade) values ('Nisarg Upadhyay','A','A+');
insert into tblstudent (StudentName,ClassRoom,Grade) values ('Nirali Upadhyay','A','A+');
insert into tblstudent (StudentName,ClassRoom,Grade) values ('Bharti Upadhyay','A','B+');
insert into tblstudent (StudentName,ClassRoom,Grade) values ('Dixit Upadhyay','B','A+');
insert into tblstudent (StudentName,ClassRoom,Grade) values ('Hemant Bhatt','B','D-');
insert into tblstudent (StudentName,ClassRoom,Grade) values ('Usha Bhatt','A','A+');
insert into tblstudent (StudentName,ClassRoom,Grade) values ('Shailja Chauhan','B','D');
insert into tblstudent (StudentName,ClassRoom,Grade) values ('Deep Chauhan','A','B+');
insert into tblstudent (StudentName,ClassRoom,Grade) values ('Omkar Bhatt','C','A+');
insert into tblstudent (StudentName,ClassRoom,Grade) values ('Rajesh Bhatt',NULL,NULL);
insert into tblstudent (StudentName,ClassRoom,Grade) values ('Vinesh Patel',NULL,NULL);


insert into tblmarks (student_id, subject, Marks ) values (3,'Maths',100);
insert into tblmarks (student_id, subject, Marks ) values (1,'SS',80);
insert into tblmarks (student_id, subject, Marks ) values (1,'Science',90);
insert into tblmarks (student_id, subject, Marks ) values (2,'SS',45);
insert into tblmarks (student_id, subject, Marks ) values (2,'Maths',50);
insert into tblmarks (student_id, subject, Marks ) values (2,'Science',35);
insert into tblmarks (student_id, subject, Marks ) values (3,'Science',35);

select * from tblmarks;
select * from tblstudent;

# Label the student as Brilliant or average depending upon the Grade
select ID, StudentName, Grade, if(Grade='A+', 'Brilliant Student', 'Average Student') as Student_Type
from tblstudent;

#Multiple if Statement on two coloumns
#Whereever Classroom or grade or classroom is not present label the student as Absent

select * from tblstudent;

select ID, StudentName, if(ClassRoom is NULL, 'Absent', ClassRoom) as Classroom, if(Grade is NULL, 'Absent', Grade) as Grade
from tblstudent;


#IFNULL Condition

select ID, StudentName, ifnull(Classroom, 'Absent') as CLASSROOM, ifnull(Grade, '-') as GRADE
from tblstudent;

#NULLIF Condition

select nullif('Aakash','Aakash');
select nullif('Aakash','Ashwini');

select nullif(50,100);

select nullif(20,20);


select nullif('Digital', 'Regenesys');

#CASE Condition

Select distinct(Grade)
from tblstudent;

#If student has Grade A+ - Intelligent
#				Grade B+ - Average
#				Grade D - Very Poor
#				Grade D- - Failed

Select ID, StudentName, Grade,
CASE Grade
when 'A+' then 'Intelligent'
when 'B+' then 'Average'
when 'D' then 'Very Poor'
when 'D-' then 'Failed'
else 'Not Present'
end as 'Label'
from tblstudent;

################################################### STRING FUNCTIONS #############################################################

SELECT ASCII('ta');    #returns ASCII value of the left-most character.

SELECT length('Aakash');  #returns the length of the string.

SELECT concat('Aakash', ' Kadam') as FullName;   #combines two strings

SELECT reverse('Nitin') as Revers;   #reverses the characters in the string

SELECT locate('g', 'Morning');  #Locates the given letter in the string

SELECT lower('AAKASH');  #This function is used to convert the upper case string into lower case.

SELECT upper('digital'); #This function is used to convert the lower case string into upper case.

SELECT LTRIM('    asasqwertydfgdasas');  #This function is used to remove blank spaces on the left. 

SELECT RTRIM("Aakash     ");  #This function is used to remove blank spaces on the right.

SELECT substr('AakashKadam', 1,6);  #This function is used to take out s substring from a given string.

##################################################### DATE AND TIME FUNCTIONS ########################################################

SELECT current_date();            #Tells us the current date in YYYY-MM-DD format

SELECT current_time();           #Tells us HH-MM-SS format

SELECT current_timestamp();  #Gives us the current timestamp

SELECT now();     #Gives us the current timestamp

SELECT dayofmonth("2024-02-15");

SELECT dayofweek("2024-02-15");

SELECT dayofyear("2024-02-15");


SELECT ID,StudentName, Grade, if(Grade='A+','Brilliant','Average') as Label
from tblstudent;

select * from tblmarks;

# Marks < 50 -> 'Failed'
#Marks > 50 -> 'Passed'     "Status"

select student_id, subject, if(Marks>=50, 'Passed', 'Failed') as Status
from tblmarks;





#ClassRoom -> Admitted
#Null -> Not Admitted    <Admissions>

select ID, StudentName, ifnull(Classroom,'Not Admitted') as Admission
from tblstudent;

select ID, StudentName, ifnull(Grade,'Absent') as Attendance
from tblstudent;


select * from tblstudent;

## Grade = A+   -> Brilliant
## Grade = A -> Good
##Grade = B+ -> Average
##Grade = C -> Poor
## Any other grade -> Very Poor

select ID, StudentName, Grade,
CASE Grade
when 'A+' then 'Brilliant'
when 'A' then 'Good'
when 'B+' then 'Average'
when 'C' then 'Poor'
else 'Very Poor'
END as 'Label'
from tblstudent;


select * from tblmarks;

## Marks >=90 - Badge -> A+
## Marks between 75 to 89 - Badge - A 
## Marks between 50 to 74 - Badge - B
## else Badge - C

select student_id, subject, Marks,
CASE 
when Marks>=90 then 'A+'
when Marks>=75 and Marks<90 then 'A'
when Marks>=50 and Marks<75 then 'B'
else 'C'
end as Label
from tblmarks;

SELECT ascii('A');
SELECT ascii('Aakash');

#length   "Digital Regenesys"
select length("Digital Regenesys") as LENGTH;

#CONCAT -  Combine two strings

select concat("1001", "AK") as EmpID;

select reverse("Muza") as Palindrome;


#'Z'  ---> Zion

select locate("a", "Zion");

use batch_2024;

select * from student;

## Std_ID   Roll_NO_StdName    ---> 1_Harsh;  <concat>
SELECT Roll_No, Std_Name, Age, concat(Roll_No,'_',Std_Name) as Std_ID
from student;

##Which student's name has the maximun length?  Hint - Aggreagate Function + String Function

SELECT max(length(Std_Name)) from student;


SELECT Std_Name, MAX(LENGTH(Std_Name)) AS max_length 
FROM Student;

##ContactDetails - Address - Mobile?

SELECT Std_Name, concat(Address,'-',Mobile) as ContactDetails
from student;