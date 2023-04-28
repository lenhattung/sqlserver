-- Tính số lượng sản phẩm còn lại trong kho (UnitsInStock) 
-- sau khi bán hết các sản phẩm đã được đặt hàng (UnitsOnOrder) .
-- StockRemaining = UnitsInStock - UnitsOnOrder
SELECT	[ProductID], 
		[ProductName], 
		[UnitsInStock],
		[UnitsOnOrder],
		([UnitsInStock]-[UnitsOnOrder]) AS [StockRemaining]
FROM [dbo].[Products];

-- Tính giá trị đơn hàng chi tiết cho tất cả các sản phẩm trong bảng OrderDetails
-- OrderDetailValue = UnitPrice x Quantity
SELECT	*,
		([UnitPrice]*[Quantity]) AS [OrderDetailValue]
FROM [dbo].[Order Details];


-- Tính tỷ lệ giá vận chuyển đơn đặt hàng (Freight) trung bình
-- của các đơn hàng trong bảng Orders so với giá trị vận chuyển của đơn hàng lớn nhất (MaxFreight)
-- FreightRatio = AVG(Freight)/ MAX(Freight) 
SELECT  AVG([Freight])/MAX([Freight]) AS [FreightRatio]
FROM [dbo].[Orders]

