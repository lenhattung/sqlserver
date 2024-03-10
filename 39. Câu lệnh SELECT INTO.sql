-- Tạo ra bảng mới với các sản phẩm có giá >50;
SELECT *
INTO HighValueProducts
FROM Products
WHERE [UnitPrice]>50;

-- Tạo ra bảng mới với các đơn hàng được giao đến USA
SELECT *
INTO USAOrders
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'USA';
