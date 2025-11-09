USE SalesDB;
-- ORDER BY Clause is always use atlast 
-- Column datatype must be same 
-- Column number must be same in both table
-- Order of the column in both table must be same
-- name of the first column is displayed in the result

SELECT 
	FirstName , 
	LastName 
FROM Sales.Employees
UNION
SELECT 
	FirstName,
	LastName 
FROM Sales.Customers ;

SELECT 
	CustomerID , 
	FirstName 
FROM Sales.Customers 
UNION
SELECT 
	ProductID ,
	Product
FROM Sales.Products ;


-- UNION : Return all distinct rows from both queries
--         Remove all duplicate rows from the result

-- Combine the data from employees and customers into ine table
SELECT 
CustomerID AS ID ,
FirstName,
LastName ,
Country ,
Score
FROM Sales.Customers
UNION
SELECT 
EmployeeID ,
FirstName,
LastName ,
Department,
Salary
FROM Sales.Employees ;


-- UNION ALL : Return all rows from both queries , including duplicates
--  UNION ALL is generally faster than UNION
-- If you're confident there are no duplicates , use UNION ALL
-- Use UNION ALL to find  duplicate and quality issues

-- Combine the data from employees and cutomers into one table , 
-- including duplicates
SELECT 
CustomerID AS ID ,
FirstName,
LastName 
FROM Sales.Customers
UNION ALL
SELECT 
EmployeeID ,
FirstName,
LastName 
FROM Sales.Employees ;


-- Except : 
-- Return all the distinct rows from the first query that 
-- are not found in the second query .

-- It is the only one where the order of queries affects 
-- the fianl result .

-- Q. Find employees whi are not customers at the same time.
SELECT 
	FirstName , 
	LastName
FROM Sales.Employees
EXCEPT
SELECT 
	FirstName,
	LastName
FROM Sales.Customers ;


-- INTERSECT OPERATOR :
-- Return only the rows that are common in both queries.
-- Q. Find the employees who are customers also
SELECT 
	FirstName , 
	LastName 
FROM Sales.Employees 
INTERSECT 
SELECT 
	FirstName ,
	LastName 
FROM Sales.Customers ;

-- Combine information : Combine similar information before analyzing the data
-- Q. Orders are stored in separate tables(Orders & OrdersArchieve )
-- Combine all orders into report without duplicates.
SELECT 
    'Orders' AS SourceTable,
	OrderID,
	ProductID,
	CustomerID,
	SalesPersonID,
	OrderDate,
	ShipDate,
	OrderStatus,
	ShipAddress,
	BillAddress ,
	Quantity,
	Sales,
	CreationTime
FROM Sales.Orders 
UNION
SELECT 
	'OrdersArchive' AS SourceTable,
	OrderID,
	ProductID,
	CustomerID,
	SalesPersonID,
	OrderDate,
	ShipDate,
	OrderStatus,
	ShipAddress,
	BillAddress ,
	Quantity,
	Sales,
	CreationTime
FROM Sales.OrdersArchive 
ORDER BY OrderID ;


-- DELTA DETECTION : (EXCEPT)
-- Identifying the difference or changes (delta) 
-- between two batches of data .

-- DATA COMPLETENESS CHECK :
-- Except operator can be used to compare tables
-- to detect disrepeancies between databases.


