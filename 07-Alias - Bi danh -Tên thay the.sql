-- Viết câu lệnh SQL lấy “CompanyName” và đặt tên thay thế là “Công ty”; 
-- “PostalCode” và đặt tên thay thế là “Mã bưu điện”
SELECT	[CompanyName] AS [Tên công ty],
		[PostalCode] AS "Mã bưu điện",
		[City] "Thành phố"
FROM [dbo].[Customers];

-- Viết câu lệnh ra “LastName” và đặt tên thay thế là “Họ”; 
-- “FirstName” và đặt tên thay thế là “Tên”.
SELECT [LastName] AS [Họ và chữ lót],  [FirstName] AS [Tên]
FROM [dbo].[Employees];

-- Viết câu lệnh SQL lấy ra 15 dòng đầu tiên tất 
-- cả các cột trong bảng Orders, đặt tên thay thế 
-- cho bảng Orders là “o”.
SELECT TOP 15 [o].*
FROM [dbo].[Orders] AS [o];

