show datestyle;
set datestyle to MDY;
--drop table performance;
create table performance(
	id SERIAL primary key,
	date_d DATE,
	channel VARCHAR(30),
	keyword VARCHAR(100),
	adID numeric(25),
	impressions numeric(20),
	clicks numeric(15),
	cost_add numeric(15,10)
);
copy performance(date_d,channel,adID,keyword,impressions,clicks,cost_add)
FROM '/home/alejandro/repos/DataSets/Challenge_python/DB/performance.csv'
DELIMITER ','
CSV HEADER;
select * from performance;

--drop table visits_data;
create table visits_data(
	id serial primary key,
	date_d DATE,
	href VARCHAR(5000),
	UUID VARCHAR(100) ,
	page_id VARCHAR(100),
	ip_adress inet
);
copy visits_data(date_d,UUID,page_id,ip_adress,href)
FROM '/home/alejandro/repos/DataSets/Challenge_python/DB/tracking.csv'
DELIMITER ','
CSV HEADER;
select * from visits_data;

--drop table leads;
create table leads(
	id serial primary key,
	UUID VARCHAR(100),
	PersonID VARCHAR(100),
	date_d DATE,
	product_ID VARCHAR(100)
);
copy leads(UUID,date_d,product_ID,PersonID)
FROM '/home/alejandro/repos/DataSets/Challenge_python/DB/leads.csv'
DELIMITER ','
CSV HEADER;
select * from leads;

--drop table sales;
create table sales(
	id serial primary key,
	date_d DATE,
	Person_ID VARCHAR(50),
	Product_ID VARCHAR (50),
	units numeric(20),
	value numeric(20)
);

copy sales(date_d,Person_ID,Product_ID,units,value)
FROM '/home/alejandro/repos/DataSets/Challenge_python/DB/sales.csv'
DELIMITER ','
CSV HEADER;
select * from sales;
