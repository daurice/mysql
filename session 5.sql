select min(TotalSpending)as 'min spending'
from customers;

select max(TotalSpending)as 'maximum spending'
from customers;

select sum(TotalSpending) as 'Total spending',max(TotalSpending)as 'maximum spending', min(TotalSpending)as 'min spending'
from customers;


