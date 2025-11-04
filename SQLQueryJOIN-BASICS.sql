USE MyDatabase;

--		 NO JOIN 
-- Retrieve all data from customers and orders as separate results
SELECT * 
FROM customers;

SELECT *
FROM orders;


--		INNER JOIN
-- Get all customers along with their orders, but only for customers who have placed an order
SELECT *
FROM customers 
INNER JOIN orders 
ON customers.id = orders.customer_id ;

--		LEFT JOIN
--Get all cusstomers along with their orders, including those without orders
SELECT * 
FROM customers 
LEFT JOIN orders 
ON customers.id = orders.customer_id ;

--		RIGHT JOIN
--Get all customers along with their orders, including orders without matching customers
SELECT *
FROM customers 
RIGHT JOIN orders 
ON customers.id = orders.customer_id ;

-- Get all cutomers along with their orders , including orders without matching customers 
-- (Using LEFT JOIN)
SELECT *
FROM orders 
LEFT JOIN customers
ON orders.customer_id = customers.id ;

--	    FULL JOIN 
--Get all customers and all orders , even if there's no match 
SELECT *
FROM customers
FULL JOIN orders 
ON customers.id = orders.customer_id ;