-- T?o m?t stored procedure ?? l?y thông tin 
-- v? s?n ph?m d?a trên tên s?n ph?m ???c cung c?p.
CREATE PROCEDURE GetProductByName
	@ProductName NVARCHAR(100)
AS
BEGIN
	SELECT * FROM [dbo].[Products] P
	WHERE P.ProductName = @ProductName
END;

-- S? d?ng:
EXEC GetProductByName @ProductName='Chai';
EXEC GetProductByName @ProductName='Chang';
EXEC GetProductByName @ProductName='Ikura';

-- T?o m?t stored procedure ?? tính t?ng doanh s? bán hàng
-- c?a m?t nhân viên d?a trên EmployeeID.
CREATE PROCEDURE GetEmployeeSalesTotal
	@EmployeeId INT
AS
BEGIN
	SELECT SUM([UnitPrice]*[Quantity]) TotalSales
	FROM [dbo].[Orders] o
	JOIN [dbo].[Order Details] od ON o.OrderID = od.OrderID
	WHERE o.EmployeeID=@EmployeeId
END

-- S? d?ng
EXEC GetEmployeeSalesTotal @EmployeeId=1;
EXEC GetEmployeeSalesTotal @EmployeeId=2;
EXEC GetEmployeeSalesTotal @EmployeeId=3;

-- T?o m?t stored procedure ?? thêm m?i khách hàng vào b?ng Customers.
CREATE PROCEDURE AddCustomer
	@CustomerID NVARCHAR(5),
	@CompanyName NVARCHAR(40),
	@ContactName NVARCHAR(30),
	@ContactTitle NVARCHAR(30)
AS
BEGIN
	INSERT INTO [dbo].[Customers]([CustomerID],[CompanyName],[ContactName],[ContactTitle])
	VALUES (@CustomerID, UPPER(@CompanyName), @ContactName, @ContactTitle)
END

EXEC AddCustomer @CustomerID='NEWN', @CompanyName='titv.vn', @ContactName='Tung Le',@ContactTitle='Mr.' 


-- T?o m?t stored procedure ?? c?p nh?t giá c?a t?t
-- cho m?t s?n ph?m c? th?
CREATE PROCEDURE IncreasePrice
	@ProductId INT,
	@PriceIncrease DECIMAL(10,2)
AS
BEGIN
	UPDATE [dbo].[Products]
	SET UnitPrice = UnitPrice + @PriceIncrease
	WHERE [ProductID] = @ProductId
END

EXEC IncreasePrice @ProductId=1, @PriceIncrease=100;
