create database customer_db;
use customer_db;
select count(*) from customer_data;
 -- Total Customers
SELECT COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM Customer_Data;

-- Churned Customers
SELECT COUNT(DISTINCT Customer_ID) AS Churned_Customers
FROM Customer_Data
WHERE Customer_Status = 'Churned';

-- Active Customers
SELECT COUNT(DISTINCT Customer_ID) AS Active_Customers
FROM Customer_Data
WHERE Customer_Status != 'Churned';

-- Total Revenue
SELECT round(SUM(Total_Revenue),2) AS Total_Revenue
FROM Customer_Data;

-- Customer Count by Age Group
SELECT Age, COUNT(Customer_ID) AS Customer_Count
FROM Customer_Data
GROUP BY Age;

-- Customer Distribution by Status 
SELECT Customer_Status, COUNT(Customer_ID) AS Customer_Count
FROM Customer_Data
GROUP BY Customer_Status;

-- Customer_Status by Gender 
SELECT Gender, Customer_Status, COUNT(Customer_ID) AS Customer_Count
FROM Customer_Data
GROUP BY Gender, Customer_Status;

-- Revenue by Gender
SELECT Gender, round(SUM(Total_Revenue),2) AS Total_Revenue
FROM Customer_Data
GROUP BY Gender;

-- Revenue by customer_status
SELECT Customer_Status, round(SUM(Total_Revenue),2) AS Total_Revenue
FROM Customer_Data
GROUP BY Customer_Status;

-- Customers by State
SELECT State, COUNT(Customer_ID) AS Customer_Count
FROM Customer_Data
GROUP BY State;