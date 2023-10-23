-- fibo
WITH fibo(prev_n, n) AS (
	-- khoi tao
	SELECT 
		0 as prev_n,
		1 as n

	UNION ALL
	-- de quy
	SELECT 
		n as prev_n,
		prev_n+n as n
	FROM fibo
)
SELECT * FROM fibo
OPTION (MAXRECURSION 5);
-- Sn=S(n-1)+S(n-2)
--0 1 1 2 3 5 8 ...

-- giaiThua
WITH giaiThua(stt, giaiThuaX) AS (
	-- khoi tao
	SELECT 
		1 as stt,
		1 as giaiThuaX

	UNION ALL
	-- de quy
	SELECT 
		stt+1 as stt,
	   (stt+1)*giaiThuaX as giaiThuaX
	FROM giaiThua
)
SELECT * FROM giaiThua
OPTION (MAXRECURSION 5);

--Sử dụng truy vấn đệ quy để tạo một cây cấu trúc quản lý của nhân viên trong bảng "Employees“.
--Trong đó “ReportsTo” chí là mã của người quản lý.
declare @EmployeeId int
set @EmployeeId=2;

WITH e_cte as (
	-- khoi tao
		SELECT	e.[EmployeeID], 
				e.FirstName+' '+e.LastName as Name,
				e.[ReportsTo] as ManagerId,
				0 as Level
		FROM [dbo].[Employees] e
		WHERE e.EmployeeID= @EmployeeId

		UNION ALL
	-- de quy
		SELECT
				e1.[EmployeeID], 
				e1.FirstName+' '+e1.LastName as Name,
				e1.[ReportsTo] as ManagerId,
				Level+1 as Level
		FROM [dbo].[Employees] e1
		JOIN e_cte ON e1.ReportsTo=e_cte.EmployeeID
)
SELECT * FROM e_cte
OPTION (MAXRECURSION 500);