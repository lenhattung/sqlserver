SELECT *
INTO Customers_1
FROM Customers;

-- Xóa đi khách hàng 'ALFKI'
DELETE FROM [dbo].[Customers_1]
WHERE [CustomerID] LIKE 'ALFKI';



SELECT DISTINCT [Country] FROM [dbo].[Customers_1];
-- Xóa đi toàn bộ khách hàng có quốc gia
-- bắt đầu bằng 'U'
DELETE FROM [dbo].[Customers_1]
WHERE [Country] LIKE 'U%';


-- Xóa sạch 1 bảng
DELETE FROM [dbo].[Customers_1];

-- Câu hỏi:
-- DELETE FROM khác gì với TRUNCATE

