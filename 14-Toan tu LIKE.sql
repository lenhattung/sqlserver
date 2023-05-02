-- Hãy lọc ra tất cả các khách hàng đến từ các quốc gia (Country)
-- bắt đầu bằng chữ ‘A’
SELECT *
FROM [dbo].[Customers]
WHERE [Country] LIKE 'A%';

-- Lấy danh sách các đơn đặt được gửi đến các thành phố có chứa chữ ‘a’.
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE '%a%';

-- Hãy lọc ra tất cả các đơn hàng với điều kiện:
-- ShipCountry  LIKE ‘U_’
-- ShipCountry LIKE ‘U%’

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U_';

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U%';





