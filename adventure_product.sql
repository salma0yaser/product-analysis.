USE AdventureWorks2019;
GO
SELECT TOP 10 
    ProductID,
    Name AS ProductName,
    ListPrice
FROM Production.Product
WHERE ListPrice > 0
ORDER BY ListPrice DESC;


SELECT 
    p.ProductID,
    p.Name AS ProductName,
    SUM(sod.OrderQty) AS TotalSold
FROM Production.Product p
JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY TotalSold DESC


SELECT 
    p.ProductID,
    p.Name AS ProductName,
    SUM(sod.LineTotal) AS Revenue
FROM Production.Product p
JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY Revenue DESC


SELECT 
    Color,
    SUM(OrderQty) AS TotalSold
FROM Production.Product p
JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
WHERE Color IS NOT NULL
GROUP BY Color
ORDER BY TotalSold DESC;


SELECT 
    Size,
    SUM(OrderQty) AS TotalSold
FROM Production.Product p
JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
WHERE Size IS NOT NULL
GROUP BY Size
ORDER BY TotalSold DESC;


SELECT 
    ProductID,
    Name AS ProductName,
    Weight,
    ListPrice
FROM Production.Product
WHERE Weight IS NOT NULL AND ListPrice IS NOT NULL;


