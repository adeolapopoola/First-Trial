/*
*******************************************************************************
*******************************************************************************

SQL CHALLENGES 3

*******************************************************************************
*******************************************************************************

In the exercises below you will need to use the following clauses/operators:
	- ORDER BY
	- LIMIT
    - MIN(), MAX()
    - COUNT(), AVG(), SUM()

In SQL we can have many databases, they will show up in the schemas list
We must first define which database we will be working with.
*/

USE publications;

/******************************************************************************
ORDER BY
******************************************************************************/
-- https://www.w3schools.com/sql/sql_orderby.asp

/* 1. Select the title and ytd_sales from the table titles. Order them by the
year to date sales. */
Select Title, ytd_sales
From titles
order by ytd_sales asc;


-- 2. Repeat the same query, but this time sort the titles in descending order
Select Title, ytd_sales
From titles
order by ytd_sales desc;


/******************************************************************************
LIMIT

https://www.w3schools.com/mysql/mysql_limit.asp
******************************************************************************/

-- 3. Select the top 5 titles with the most ytd_sales from the table titles
Select Title, ytd_sales
from titles
order by ytd_sales desc
limit 5;


/******************************************************************************
MIN and MAX

https://www.w3schools.com/sql/sql_min_max.asp
******************************************************************************/

-- 4. What's the maximum amount of books ever sold in a single order?
select max(qty)
From Sales;



-- 5. What's the price of the cheapest book?
select min(price)
From titles;


/******************************************************************************
COUNT, AVG, and SUM

https://www.w3schools.com/sql/sql_count_avg_sum.asp

******************************************************************************/

 -- 6. How many rows are there in the table authors?
select count(au_fname)
From authors;


 -- 7. What's the total amount of year-to-date sales?
select sum(ytd_sales) as Total
From titles;


 -- 8. What's the average price of books?
select avg(price)
from titles;


/* 9. In a single query, select the count, average and sum of quantity in the
table sales */

Select count(qty), avg(qty), sum(qty)
From sales;
