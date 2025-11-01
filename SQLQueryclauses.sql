USE MyDatabase;

-- Retrieve all customers data
SELECT * 
FROM customers  ;

-- Retrieve all orders data 
SELECT * 
FROM orders;

-- SELECT FEW COLUMNS
-- Retrieve each customer name , country & sccore 
SELECT 
first_name ,
country,
score 
FROM customers;

-- WHERE clause : Filter data 
-- Retrieve the customer data where score is higher then 500
SELECT * 
FROM customers 
WHERE score > 500 ;

-- Retrieve the customer data where score is not equal to 0
SELECT * 
FROM customers 
WHERE score != 0 ;

-- Retrieve the customer data where customer is from germany 
SELECT * 
FROM customers 
WHERE country = 'Germany';


-- SORT THE DATA B  USING ORDER BY CLAUSE
-- Retrieve all customers and sort the result by the highest score first
SELECT * 
FROM customers 
ORDER BY score DESC;

-- Retrieve all customers and sort the result by the LOWEST score first
SELECT * 
FROM customers 
ORDER BY score ASC ;


-- Retrieve all customers and sort the data by the country and then by the highest score 
SELECT * 
FROM customers 
ORDER BY country ASC ,  score DESC ;

-- GROUP BY : Combine rows with the same value Aggregate a column by another column Total Scaore By Country 
SELECT  
	country , 
	first_name,
	SUM(score)
FROM customers 
GROUP BY country , first_name;

-- Find the total score and total number of customers for each country 
SELECT 
	country , 
	SUM(score) As Total_score , 
	COUNT(first_name) AS Total_Cutomer 
FROM customers 
GROUP BY country ;

-- HAVING : Filters Data After Aggregation can be used only with Group by 
SELECT 
country,
SUM(score) 
FROM customers 
WHERE score > 400 
GROUP BY country 
HAVING SUM(score)>800; 

-- Find the average score for each country considering only customers with a score not equal to 0 and return only countries with an average score greater then 430 
SELECT 
	country , 
	AVG(score) 
FROM customers 
WHERE score != 0 
GROUP BY country 
HAVING AVG(score) > 430;

-- DISTINCT 
-- Retrieve Unique list of all countries
SELECT 
DISTINCT country
FROM customers ;

-- TOP : Row number 
SELECT TOP 3 
* FROM customers 
;
-- Retrieve the lowest 2 customers based on the score 
SELECT TOP 2* 
FROM customers 
ORDER BY score ASC ;