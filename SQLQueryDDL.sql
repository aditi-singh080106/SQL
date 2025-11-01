-- DDL commands
-- CREATE Command
-- Create a new table called persons with columns : id , person_name , birth_date  AND phone
Use MyDatabase;
CREATE TABLE persons(
		id INT  NOT NULL, 
		person_name VARCHAR(50) NOT NULL , 
		birth_date DATE  , 
		phone VARCHAR(15)  NOT NULL,
		--PRIMARY KEY(id)
		CONSTRAINT pk_persons PRIMARY KEY(id)
);
SELECT * FROM persons ; 

-- ALTER Command
-- Add a new column called email to the persons table 
ALTER TABLE persons 
ADD email VARCHAR(50) NOT NULL ;
-- Remove the column phone from the persons table 
ALTER TABLE persons 
DROP COLUMN phone ;

-- DROP Command
-- DELETE table persons from the database
DROP TABLE persons ;