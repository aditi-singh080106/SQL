USE MyDatabase;
--		COMPARISION OPERATOR
-- Retrieve all customers data who used to live in USA
SELECT * 
FROM customers 
WHERE UPPER(country) = 'USA';

-- Retrieve all customers data who used to live in Germany
SELECT *
FROM customers 
WHERE UPPER(country) = 'GERMANY';

-- Retrieve all customers data who used not to live in Germany
SELECT * 
FROM customers
WHERE UPPER(country) <> 'GERMANY' ;

-- Rerieve all the cutomers with a score greater than 500
SELECT * 
FROM customers 
WHERE score > 500;

-- Rerieve all the cutomers with a score greater than or equal 500
SELECT * 
FROM customers
WHERE score >= 500;

-- Rerieve all the cutomers with a score less than 500
SELECt * 
FROM customers
WHERE score < 500 ;

-- Rerieve all the cutomers with a score of 500 or less
SELECT * 
FROM customers 
WHERE score <= 500 ;


--     LOGICAL OPEARTATOR
-- 
SELECT * 
FROM customers;
--Retrieve all customers who are from the USA AND have a score greater than 500
SELECT * 
FROM customers
WHERE UPPER(country) = 'USA' AND score > 500 ;

--Retrieve all customers who are from the USA OR have a score greater than 500
SELECT * 
FROM customers
WHERE UPPER(country) = 'USA' OR score > 500 ;

-- Retrieve all the cusotmers whose score NOT less than 500
SELECT * 
FROM customers
WHERE NOT score <  500 ;

--		RANGE OPERATOR
-- Retrieve all the customer data where score is in range 100 to 500
SELECT * 
FROM customers 
WHERE score BETWEEN 100 AND 500 ;


--		MEMBERSHIP OPERATOR
--Retrieve all the customers who are from eithere Germany or USA
SELECT * 
FROM customers 
WHERE country IN ('USA' , 'Germany');


--		SEARCH OPERATOR
-- Retrieve all the customers whose name began with 'M'
SELECT  * 
FROM customers 
WHERE first_name LIKE 'M%' ;

-- Retrieve all the customers data whose name contains 'r'
SELECT * 
FROM customers
WHERE first_name LIKE '%r%' ;
