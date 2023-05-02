-- Lấy ra tất cả các đơn hàng chưa được giao hàng.
-- (ShippedDate => NULL)
SELECT *
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL;

SELECT COUNT(*)
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL;

-- Lấy danh sách các khách hàng có khu vực (Region) không bị NULL.
SELECT *
FROM [dbo].[Customers]
WHERE [Region] IS NOT NULL;

-- Lấy danh sách các khách hàng không có tên công ty (CompanyName).
SELECT *
FROM [dbo].[Customers]
WHERE [CompanyName] IS NULL;




