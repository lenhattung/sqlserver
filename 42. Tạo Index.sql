SELECT COUNT(*)
FROM [Sales].[SalesOrderDetail];

-- Bật hiển thị thống kê về tài nguyên I/O
SET STATISTICS IO ON;

-- Truy vấn
SELECT *
FROM [Sales].[SalesOrderDetail]
WHERE [CarrierTrackingNumber]='1B2B-492F-A9';

-- Bật hiển thị thống kê về tài nguyên I/O
SET STATISTICS IO OFF;

-- Tạo index cho [CarrierTrackingNumber]
CREATE INDEX idx_CarrierTrackingNumber 
ON [Sales].[SalesOrderDetail] ([CarrierTrackingNumber]);
