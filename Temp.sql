SELECT * FROM Customers
WHERE Country LIKE 'U_';

SELECT * FROM Orders
WHERE ShipCity LIKE 'L[^o,u]%';

SELECT * FROM Orders
WHERE ShipCity LIKE 'L[^o,u]%';

SELECT * FROM Orders
WHERE ShipCity LIKE 'L[a-b]%';