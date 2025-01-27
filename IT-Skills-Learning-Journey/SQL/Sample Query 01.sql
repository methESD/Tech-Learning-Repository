select * from sales;

select SaleDate, Amount,Customers from sales

select SaleDate, Amount, Boxes, Amount / Boxes from sales

select SaleDate, Amount, Boxes, Amount / Boxes as 'Amount per Box' from sales;

select * from sales
where Amount > 10000;

select * from sales
where Amount > 10000
order by Amount desc

select * from sales
where GeoID='G1'
order by PID, Amount desc;

select * from sales
where Amount > 10000 and saleDate >= '2022-01-01'

select SaleDate, Amount from sales
where Amount > 10000 and year(saleDate) = 2022
order by Amount desc

select * from sales
where Boxes > 0 and Boxes <= 50
Order by Boxes;

select * from sales
where Boxes between 0 and 50
Order by Boxes;

select SaleDate,Amount,Boxes, weekday(SaleDate) as 'Day of week' from sales
where weekday(SaleDate) = 4;

select * from people

select * from people
where team= 'Delish' or team = 'Jucies' ; 

select * from people
where Team in ('Delish','Jucies')

select * from people
where Salesperson like 'B%';

select * from people
where Salesperson like '%B%';

select * from sales

select SaleDate, Amount,
		case 	when Amount < 1000 then 'Under 1k'
				when Amount < 5000 then 'Under 5k'
                when Amount < 10000 then 'Under 10k'
			else '10k or more'
		end as 'Amount category'
from sales;
