
Create table L_Evaluation(
Test_id varchar(25) ,
l_id varchar(100),
section_1 int,
section_2 int,
total int ,
primary key(Test_id),
foreign key(l_id) references DR_Learners(l_id)

);
show columns from L_Evaluation;

Create table Voter_info(
V_ID varchar (20) primary key,
V_name varchar(20),
V_age int check(V_age>=18),
V_email varchar(20) unique,
V_state varchar(10) default ("Kenya"),
V_religion varchar(10) not null

);
show columns from voter_info;
insert into voter_info values
('v001','Doris',29,'doris@gmail.com','','christian');
select* from voter_info;
insert into voter_info values
('v002','Doris',29,'dy@gmail.com',null ,'christian');