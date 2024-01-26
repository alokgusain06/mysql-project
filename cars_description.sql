create schema cars;
use cars;
-- READ DATA--
select*from car_dekho;
-- Total cars; To get a count of total records;
select count(*) from car_dekho;
-- The manager asked the employee How many cars will be available in 2023--;
select count(*) from car_dekho where year  =2023;
-- The manager asked the amployee how many cars is available in 2020,2021,2022--;
select count(*) from car_dekho where year  =2020;
select count(*) from car_dekho where year  =2021;
select count(*) from car_dekho where year  =2022;
-- GROUP BY--
select count(*) from car_dekho where year in (2020,2021,2022) group by year; 
-- client asked me to print the total of all cars by year: I don't see all details;
select year, count(*) from car_dekho group by year;
-- client asked to car dealer agent how many diesal cars will there be in 2020--;
select count(*) from car_dekho where year =2020 and fuel="diesel";
  
  -- client requested a car delear agent how many petrol ears will br there be in 2020--
  select count(*) from car_dekho where year=2020 and fuel="petrol";
  -- The manager told the employee to give a print all fuels cars (petrol,dieseland cng come--
   select count(*) from car_dekho where fuel="petrol" group by year;
   select count(*) from car_dekho where fuel="diesel" group by year;
   select count(*) from car_dekho where fuel="CNG" group by year;
  -- manager said there were more then 100 cars in a given year, which year had more than 100cars--;
   select year, count(*) from car_dekho group by year having count(*)>100;
      select year, count(*) from car_dekho group by year having count(*)<50;
  -- the manager said to employee all cars-sount details between 2015 and 2023 we need a complete list--;
     select count(*) from car_dekho  where  year between 2015 and 2023;
-- the manager said to employee all cars details between 2015 to 2023 all need complete--
   select count(*) from car_dekho where year between 2015 and 2023;
  
  
