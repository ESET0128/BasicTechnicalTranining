-- Saurabh Kumar	|	ESET0128
-- Task 01

--Creating database with name 'meter"
create database meter;

use meter;

-- creating customer table with enteries customerID, customerName, 
-- customerAddress, region
create table customer(customerID int primary key, 
customerName varchar(20), customerAddress varchar(50), 
region varchar(10));

-- Inserting values in customer table
insert into customer values(1011, 'Saurabh', 'Mahua(Bihar)', 'North'),
(1012, 'Vinish', 'Indore(MP)', 'Central'),
(1013, 'Shivam', 'Khrja(UP)', 'North'),
(1014, 'Aman', 'Dhanbad(JH)', 'North'),
(1015, 'Aditya', 'Lucknow(UP)', 'North'),
(1016, 'Vamshi', 'GK Nagar(HYD)', 'South');


create table SmartMeterReading(meterID int, 
customerID int, Locations varchar(20), 
installedDate date, readiingDateTime datetime, 
energyConsumed float);

-- Inserting values in meter reading table
insert into SmartMeterReading values(1, 1011, 'rooftop', '2024-02-12',
'2024-04-01 12:00:00', 20.5),(2, 1012, 'basement', '2024-04-19',
'2024-05-01 10:00:00', 51.5),(3, 1013, 'rooftop', '2024-05-10',
'2024-06-01 14:25:00', 30.4),(4, 1014, 'basement', '2024-06-30',
'2024-07-01 09:30:00', 43.1),(5, 1015, 'basement', '2024-08-01',
'2024-09-01 17:05:00', 15.2),(6, 1016, 'rooftop', '2024-12-31',
'2025-02-01 10:00:00', 20.5);


-- Task 02

-- Writing query to fetch energy consumed between 10 and 50 kWh and withing specific date and time,
-- and later on excluding meter installed after "2024-06-30"
select * from SmartMeterReading where energyConsumed between 10 and 50 and 
readiingDateTime between '2024-01-01' and '2024-12-31' and installedDate <= '2024-06-30'; 
select * from SmartMeterReading
-- Task 03
-- Finding Average, max
select customerID, avg(energyConsumed) as AvgEnergyConsumed, max(energyConsumed) as MaxEnergyConsumed from SmartMeterReading 
where readiingDateTime >= '2024-01-01' group by customerID;

select * from customer;
select * from SmartMeterReading;

