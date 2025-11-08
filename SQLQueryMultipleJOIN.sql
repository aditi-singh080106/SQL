--				 Multiple Join In SQL 
-- SQL TASK : Using SalesDB , Retrieve a list of all orders , along with the related customers , product , & employee details.
-- OrderID , Customer's name , Product name , Sales , Price , Sales person's name
USE SalesDB;
-- this database has schema 

-- Exploring the table
SELECT * FROM Sales.Customers;
SELECT * FROM Sales.Employees;
SELECT * FROM Sales.Orders;
SELECT * FROM Sales.OrdersArchive;
SELECT * FROM Sales.Products;

-- Result Query : Orders table act as master table here
SELECT 
	c.FirstName AS CustomerName ,
	c.LastName AS CustomerLastName,
	o.OrderID AS OrderID ,
	o.Sales AS Sales ,
	e.FirstName AS SalesPersonName,
	e.LastName AS SalesPersonLastName,
	p.Product AS ProductName  ,
	p.Price AS Price 
FROM Sales.Orders  AS o 
INNER JOIN Sales.Customers AS c
ON c.CustomerID = o.CustomerID 
INNER JOIN Sales.Employees AS e 
ON o.SalesPersonID = e.EmployeeID 
INNER JOIN Sales.Products AS p
ON o.ProductID = p.ProductID;


