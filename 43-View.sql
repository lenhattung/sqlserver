CREATE VIEW MothlySales AS
SELECT 
  YEAR([OrderDate]) as "Năm",
  MONTH([OrderDate]) as "Tháng",
  COUNT([OrderID]) as "Số lượng đơn hàng"
FROM
  [dbo].[Orders]
GROUP BY YEAR([OrderDate]), MONTH([OrderDate]);
