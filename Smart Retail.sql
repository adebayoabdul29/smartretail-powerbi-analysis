CREATE DATABASE Superstore

--convert Data Types--
ALTER TABLE Superstore
ALTER COLUMN Order_Date DATE;

ALTER TABLE Superstore
ALTER COLUMN Ship_Date DATE;

ALTER TABLE Superstore
ALTER COLUMN Postal_Code VARCHAR(10);

--removing duplicates--
DELETE FROM Superstore
WHERE Row_ID NOT IN (
   SELECT MIN(Row_ID)
   FROM Superstore
   GROUP BY Row_ID
);
--Validating discount range--
SELECT *
FROM Superstore
WHERE Discount < 0 OR Discount > 1;

--Validating data logic--
SELECT *
FROM Superstore
WHERE Ship_Date < Order_Date;

--verifying location--
SELECT City, State, COUNT(DISTINCT Postal_Code)
FROM Superstore
GROUP BY City, State
HAVING COUNT(DISTINCT Postal_Code) > 1;

--Top 10 Products sales--
SELECT Top 10 Product_Name, SUM(Sales)
FROM Superstore
GROUP BY Product_Name
ORDER BY SUM(Sales) DESC;

SELECT TOP 10 
    Product_Name, 
    SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC;

--Top 10 Products Profits--
SELECT TOP 10 
    Product_Name, 
    SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_Profit DESC;

--High saales but negative profit--
SELECT 
    Product_Name, 
    SUM(Sales) AS [Total Sales], 
    SUM(Profit) AS [Total Profit]
FROM Superstore
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY [Total Profit] ASC;

--Best Regions / States / Cities--
SELECT 
    Region, 
    SUM(Sales) AS [Total Sales], 
    SUM(Profit) AS [Total Profit]
FROM Superstore
GROUP BY Region
ORDER BY [Total Sales] DESC;

SELECT 
    City, 
    SUM(Sales) AS [Total Sales], 
    SUM(Profit) AS [Total Profit]
FROM Superstore
GROUP BY City
ORDER BY [Total Sales] DESC;

SELECT 
    State, 
    SUM(Sales) AS [Total Sales], 
    SUM(Profit) AS [Total Profit]
FROM Superstore
GROUP BY State
ORDER BY [Total Sales] DESC;

--Regions with High Sales but Low Profit--
SELECT 
    Region, 
    SUM(Sales) AS [Total Sales], 
    SUM(Profit) AS [Total Profit]
FROM Superstore
GROUP BY Region
HAVING SUM(Profit) <= 0
ORDER BY [Total Profit] ASC;

--Shipping Modes Most Used & Most Profitable--
SELECT 
    [Ship_Mode], 
    COUNT([Order_ID]) AS UsageCount, 
    SUM(Profit) AS TotalProfit
FROM Superstore
GROUP BY [Ship_Mode]
ORDER BY UsageCount DESC;
