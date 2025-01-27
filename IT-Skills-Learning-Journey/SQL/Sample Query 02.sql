
select * from sales;

select * from people;
select * from geo;

select s.SaleDate, s.Amount , P.Salesperson, p.SPID, s.SPID
from sales s
join people p on p.SPID = s.SPID;

Select s.SaleDate, s.Amount, pr.Product
from sales s 
left join Products pr on pr.PID = s.PID;

select s.SaleDate, s.Amount , p.Salesperson, pr.Product , p.Team
from sales s
join people p on p.SPID = s.SPID
join Products pr on pr.PID = s.PID;

select s.SaleDate, s.Amount , p.Salesperson, pr.Product , p.Team
from sales s
join people p on p.SPID = s.SPID
join Products pr on pr.PID = s.PID
where s.Amount < 100 
and p.Team = 'Delish';

select s.SaleDate, s.Amount , p.Salesperson, pr.Product , p.Team
from sales s
join people p on p.SPID = s.SPID
join Products pr on pr.PID = s.PID
where s.Amount < 100 
and p.Team = '';

select s.SaleDate, s.Amount , p.Salesperson, pr.Product , p.Team
from sales s
join people p on p.SPID = s.SPID
join Products pr on pr.PID = s.PID
join geo g on g.GeoID = s.GeoID
where s.Amount < 100 
and g.Geo in ('New Zealand' , 'India')
order by SaleDate;

