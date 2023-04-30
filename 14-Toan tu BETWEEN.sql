-- Lấy danh sách các sản phẩm có giá bán trong khoảng từ 10 đến 20 đô la.
SELECT *
FROM [dbo].[Products]
WHERE [UnitPrice] BETWEEN 10 AND 20;

SELECT *
FROM [dbo].[Products]
WHERE [UnitPrice]>=10 AND [UnitPrice]<=20;

-- Lấy danh sách các đơn đặt hàng được đặt trong khoảng thời gian 
-- từ ngày 1996-07-01 đến ngày 1996-07-31:
SELECT *
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';

-- Tính tổng số tiền vận chuyển (Freight) của các
-- đơn đặt hàng được đặt trong khoảng thời gian từ ngày 1996-07-01 
-- đến ngày 1996-07-31:
SELECT SUM([Freight]) AS [TotalJulyFreight]
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';




