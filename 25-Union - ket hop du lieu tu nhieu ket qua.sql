-- Từ bảng Order Details hãy liệt kê 
-- các đơn đặt hàng có Unit Price 
-- nằm trong phạm vi từ 100 đến 200.
-- I - 22
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE od.UnitPrice BETWEEN 100 AND 200;

-- Đưa ra các đơn đặt hàng có 
-- Quantity bằng 10 hoặc 20
-- II - 433
SELECT od.*
FROM [dbo].[Order Details] od
WHERE od.Quantity IN (10, 20);

-- Từ bảng Order Details hãy liệt kê các 
-- đơn đặt hàng có Unit Price nằm trong phạm 
-- vi từ 100 đến 200 VÀ đơn hàng phải có Quantity 
-- bằng 10 hoặc 20
--- III = I AND II = 7 rows
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE (od.UnitPrice BETWEEN 100 AND 200)
		AND (od.Quantity IN (10, 20));


-- Từ bảng Order Details hãy liệt kê các 
-- đơn đặt hàng có Unit Price nằm trong phạm 
-- vi từ 100 đến 200 HOAC đơn hàng phải có Quantity 
-- bằng 10 hoặc 20
--- IV = I OR II = 448 rows
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE (od.UnitPrice BETWEEN 100 AND 200)
		OR (od.Quantity IN (10, 20));

-- Từ bảng Order Details hãy liệt kê các 
-- đơn đặt hàng có Unit Price nằm trong phạm 
-- vi từ 100 đến 200 HOAC đơn hàng phải có Quantity 
-- bằng 10 hoặc 20, DISTINCT
--- V = IV + DISTINCT = 360
SELECT DISTINCT od.OrderID
FROM [dbo].[Order Details] od
WHERE (od.UnitPrice BETWEEN 100 AND 200)
		OR (od.Quantity IN (10, 20));


-- UNION
-- V = I OR II = 360 rows
SELECT od.OrderID FROM [dbo].[Order Details] od WHERE od.UnitPrice BETWEEN 100 AND 200
UNION 
SELECT od.OrderID FROM [dbo].[Order Details] od WHERE od.Quantity IN (10, 20);


-- IV (ko co distinct) = I OR II = 455 rows = 448 + 7 = 455 rows
SELECT od.OrderID FROM [dbo].[Order Details] od WHERE od.UnitPrice BETWEEN 100 AND 200
UNION ALL
SELECT od.OrderID FROM [dbo].[Order Details] od WHERE od.Quantity IN (10, 20);

-- Lay tat ca quoc gia tu 2 table Suppliers va Customers
SELECT DISTINCT country
FROM Suppliers;

SELECT DISTINCT country
FROM Customers;

SELECT DISTINCT country
FROM Suppliers
UNION
SELECT DISTINCT country
FROM Customers;

SELECT DISTINCT country
FROM Suppliers
UNION ALL
SELECT DISTINCT country
FROM Customers;