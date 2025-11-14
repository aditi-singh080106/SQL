USE SalesDB;
-- ROUND : total number of digit needed after decimal place

SELECT 
3.516 , 
ROUND(3.516,2) AS round2 ,
ROUND(3.516,1) AS round1 ,
ROUND(3.516,0) AS round0 ;


-- ABS() : Make numbere positive
SELECT 
ABS(-3) AS POS ;