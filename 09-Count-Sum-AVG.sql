-- Hãy đếm số lượng khách hàng có trong bảng  (Customers).
SELECT COUNT(*) AS [NumberOfCustomers]
FROM [dbo].[Customers];

SELECT COUNT([CustomerID]) AS [NumberOfCustomers]
FROM [dbo].[Customers];

-- Tính tổng số tiền vận chuyển (Freight) 
-- của tất cả các đơn đặt hàng.
SELECT SUM([Freight]) AS [SumFreight]
FROM [dbo].[Orders];

-- Tính trung bình số lượng đặt hàng (Quantity) 
-- của tất cả các sản phẩm trong bảng [Order Details]
SELECT AVG([Quantity]) AS [AvgQuantity]
FROM [dbo].[Order Details];

-- Đếm số lượng, tính tổng số lượng hàng trong kho 
-- và trung bình giá của các sản phẩm có trong bảng Product.
SELECT	COUNT(*) AS [NumberOfProducts], 
		SUM([UnitsInStock]) AS [TotalUnitsInStock], 
		AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products];

-- 
