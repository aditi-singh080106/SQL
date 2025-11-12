-- STRING FUNCTION : MANIIPULATION FUNCTION
-- CONCAT : Combine multiple strings into one

-- Q. Concatnate first name & countyr into one column
USE SalesDB;
SELECT 
CONCAT(FirstName,' ', Country) AS NameCountry
FROM Sales.Customers;

-- LOWER () 
--Q. Convert the first name of the cutomer to lowercase
SELECT 
LOWER(FirstName) AS FirstName
FROM Sales.Customers;

--Q. Convert the first name of the cutomer to uppercase
SELECT 
UPPER(FirstName) AS FirstName
FROM Sales.Customers;

--TRIM() : Remove leading or trailling spaces
--Q. Find customers whose first name contains leading or trailling spaces
SELECT
FirstName 
FROM Sales.Customers
WHERE FirstName != TRIM(FirstName);

--REPLACE() : Replace specific character with a new character
SELECT 
'123-456-7890',
REPLACE('123-456-7890','-','/') ; 

-- Replace File Extension from .txt to .csv
SELECT
'report.txt' AS txtFile ,
REPLACE('report.txt','txt','csv') AS csvFile;

-- STRING FUNCTION : CALCULATION
-- LEN() : Counts how many character
SELECT 
FirstName , 
LEN(FirstName) AS Length
FROM Sales.Customers;

-- STRING FUNCTION : STRING EXTRACTION
-- LEFT() : Extract specific number of characters from the start
-- RIGHT(): Extract specific number of characters from the end
-- Q. Retieve the 1st 2 characters from each first name
SELECT 
LEFT(FirstName,2) 
FROM Sales.Customers;

-- Q. Retieve the last 2 characters from each first name
SELECT 
RIGHT(FirstName,2) 
FROM Sales.Customers;

-- SUBSTRING() : Extract a part of string at a specified position
-- SUBSTRING(<value>,<start idx> , <length>)
-- Q.Retrieve a list of customers' first names removing the first character
SELECT
SUBSTRING(FirstName,2,LEN(FirstName)-1) AS Name
FROM Sales.Customers;


