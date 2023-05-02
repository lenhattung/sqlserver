-- Hãy cho biết mỗi khách hàng đã đặt bao nhiêu đơn hàng?
SELECT [CustomerID], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [CustomerID];

-- Hãy tính giá trị đơn giá trung bình theo mỗi nhà cung cấp sản phẩm.
SELECT [SupplierID], AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products]
GROUP BY [SupplierID];

-- Hãy cho biết mỗi thể loại có tổng số bao nhiêu sản phẩm trong kho (UnitsOnStock)?
SELECT [CategoryID], SUM([UnitsInStock]) AS [TotalUnitsInStock]
FROM [dbo].[Products]
GROUP BY [CategoryID];

