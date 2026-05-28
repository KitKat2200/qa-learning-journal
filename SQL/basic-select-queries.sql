SELECT * FROM;
  --Basic column data retrieval
  
SELECT DISTINCT column_name FROM table_name;
--DISTINCT removes duplicate rosw so each unique value appears only once

SELECT * FROM table_name
  WHERE column_name = 'value';
--Filters rows based on a condition, returning only rows that meet the criteria
--Comparison operators: =, <>, <, <=, >, >=
--Combine conditions with AND, OR, and () to build complex filters

SELECT first_name, last_name, age
  FROM people
  ORDER BY 3 DESC;
--Retrieve data set in people table by number of columns in DESC or ASC

SELECT * FROM employees
  WHERE department = 'Sales' AND salary > 50000;
--Logical operator AND OR

SELECT * 
  FROM books 
  WHERE title NOT LIKE '%SQL%';
--NOT is evaluated before AND and OR. Use parentheses to make intent clear.

SELECT * 
  FROM employees 
  WHERE manager_id IS NULL;
--NULL is abscence of data != 0; Comparison operators return UNKNOWN when one side is NULL

SELECT name, COALESCE(phone, 'N/A') AS 
  phone 
  FROM customers;
--COALESCE-or IFNULL- to replace NULL with a fallback value. 
--Aggregate functions: COUNT(), SUM(), AVG(), MIN(), MAX()--Ignores NULLS except COUNT()

SELECT COALESCE(SUM(quantity), 0) AS 
  total_qty 
  FROM sales
  WHERE product_id = 42;
--COALESCE is often used w/ aggregates to turn NULL into 0 or other value.COALESCE supports more than two arguments and follows standard SQL-IFNULL does not

SELECT ROUND(123.456); --123
SELECT ROUND(123.456, 2); --123.46
--Round (X, [Y]) returns X rounded to Y decimal places
--SQLite follows "round half up" (banker's rounding is used only with printf())

SELECT price, ROUND(price, 2) AS price_2dp
FROM products;
--Rounding monetary values

SELECT ROUND(AVG(score), 1) AS
avg_score_1dp
FROM exams;
--ROUND aggregates to friendly numbers

--!!Review this concept more!!
--SQLite work arounds for no -Y by dividing, rounding, then multiplying

--nearest ten
SELECT ROUND(value/10.0)*10 AS rounded_10
FROM values;

--nearest hundred
SELECT ROUND(value/100.0) * 100.0 AS rounded_100
FROM values;




