-- Total Sales, Profit, and Returned Orders %
SELECT
    SUM(o.Sales) AS Total_Sales,
    SUM(o.Profit) AS Total_Profit,
    COUNT(r.OrderID) * 1.0 / COUNT(o.OrderID) AS Percent_Returned_Orders
FROM Orders o
LEFT JOIN Returns r
    ON o.OrderID = r.OrderID;

-- Sales, Profit, and Returns per Year
SELECT
    YEAR(o.OrderDate) AS Order_Year,
    SUM(o.Sales) AS Total_Sales,
    SUM(o.Profit) AS Total_Profit,
    COUNT(r.OrderID) * 1.0 / COUNT(o.OrderID) AS Percent_Returned_Orders
FROM Orders o
LEFT JOIN Returns r
    ON o.OrderID = r.OrderID
GROUP BY YEAR(o.OrderDate)
ORDER BY Order_Year;

-- Product Performance: Sales and Profit
SELECT
    o.ProductName,
    o.Category,
    o.SubCategory,
    SUM(o.Sales) AS Total_Sales,
    SUM(o.Profit) AS Total_Profit,
    COUNT(r.OrderID) * 1.0 / COUNT(o.OrderID) AS Percent_Returned
FROM Orders o
LEFT JOIN Returns r
    ON o.OrderID = r.OrderID
GROUP BY o.ProductName, o.Category, o.SubCategory
ORDER BY Total_Profit DESC;

-- Performance by Customer Segment
SELECT
    o.Segment,
    SUM(o.Sales) AS Total_Sales,
    SUM(o.Profit) AS Total_Profit,
    COUNT(r.OrderID) * 1.0 / COUNT(o.OrderID) AS Percent_Returned
FROM Orders o
LEFT JOIN Returns r
    ON o.OrderID = r.OrderID
GROUP BY o.Segment
ORDER BY Total_Profit DESC;

-- Geographical Profit Analysis
SELECT
    o.Region,
    o.StateProvince AS State,
    SUM(o.Sales) AS Total_Sales,
    SUM(o.Profit) AS Total_Profit,
    COUNT(r.OrderID) * 1.0 / COUNT(o.OrderID) AS Percent_Returned
FROM Orders o
LEFT JOIN Returns r
    ON o.OrderID = r.OrderID
GROUP BY o.Region, o.StateProvince
ORDER BY Total_Profit DESC;

-- Monthly Sales and Profit Trend
SELECT
    YEAR(o.OrderDate) AS Year,
    MONTH(o.OrderDate) AS Month,
    SUM(o.Sales) AS Total_Sales,
    SUM(o.Profit) AS Total_Profit
FROM Orders o
GROUP BY YEAR(o.OrderDate), MONTH(o.OrderDate)
ORDER BY Year, Month;

-- Returned Orders Impact on Products
SELECT
    o.ProductName,
    SUM(o.Sales) AS Total_Sales,
    SUM(o.Profit) AS Total_Profit,
    COUNT(r.OrderID) * 1.0 / COUNT(o.OrderID) AS Percent_Orders_Returned
FROM Orders o
LEFT JOIN Returns r
    ON o.OrderID = r.OrderID
GROUP BY o.ProductName
ORDER BY Percent_Orders_Returned DESC;

-- Identify high-value customers
SELECT
    o.CustomerName,
    o.CustomerID,
    SUM(o.Sales) AS Total_Sales,
    SUM(o.Profit) AS Total_Profit,
    COUNT(r.OrderID) * 1.0 / COUNT(o.OrderID) AS Percent_Returned
FROM Orders o
LEFT JOIN Returns r
    ON o.OrderID = r.OrderID
GROUP BY o.CustomerName, o.CustomerID
ORDER BY Total_Profit DESC
LIMIT 10;



