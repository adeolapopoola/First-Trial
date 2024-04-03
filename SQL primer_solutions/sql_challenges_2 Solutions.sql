/*
*******************************************************************************
*******************************************************************************

SQL CHALLENGES 2

*******************************************************************************
*******************************************************************************

In the exercises below you will need to use the following clauses:
	- WHERE
	- AND / OR / NOT

In SQL we can have many databases, they will show up in the schemas list
We must first define which database we will be working with.
*/

/******************************************************************************
WHERE

https://www.w3schools.com/sql/sql_where.asp
******************************************************************************/

/* 1. Select first and last name from authors who have the last name "Ringer"

/* 2. Select the order number and order date of all orders where exactly 20
   books were sold */
Select au_fname, au_lname
From authors
Where au_lname = 'Ringer';

Select ord_num, ord_date, qty
From sales
Where qty=20;


/* 3. Select first and last name from authors whose last name is "Ringer" and
   first name is "Anne"
   https://www.w3schools.com/sql/sql_and_or.asp */

Select au_fname, au_lname
From authors
Where au_lname = 'Ringer';

/* 4. Select the name and city of publishers based in either Germany or France
   https://www.w3schools.com/sql/sql_and_or.asp */
Select pub_name, city
From publishers
where Country= 'Germany' or Country= 'France';


/* 5. Select first name, last name, and city from authors whose
   first name is "Dean" and whose city is either "Oakland" or "Berkeley"
   HINT: parenthesis "()" can help */

Select au_fname, au_lname, city
From authors
where au_fname='Dean' and (City= 'Oakland' or City='Berkeley');

/* 6. Select the name, city and country of publishers not based in the USA
    https://www.w3schools.com/sql/sql_and_or.asp */
    
Select pub_name, city, country
From publishers
where not country= 'USA';


/* 7. Select first, last name, and city from authors whose city is "Oakland"
   or "Berkeley", and last name is NOT "Straight"*/
   
   Select au_fname, au_lname, city
   From authors
   Where (City= 'Oakland' or City='Berkeley') and not au_lname = 'Straight';
