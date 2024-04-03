/*

*******************************************************************************
*******************************************************************************

SQL CHALLENGES 4

*******************************************************************************
*******************************************************************************

In the exercises below you will need to use the following clauses/operators:
	- SELECT FROM
    - AS
	- DISTINCT
	- WHERE
	- AND / OR / NOT
	- ORDER BY
	- LIMIT
    - MIN(), MAX()
    - COUNT(), AVG(), SUM()

In SQL we can have many databases, they will show up in the schemas list
We must first define which database we will be working with. */

USE publications;

-- 1. From how many different states are our authors?
Select count(distinct state)
From authors;

-- 2. How many publishers are based in the USA?
Select count(Pub_name)
from publishers
Where country = 'USA';


-- 3. What's the average quantity of titles sold per sale by store 7131?
Select avg(qty)
from Sales
Where stor_id = 7131;

-- 4. When was the employee with the highest level hired?
Select hire_date, job_lvl
from employee
order by job_lvl desc
Limit 1;

-- 5. What's the average price of psychology books?
Select avg(Price) as 'Average Price'
From titles
where type= 'psychology';


-- 6. Which category of books has had more year-to-date sales, "business" or
-- "popular_comp"? You can write two queries to answer this question.

-- business
Select sum(ytd_sales)
From titles
where type = 'business';

-- popular_comp
Select sum(ytd_sales)
From titles
where type = 'Popular_comp';


-- 7. What's the title and the price of the most expensive book?
Select Title, price
From titles
order by price desc
Limit 1;

-- 8. What's the price of the most expensive psychology book?
select max(Price) as 'Max_Price'
From titles
Where type = 'Psychology';

-- 9. How many authors live in either San Jose or Salt Lake City
Select count(au_id)
From authors
Where city='San Jose' or City ='Salt Lake City';
