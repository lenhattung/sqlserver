--Từ bảng Products và Categories, 
-- hãy tìm các sản phẩm thuộc danh mục ‘Seafood’ 
-- (Đồ hải sản) in ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM [dbo].[Categories] c, [dbo].[Products] p
WHERE c.CategoryID = p.CategoryID 
	AND c.CategoryName = 'Seafood';


--Từ bảng Products và Suppliers, 
-- hãy tìm các sản phẩm thuộc được cung cấp từ nước ‘Germany’ (Đức) :
--Mã nhà cung cấp
--Quốc gia
--Mã sản phẩm
--Tên sản phẩm
SELECT s.SupplierID, s.Country, p.ProductID, p.ProductName
FROM [dbo].[Suppliers] s, [dbo].[Products] p
WHERE s.SupplierID = p.SupplierID
	AND s.Country = 'Germany';

--Từ 3 bảng trong hình hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tên khách hàng
--Tên công ty vận chuyển
--Và chỉ in ra các đơn hàng của các khách hàng đến từ thành phố ‘London’
SELECT o.OrderID, c.ContactName, s.CompanyName 
FROM [dbo].[Orders] o, [dbo].[Customers] c, [dbo].[Shippers] s
WHERE o.CustomerID = c.CustomerID
	AND o.ShipVia = s.ShipperID
	AND c.City='London';


--Từ 3 bảng trong hình hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tên khách hàng
--Tên công ty vận chuyển
--Ngày yêu cầu chuyển hàng
--Ngày giao hàng
--Và chỉ in ra các đơn hàng bị giao muộn hơn quy định.
--RequiredDate < ShippedDate
SELECT o.OrderID, c.ContactName, s.CompanyName, o.RequiredDate, o.ShippedDate
FROM [dbo].[Orders] o, [dbo].[Customers] c, [dbo].[Shippers] s
WHERE o.CustomerID = c.CustomerID
	AND o.ShipVia = s.ShipperID
	AND o.RequiredDate < o.ShippedDate;