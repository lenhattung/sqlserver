-- Ví dụ
WITH bangTamThoi AS (
	SELECT [EmployeeID], [LastName], [FirstName]
	FROM [dbo].[Employees]
),
bangTamThoiSo2 AS (
	SELECT [ProductID]
	FROM [dbo].[Products]
)
SELECT *
FROM bangTamThoi;

-- Lấy thông tin về các sản phẩm (Products) có cùng thể loại với một sản phẩm cụ thể
WITH ProductCategory AS(
	SELECT [ProductName],[CategoryID]
	FROM [dbo].[Products]
	WHERE [ProductName]='Chai'
)
SELECT P.[ProductName],P.[CategoryID]
FROM [dbo].[Products] as P
JOIN ProductCategory as PC 
ON P.CategoryID=PC.CategoryID;


-- 
WITH OrderTotals AS ( 
	SELECT [OrderID], SUM([UnitPrice]*[Quantity]) AS TotalPrice
	FROM [dbo].[Order Details]
	GROUP BY [OrderID]
) 
SELECT od.[OrderID], od.[OrderDate], od.[Freight], ot.TotalPrice, ot.TotalPrice/od.Freight AS ratio
FROM [dbo].[Orders] od
JOIN OrderTotals ot ON od.OrderID=ot.OrderID;

