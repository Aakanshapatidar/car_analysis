<<<<<<< HEAD

CREATE TABLE used_cars (
    Brand VARCHAR(50),
    Model VARCHAR(100),
    Year INT,
    Mileage_kmpl FLOAT,
    Engine_CC FLOAT,
    Horsepower FLOAT,
    Fuel_Type VARCHAR(20),
    Transmission VARCHAR(20),
    Owner_Type VARCHAR(20),
    Color VARCHAR(30),
    City VARCHAR(50),
    Kms_Driven INT,
    Insurance_Valid VARCHAR(10),
    Service_History VARCHAR(10),
    Accidents VARCHAR(10),
    Tax_Paid VARCHAR(10),
    Number_of_Doors INT,
    Seats INT,
    Registration_Age INT,
    Price FLOAT
);
DROP TABLE used_cars;

CREATE TABLE used_cars (
    brand VARCHAR(50),
    model VARCHAR(100),
    year INT,
    mileage_kmpl FLOAT,
    engine_cc FLOAT,
    horsepower FLOAT,
    fuel_type VARCHAR(20),
    transmission VARCHAR(20),
    owner_type VARCHAR(20),
    color VARCHAR(30),
    city VARCHAR(50),
    kms_driven FLOAT,
    insurance_valid VARCHAR(20),
    service_history VARCHAR(20),
    accidents VARCHAR(20),
    tax_paid VARCHAR(20),
    number_of_doors FLOAT,
    seats FLOAT,
    registration_age FLOAT,
    price FLOAT
);

--1. Total Cars Available
SELECT COUNT(*) AS Total_Cars
FROM used_cars;

--2. Total Brands Available
SELECT COUNT(DISTINCT Brand) AS Total_Brands
FROM used_cars;

--3. Average Car Price
SELECT CAST(ROUND(CAST(AVG(Price) AS numeric), 2) AS numeric)
FROM used_cars;

--4. Top 10 Most Expensive Cars
SELECT Brand,
       Model,
       CAST(Price AS NUMERIC(12,2)) AS Price
FROM used_cars
ORDER BY Price DESC
LIMIT 10;

--5. Brand-wise Average Price
SELECT Brand,
       ROUND(AVG(Price)::numeric, 2) AS Avg_Price
FROM used_cars
GROUP BY Brand
ORDER BY Avg_Price DESC;

--6. Most Popular Car Brands
SELECT Brand,
       COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY Brand
ORDER BY Total_Cars DESC;

--7. Fuel Type Distribution
SELECT Fuel_Type,
       COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY Fuel_Type;

--8. Transmission Type Distribution
SELECT Transmission,
       COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY Transmission;

--9. City-wise Car Listings
SELECT City,
       COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY City
ORDER BY Total_Cars DESC;

--10. City-wise Average Price
SELECT City,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY City
ORDER BY Avg_Price DESC;

--11. Average Price by Fuel Type
SELECT Fuel_Type,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY Fuel_Type
ORDER BY Avg_Price DESC;

--12. Average Price by Transmission
SELECT Transmission,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY Transmission;

--13. Cars with Valid Insurance
SELECT Insurance_Valid,
       COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY Insurance_Valid;

--14. Accident Impact on Price
SELECT Accidents,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY Accidents;

--15. Top 5 Cities with Highest Average Price
SELECT City,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY City
ORDER BY Avg_Price DESC
LIMIT 5;

--16. Car Age Analysis
SELECT (2026 - Year) AS Car_Age,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY Car_Age
ORDER BY Car_Age;

--17. Top Brand in Each City
SELECT City, Brand, COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY City, Brand
ORDER BY City, Total_Cars DESC;

--18. Average Mileage by Fuel Type
SELECT Fuel_Type,
       ROUND(AVG(Mileage_kmpl),2) AS Avg_Mileage
FROM used_cars
=======

CREATE TABLE used_cars (
    Brand VARCHAR(50),
    Model VARCHAR(100),
    Year INT,
    Mileage_kmpl FLOAT,
    Engine_CC FLOAT,
    Horsepower FLOAT,
    Fuel_Type VARCHAR(20),
    Transmission VARCHAR(20),
    Owner_Type VARCHAR(20),
    Color VARCHAR(30),
    City VARCHAR(50),
    Kms_Driven INT,
    Insurance_Valid VARCHAR(10),
    Service_History VARCHAR(10),
    Accidents VARCHAR(10),
    Tax_Paid VARCHAR(10),
    Number_of_Doors INT,
    Seats INT,
    Registration_Age INT,
    Price FLOAT
);
DROP TABLE used_cars;

CREATE TABLE used_cars (
    brand VARCHAR(50),
    model VARCHAR(100),
    year INT,
    mileage_kmpl FLOAT,
    engine_cc FLOAT,
    horsepower FLOAT,
    fuel_type VARCHAR(20),
    transmission VARCHAR(20),
    owner_type VARCHAR(20),
    color VARCHAR(30),
    city VARCHAR(50),
    kms_driven FLOAT,
    insurance_valid VARCHAR(20),
    service_history VARCHAR(20),
    accidents VARCHAR(20),
    tax_paid VARCHAR(20),
    number_of_doors FLOAT,
    seats FLOAT,
    registration_age FLOAT,
    price FLOAT
);

--1. Total Cars Available
SELECT COUNT(*) AS Total_Cars
FROM used_cars;

--2. Total Brands Available
SELECT COUNT(DISTINCT Brand) AS Total_Brands
FROM used_cars;

--3. Average Car Price
SELECT CAST(ROUND(CAST(AVG(Price) AS numeric), 2) AS numeric)
FROM used_cars;

--4. Top 10 Most Expensive Cars
SELECT Brand,
       Model,
       CAST(Price AS NUMERIC(12,2)) AS Price
FROM used_cars
ORDER BY Price DESC
LIMIT 10;

--5. Brand-wise Average Price
SELECT Brand,
       ROUND(AVG(Price)::numeric, 2) AS Avg_Price
FROM used_cars
GROUP BY Brand
ORDER BY Avg_Price DESC;

--6. Most Popular Car Brands
SELECT Brand,
       COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY Brand
ORDER BY Total_Cars DESC;

--7. Fuel Type Distribution
SELECT Fuel_Type,
       COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY Fuel_Type;

--8. Transmission Type Distribution
SELECT Transmission,
       COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY Transmission;

--9. City-wise Car Listings
SELECT City,
       COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY City
ORDER BY Total_Cars DESC;

--10. City-wise Average Price
SELECT City,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY City
ORDER BY Avg_Price DESC;

--11. Average Price by Fuel Type
SELECT Fuel_Type,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY Fuel_Type
ORDER BY Avg_Price DESC;

--12. Average Price by Transmission
SELECT Transmission,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY Transmission;

--13. Cars with Valid Insurance
SELECT Insurance_Valid,
       COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY Insurance_Valid;

--14. Accident Impact on Price
SELECT Accidents,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY Accidents;

--15. Top 5 Cities with Highest Average Price
SELECT City,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY City
ORDER BY Avg_Price DESC
LIMIT 5;

--16. Car Age Analysis
SELECT (2026 - Year) AS Car_Age,
       ROUND(AVG(Price),2) AS Avg_Price
FROM used_cars
GROUP BY Car_Age
ORDER BY Car_Age;

--17. Top Brand in Each City
SELECT City, Brand, COUNT(*) AS Total_Cars
FROM used_cars
GROUP BY City, Brand
ORDER BY City, Total_Cars DESC;

--18. Average Mileage by Fuel Type
SELECT Fuel_Type,
       ROUND(AVG(Mileage_kmpl),2) AS Avg_Mileage
FROM used_cars
>>>>>>> a901cd194c201223fdfeeeb1b0add28e604babc9
GROUP BY Fuel_Type;