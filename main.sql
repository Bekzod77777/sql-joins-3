--! SELECT !--
-- Exercise-1
SELECT * FROM Customers;
-- Exercise-2
SELECT City FROM Customers;
-- Exercise-3
SELECT DISTINCT Country FROM Customers;


--! WHERE !--
-- Exercise-1
SELECT * FROM Customers WHERE City = "Berlin";
-- Exercise-2
SELECT * FROM Customers WHERE NOT City = 'Berlin';
-- Exercise-3
SELECT * FROM Customers WHERE CustomerID=32;
-- Exercise-4
SELECT * FROM Customers WHERE City = 'Berlin' AND PostalCode = 12209;
-- Exercise-5
SELECT * FROM Customers WHERE City = 'Berlin' OR City = 'London';


--! Order By !--
-- Exercise-1
SELECT * FROM Customers ORDER BY City;
-- Exercise-2
SELECT * FROM Customers ORDER BY City DESC;
-- Exercise-3
SELECT * FROM Customers ORDER BY Country, City;


--! AND !--
-- Exercise-1
SELECT * FROM Customers WHERE City = 'Berlin' AND PostalCode = 12209;

--! OR !--
-- Exercise-1
SELECT * FROM Customers WHERE City = 'Berlin' OR City = 'London';

--! NOT !--
-- Exercise-1
SELECT * FROM Customers WHERE NOT City = 'Berlin';

--! MIN and MAX !--
-- Exercise-1
SELECT MIN(Price) FROM Products;
-- Exercise-2
SELECT MAX(Price) FROM Products;


--! Count !--
-- Exercise-1
SELECT Count (*) FROM Products WHERE Price = 18;


--! SUM !--
-- Exercise-1
SELECT SUM(Price) FROM Products;


--! AVARAGE !--
--Exercise-1
SELECT AVG(Price) FROM Products;


--! LIKE !--
--Exercise-1
SELECT * FROM Customers WHERE City LIKE "a%";
--Exercise-2
SELECT * FROM Customers WHERE City LIKE "%a";
--Exercise-3
SELECT * FROM Customers WHERE City LIKE "%a%";
--Exercise-4
SELECT * FROM Customers WHERE City LIKE "a%b";
--Exercise-5
SELECT * FROM Customers WHERE City NOT LIKE "a%";


--! IN !--
--Exercise-1
SELECT * FROM Customers WHERE Country IN ('Norway', 'France');
--Exercise-2
SELECT * FROM Customers WHERE Country NOT IN ('Norway', 'France');


--! Between !--
--Exercise-1
SELECT * FROM Products WHERE Price Between 10 AND 20;
--Exercise-2
SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20;
--Exercise-3
SELECT * FROM Products WHERE ProductName BETWEEN 'Geitost' AND 'Pavlova';


--! Group by !--
--Exercise-1
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;
--Exercise-2
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY country ORDER BY COUNT(CustomerId) DESC;


--! Joins !--
--Exercise-1
SELECT * FROM Orders LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
--Exercise-2
SELECT * FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
--Exercise-3
SELECT * FROM Orders RIGHT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;