-- Liet ke ra toan bo san pham
SELECT  [ProductID], [ProductName], [UnitPrice]
FROM [dbo].[Products];

-- Tim gia trung binh cua cac san pham
SELECT AVG([UnitPrice])
FROM [dbo].[Products];

-- Loc nhung san pham co gia > gia trung binh
SELECT  [ProductID], [ProductName], [UnitPrice]
FROM [dbo].[Products]
WHERE [UnitPrice] > 28.4962;

-- Sub query
SELECT  [ProductID], [ProductName], [UnitPrice]
FROM [dbo].[Products]
WHERE [UnitPrice] > (
	SELECT AVG([UnitPrice])
	FROM [dbo].[Products]
);

-- Loc ra nhung khach hang co so don hang > 10
SELECT c.CustomerID, c.CompanyName, count(o.OrderId) as [TotalOrders]
FROM [dbo].[Customers] c
LEFT JOIN [dbo].[Orders] o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CompanyName
HAVING count(o.OrderId) > 10;

-- Sub query
SElECT *
FROM [dbo].[Customers]
WHERE [CustomerID] IN (
		SELECT [CustomerID]
		FROM [dbo].[Orders]
		GROUP BY [CustomerID]
		HAVING COUNT(OrderId)>10
);

-- Tinh tong tien cho tung don hang
SELECT o.*, (
		SELECT SUM(od.Quantity*od.UnitPrice)
		FROM [dbo].[Order Details] od
		WHERE o.OrderID = od.OrderID
	) AS [Total]
FROM [dbo].[Orders] o;


-- Loc ra ten san pham va tong so don hang cua san pham
SELECT ProductName, TotalOrders
FROM 
	(SELECT p.ProductID, p.ProductName, (
				SELECT COUNT(*)
				FROM [dbo].[Order Details] od
				WHERE od.ProductID = p.ProductID
			) as [TotalOrders]
	FROM [dbo].[Products] p) AS Temp;


	