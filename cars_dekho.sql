SELECT * FROM cars.car_dekho;
use cars;

-- Read Cars Data --
SELECT * FROM cars.car_dekho;

-- Total Cars: To get a count of total records --
SELECT Count(*) FROM cars.car_dekho; #7927

-- The manager asked the employee How many cars will be available in 2023? --
SELECT count(*) FROM cars.car_dekho WHERE year = '2023'; #6

-- The manager asked the employee How many cars will be available in 2020,2021,2022? --
SELECT year, count(*) FROM cars.car_dekho WHERE year BETWEEN 2020 AND 2022 group by year;

-- Clint asked me to print the total of all cars by year. I don't see all the details --
SELECT year, count(*) FROM cars.car_dekho group by year;

-- Client asked to car delers agent How many diesel cars will there be in 2020 --
SELECT count(*) FROM cars.car_dekho where year = '2020' AND fuel = 'diesel'; #20

-- Client requested a car dealer agent How petrol cars will there be in 2020? --
SELECT count(*) FROM cars.car_dekho WHERE year = '2020' AND fuel = 'petrol'; #51

-- The manager told the employee to give a print all the fuel cars (petrol, diesel and CNG) come by all year --
SELECT year, count(*) FROM cars.car_dekho WHERE fuel = 'petrol' group by year;
SELECT year, count(*) FROM cars.car_dekho WHERE fuel = 'diesel' group by year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars --
SELECT year, count(*) FROM cars.car_dekho group by year HAVING count(*)>100;

-- The manager said to the employee all cars count detais between 2015 and 2023 we ned a complete list --
SELECT count(*) FROM cars.car_dekho WHERE year BETWEEN '2015'AND '2023';

-- The manager said to the employee All cars details between 2015 to 2023 we need complete list --
SELECT * FROM cars.car_dekho WHERE year BETWEEN 2015 AND 2023;