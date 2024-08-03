CREATE DATABASE batch_db;

USE batch_db;

Create table Customers (
id INT NOT NULL,
CustomerName varchar(255),
ContactNumber int NOT NULL,
Address varchar (255),
City varchar (255),
PostalCode int,
Country varchar (255),
TotalSpending decimal(10,2));

Insert into Customers ( id, CustomerName, ContactNumber, Address, City, PostalCode, Country, TotalSpending)
Values (1,'John','1234','A-12. Frankfurt','Frankfurt','000000','Germany',15000),
(2,'Tom','3456','B-12. Texas','Texas','111111','USA',2000),
(3,'Smith','9876','C-12. Delhi','Delhi','222222','India',5000);



Insert into Customers ( id, CustomerName, ContactNumber, City, Country, TotalSpending)
Values (4,'James','6789','Chicago','USA', 9862);
Insert into Customers (id, CustomerName, ContactNumber, Address ,City , PostalCode, Country, TotalSpending)
Values ( 5,'Dennis', '1234','Bomas','Nairobi','200','Kenya',4596);
Insert into Customers (id, CustomerName, ContactNumber, Address ,City , PostalCode, Country,TotalSpending)
Values ( 6,'Dennis', '1234','Bomas','Kisumu','200','Kenya',98745);

select * from customers;

# Select Distinct Country of the Customers
select distinct(Country) from Customers;

# What are the total number of Countries that the Customers belong to?
select count(distinct(Country)) from Customers;


# What is the highest spending?
select max(TotalSpending) as MAXIMUM
from Customers;

#What is the lowest spending?
select min(TotalSpending) as MINIMUM
from customers;

#What is the average spending?
select avg(TotalSpending) as Average
from customers;

#What is the sum of Total Spending?
select sum(TotalSpending) as Total
from customers;

#What are the total number of Customers per country
select Country, count(*) as Total
from customers
group by Country;

#GroupBy Multiple Coloumns
select Country,City, count(*) as Total
from customers
group by Country,City;

select * from customers;

#Which countries have total customers greater than 1.
select Country, count(*) as Total
from customers
group by Country
having Total>1;

#Which countries have a total spending greater than 5000?
select Country, sum(TotalSpending)
from Customers
group by Country
having sum(TotalSpending)>5000;



#SubQuery
select * 
from customers
where TotalSpending in (select max(TotalSpending) from customers);







select * from customers;

#Select the minimum spending.
select min(TotalSpending) as 'MinimumSpending'
from customers;

#Find the average spending done by the customers
select avg(TotalSpending) as 'Average-Spending'
from customers;

#Find the total spending done by all customers
select sum(TotalSpending) as 'Total-Amount'
from customers;

select Country, count(*)
from customers
group by Country;

select Country,City, count(*) as Total
from customers
group by Country, City;

#Which countries have total customers greater than 1.

select Country, count(*)
from customers
group by Country
having count(*)>1;





#Which countries have a total spending greater than 5000?

select country, sum(totalspending)
from customers
group by country
having sum(totalspending)>5000;	

select * from customers;