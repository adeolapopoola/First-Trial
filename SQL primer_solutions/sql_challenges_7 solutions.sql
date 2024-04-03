/*

*******************************************************************************
*******************************************************************************

SQL CHALLENGES 7

*******************************************************************************
*******************************************************************************

In the exercises below you will need to use the following clauses:
    - GROUP BY
    - HAVING
------------------------------------------------------------------------------------------------

*/

USE publications;

/*******************************************************************************
GROUP BY

https://www.w3schools.com/sql/sql_groupby.asp
*******************************************************************************/

-- 1. Find the total amount of authors for each state
select count(au_id), state
From authors
Group by state;



/* 2. Find the total amount of authors by each state and order them in 
    descending order */
Select count(au_id), state
From authors
Group by state
order by count(au_id) desc;


-- 3. What's the price of the most expensive title from each publisher?
Select max(Price) as 'Most_Exp', pub_id
From titles
Group by pub_id;

-- 4. Find out the top 3 stores with the most sales
select max(qty), stor_id
From sales
Group by stor_id
Order by max(qty) desc
Limit 3;


/* 5. Find the average job level for each job_id from the employees table.
    Order the jobs in ascending order by its average job level. */
Select avg(job_lvl), job_id
From employee
Group by job_id
Order by avg(job_lvl);


/* 6. For each type (business, psychology…), find out how many books each
    publisher has. */
Select count(title), pub_id, type
From titles
group by pub_id, type;

Select *
From titles;


/* 7. Add the average price of each publisher - book type combination from your
   previous query */
Select count(title), round(avg(Price), 2) as Avg_Price, pub_id, type
From titles
group by type, pub_id;

/*******************************************************************************
HAVING

https://www.w3schools.com/sql/sql_having.asp
*******************************************************************************/

/* 8. From your previous query, keep only the combinations of publisher - book
   type with an average price higher than 12 */
Select round(avg(Price), 2) as Avg_Price, type, pub_id
From titles
group by type, pub_id
Having avg(Price) > 12;

/* 9. Order the results of your previous query by these two criteria:
      1. Count of books, descendingly
      2. Average price, descendingly */
Select round(avg(Price), 2) as Avg_Price, type, pub_id
From titles
group by type, pub_id
Having avg(Price) > 12
Order by avg(Price) desc;


Select count(title), round(avg(Price), 2) as Avg_Price, type, pub_id
From titles
group by type, pub_id
Order by count(title) desc;


/* 10. Some authors have a contract, while others don't - it's indicated in the
     "contract" column of the authors table.
     
     Select all the states and cities where there are 2 or more contracts 
     overall */

Select State, city, sum(contract)
from authors
Group by State, city
Having sum(contract) >= 2;


/* 
The main difference between WHERE and HAVING is that:
    - the WHERE clause is used to specify a condition for filtering most records
    - the HAVING clause is used to specify a condition for filtering values from 
      an aggregate (such as MAX(), AVG(), COUNT() etc...)
 */

