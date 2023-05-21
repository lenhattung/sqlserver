-- Liet ke cac don hang co 
-- ngay dat hang gan nhat
SELECT * 
FROM [dbo].[Orders] o
WHERE o.OrderDate = (
	SELECT MAX([OrderDate])
	FROM [dbo].[Orders]
);

-- Liệt kê tất cả các sản phẩm (ProductName)
-- mà không có đơn đặt hàng nào đặt mua chúng.
SELECT *
FROM [dbo].[Products] p
WHERE p.ProductID NOT IN (
	SELECT DISTINCT [ProductID]
	FROM [dbo].[Order Details]
);

-- Lấy thông tin về các đơn hàng, và tên các sản phẩm 
-- thuộc các đơn hàng chưa được giao cho khách.
SELECT o.OrderID, p.ProductName
FROM [dbo].[Orders] o
INNER JOIN [dbo].[Order Details] od
ON o.OrderID = od.OrderID
INNER JOIN [dbo].[Products] p
ON od.ProductID = p.ProductID
WHERE o.OrderID IN (
			SELECT [OrderID]
			FROM [dbo].[Orders]
			WHERE [ShippedDate] IS NULL);

-- Lấy thông tin về các sản phẩm có số lượng tồn kho 
--- ít hơn số lượng tồn kho trung bình của tất cả các sản phẩm
SELECT *
FROM [dbo].[Products] p
WHERE p.UnitsInStock>(
	SELECT AVG([UnitsInStock])
	FROM [dbo].[Products]);

-- Lấy thông tin về các khách hàng có tổng giá trị đơn hàng lớn nhất