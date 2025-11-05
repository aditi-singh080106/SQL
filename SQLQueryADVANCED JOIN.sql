USE MyDatabase;

-- LEFT ANTI JOIN 
-- Get all customers who haven't placed any order
SELECT * 
FROM customers AS c 
LEFT JOIN orders AS o 
ON c.id = o.customer_id
WHERE o.customer_id IS NULL ;


-- RIGHT ANTI JOIN 
-- Get all orders without matching customers
SELECT * 
FROM customers AS c 
RIGHT JOIN orders AS o 
ON c.id = o.customer_id 
WHERE c.id IS NULL ;

SELECT * 
FROM orders AS o 
LEFT JOIN customers AS c
ON o.customer_id = c.id 
WHERE c.id IS NULL ;

-- FULL ANTI JOIN 
--Find customers without orders and orders without customers
SELECT * 
FROM customers AS c 
FULL JOIN orders AS o 
ON  c.id = o.customer_id 
WHERE o.customer_id IS NULL
OR 
c.id IS NULL ;

-- Get all custpmers a;ong with their orders
-- but only for customers who have placed an order 
SELECT * 
FROM customers  AS c 
INNER JOIN orders As o 
ON c.id = o.customer_id ;

-- (WITHOUT INNER JOIN)
SELECT * 
FROM customers AS c
LEFT JOIN orders AS o 
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL ;


--- CROSS JOIN 
-- Generate all possible combinations of customers and orders
SELECT * 
FROM customers 
CROSS JOIN orders ;
