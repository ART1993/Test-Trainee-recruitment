create table performance(
	date_d DATE,
	channel VARCHAR(30),
	keyword VARCHAR(100),
	adID numeric(25),
	impressions numeric(20),
	clicks numeric(15),
	cost_add numeric(15),
	primary key (keyword)
);

create table visits_data(
	date_d DATE,
	href VARCHAR(30),
	UUID VARCHAR(100),
	page_id numeric(25),
	primary key (UUID)
);


create table leads(
	UUID numeric(50),
	PersonID VARCHAR(50),
	date_d DATE,
	primary key(PersonID)
);

create table sales(
	Person_ID VARCHAR(50),
	Product_ID VARCHAR (50),
	units numeric(20),
	value numeric(20),
	primary key(Person_ID)
);





