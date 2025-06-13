CREATE DATABASE blinkit_data;

USE blinkit_data;
    
SELECT * FROM `blinkit-grocery-data`;

SET SQL_SAFE_UPDATES = 0;

-- 1. Data Cleaning: Item_Fat_Content Standardization-- Step 1: Update inconsistent fat content values
UPDATE `blinkit-grocery-data`
SET `Item Fat Content` = CASE
    WHEN `Item Fat Content` IN ('LF', 'low fat') THEN 'Low Fat'
    WHEN `Item Fat Content` = 'reg' THEN 'Regular'
    ELSE `Item Fat Content`
END;

SELECT DISTINCT `Item Fat Content`
FROM `blinkit-grocery-data`;

SELECT * FROM `blinkit-grocery-data`;

--  A. Key Performance Indicators (KPIs)

--  1. Total Sales (in Millions)
SELECT ROUND(SUM(Sales) / 1000000, 2) AS Total_Sales_Million
FROM `blinkit-grocery-data`;

-- 2. Average Sales per Item
SELECT ROUND(AVG(Sales)) AS Avg_Sales
FROM `blinkit-grocery-data`;

 -- 3. Number of Items
SELECT COUNT(*) AS No_of_Orders
FROM `blinkit-grocery-data`;

-- 4. Average Customer Rating
SELECT ROUND(AVG(Rating), 1) AS Avg_Rating
FROM `blinkit-grocery-data`;

-- B. Total Sales by Fat Content
SELECT 
  `Item Fat Content`, 
  ROUND(SUM(Sales), 2) AS Total_Sales
FROM `blinkit-grocery-data`
GROUP BY `Item Fat Content`;

-- C. Total Sales by Item Type
SELECT 
  `Item Type`, 
  ROUND(SUM(Sales), 2) AS Total_Sales
FROM `blinkit-grocery-data`
GROUP BY `Item Type`
ORDER BY Total_Sales DESC;

-- D. Fat Content Sales by Outlet Location
SELECT 
  `Outlet Location Type`,
  ROUND(SUM(CASE WHEN `Item Fat Content` = 'Low Fat' THEN Sales ELSE 0 END), 2) AS Low_Fat,
  ROUND(SUM(CASE WHEN `Item Fat Content` = 'Regular' THEN Sales ELSE 0 END), 2) AS Regular
FROM `blinkit-grocery-data`
GROUP BY `Outlet Location Type`
ORDER BY `Outlet Location Type`;

-- E. Total Sales by Outlet Establishment Year
SELECT 
  `Outlet Establishment Year`, 
  ROUND(SUM(Sales), 2) AS Total_Sales
FROM `blinkit-grocery-data`
GROUP BY `Outlet Establishment Year`
ORDER BY `Outlet Establishment Year`;

 -- F. Percentage of Sales by Outlet Size
SELECT 
  `Outlet Size`,
  ROUND(SUM(Sales), 2) AS Total_Sales,
  ROUND(SUM(Sales) * 100 / SUM(SUM(Sales)) OVER (), 2) AS Sales_Percentage
FROM `blinkit-grocery-data`
GROUP BY `Outlet Size`
ORDER BY Total_Sales DESC;

-- G. Total Sales by Outlet Location
SELECT 
  `Outlet Location Type`, 
  ROUND(SUM(Sales), 2) AS Total_Sales
FROM `blinkit-grocery-data`
GROUP BY `Outlet Location Type`
ORDER BY Total_Sales DESC;

-- H. All Metrics by Outlet Type — Corrected:
SELECT 
  `Outlet Type`,
  ROUND(SUM(Sales), 2) AS Total_Sales,
  ROUND(AVG(Sales), 0) AS Avg_Sales,
  COUNT(*) AS No_Of_Items,
  ROUND(AVG(Rating), 2) AS Avg_Rating,
  ROUND(AVG(`Item Visibility`), 2) AS Item_Visibility
FROM `blinkit-grocery-data`
GROUP BY `Outlet Type`
ORDER BY Total_Sales DESC;
