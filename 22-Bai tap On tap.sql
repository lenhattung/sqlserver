-- Hãy cho biết những khách hàng nào đã đặt nhiều hơn 20 đơn hàng,
-- sắp xếp theo thứ tự tổng số đơn hàng giảm dần.
SELECT [CustomerID], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [CustomerID]
HAVING COUNT([OrderID]) >20 
ORDER BY COUNT([OrderID]) DESC;

-- Hãy lọc ra các nhân viên (EmployeeID) có tổng số đơn hàng 
-- lớn hơn hoặc bằng 100, sắp xếp theo tổng số đơn hàng giảm dần. 
SELECT [EmployeeID], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [EmployeeID]
HAVING COUNT([OrderID])>=100 
ORDER BY COUNT([OrderID]) DESC;

-- Hãy cho biết những thể loại nào (CategoryID) có số sản phẩm 
-- khác nhau lớn hớn 11.
SELECT [CategoryID], COUNT([ProductID]) AS [TotalProducts]
FROM [dbo].[Products]
GROUP BY [CategoryID]
HAVING COUNT([ProductID])>11;

-- Hãy cho biết những thể loại nào (CategoryID) 
-- có số tổng số lượng sản phẩm trong kho (UnitsInStock) lớn hơn 350.
SELECT [CategoryID], SUM([UnitsInStock]) AS [TotalUnitsInStock]
FROM [dbo].[Products]
GROUP BY [CategoryID]
HAVING SUM([UnitsInStock])>350;

-- Hãy cho biết những quốc gia nào có nhiều hơn 7 don hang.
SELECT [ShipCountry], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [ShipCountry]
HAVING COUNT([OrderID])>7;

-- Hãy cho biết những ngày nào có nhiều hơn 5 đơn hàng được giao, 
-- sắp xếp tăng dần theo ngày giao hàng.
SELECT [ShippedDate], COUNT(*) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [ShippedDate]
HAVING COUNT(*)>5
ORDER BY [ShippedDate] ASC;

-- Hãy cho biết những quốc gia bắt đầu bằng chữ ‘A’ hoặc ‘G’ 
-- và có số lương đơn hàng lớn hơn 29.
SELECT [ShipCountry] , COUNT(*) AS [TotalOrders]
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'A%' OR [ShipCountry] LIKE 'G%'
GROUP BY [ShipCountry]
HAVING COUNT(*)>29
ORDER BY COUNT(*) DESC;



