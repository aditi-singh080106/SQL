-- DML COmmands (MOdify, Manipulate)
-- INSERT , UPDATE , DELETE 
USE MyDatabase;

Insert INTO customers 
	(id , first_name , country , score )
	VALUES 
		(6,'Anna','USA' , NULL  ),
		(7,'Sam',NULL,100);

INSERT INTO customers 
	(id,first_name,country,score)
	VALUES (8,'France' , 'Max',590);

INSERT INTO customers 
	(id,first_name,country,score)
	VALUES (9,'Andreas' , 'Germany',590);

SELECT *
FROM customers;

UPDATE customers 
SET first_name = 'Max'
WHERE id = 8 ;

UPDATE customers 
SET country ='France'
WHERE id = 8 ;

UPDATE customers
SET score = 950 
WHERE id = 2;

-- INSERT data suing the insert and SELECT command 
-- Copy data from customers table into persons
INSERT INTO persons
	(id,person_name,birth_date,phone)
	
	SELECT
	id,
	first_name,
	NULL,
	'Unknown' 
	FROM customers ;

SELECT * FROM persons ;


-- UPDATE Command
-- Change the score of customer 6 to 0
UPDATE customers 
SET score = 0 
WHERE id = 6;
INSERT INTO customers 
	VALUES (10,'Sahra' , NULL , NULL);

-- Change the score of customer 10 to 0 and update the country to UK
UPDATE customers
SET score = 0 ,
	country = 'UK'
WHERE id = 10;

-- UPDATE all customers with a null score to score 0
UPDATE customers
SET score = 0 
WHERE score IS NULL ;

SELECT * FROM customers;

-- DELETE Command
-- DELETE all the customers data having the score zero
DELETE FROM customers 
WHERE score = 0 ;

-- Delete all the customers data where an ID is greater then 5 
DELETE FROM customers 
WHERE id > 5;

-- Delete all the data from the person table
DELETE FROM persons ;
-- OR
TRUNCATE TABLE persons ;