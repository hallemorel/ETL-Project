create table NY_only (
	state character varying(2) NOT NULL,
	gender varchar (1) not null,
	year int not null,
	name character varying(45) NOT NULL,
	count int not null
);

create table NYC_names (
	BRTH_YR int not null,
	GNDR varchar (8) not null,
	ETHCTY varchar (65) not null,
	NM character varying(65) NOT NULL,
	CNT int not null,
	RNK int not null
);

create table popular_name_1 (
	Year_of_Birth int not null,
	Gender varchar (8) not null,
	Ethnicity varchar (65) NOT NULL,
	Childs_First_Name varchar(65) NOT NULL,
	Count int not null,
	Rank int not null
);

create table national (
	Year int not null,
	Name varchar (65) not null,
	Gender varchar (1) not null,
	Count int not null

);

--Output to generate data for 2014 from postgress
select brth_yr, gndr, nm, 
sum(cnt) as "Count", 
sum(rnk) as "Rank"
from nyc_names
where brth_yr = 2014 
group  by brth_yr,gndr,nm;

create table popular_first_names (
index int not null,
Name varchar (65) not null,
Gender varchar (1) not null,
National_Count numeric not null,
National_Rank numeric not null,
City_Count numeric not null,
City_Rank numeric not null,
State_Count numeric not null,
State_Rank numeric not null
);

