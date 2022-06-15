--select * from performance;
--select * from visits_data;
--select * from leads;
--select * from sales;

select performance.date_d, clicks , cost_add from performance
left join visits_data
on performance.date_d=visits_data.date_d;

select performance.date_d  as dates, performance.channel as channel,
	   performance.keyword as keyword, SUM(performance.clicks) as clicks,
	   SUM(performance.cost_add) as costs,COUNT(leads.uuid), SUM(sales.value) as value from performance
	   right join leads
	   on performance.date_d=leads.date_d
	   right join sales
	   on sales.date_d=performance.date_d
	   where performance.date_d is not null
	   group by dates, channel, keyword;
	   
select SUM(performance.cost_add) as total_cost,AVG(performance.cost_add) as average_cost, leads.uuid as UUID 
from performance right join leads
on performance.date_d =leads.date_d 
group by UUID

select SUM(performance.cost_add) as total_cost,AVG(performance.cost_add) as average_cost, sales.product_id  as UUID 
from performance right join sales
on performance.date_d =sales.date_d 
group by UUID
