-- Bạn hãy liệt kê tất cả các sản phẩm có số lượng trong kho (UnitsInStock)
-- nhỏ hơn 50 hoặc lớn hơn 100.
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock]<50 OR [UnitsInStock]>100;


-- Bạn hãy liệt kê tất các đơn hàng được giao đến Brazil, đã bị giao muộn, 
-- biết rằng ngày cần phải giao hàng là RequiredDate, ngày giao hàng thực tế là ShippedDate.
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry]='Brazil' AND [RequiredDate]<[ShippedDate];

-- Lấy ra tất cả các sản phẩm có giá dưới 100$ và mã thể loại khác 1.
-- Lưu ý: dùng NOT

SELECT *
FROM [dbo].[Products]
WHERE [UnitPrice]>=100 OR [CategoryID]=1;

SELECT *
FROM [dbo].[Products]
WHERE NOT([UnitPrice]>=100 OR [CategoryID]=1);

