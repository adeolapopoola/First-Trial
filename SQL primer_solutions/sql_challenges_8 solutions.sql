/*

*******************************************************************************
*******************************************************************************

SQL CHALLENGES 8

*******************************************************************************
*******************************************************************************

In the exercises below you might need to use the any of the clauses learend so 
far.

*/

USE publications;

/* 1. Select the top 5 orders with most quantity sold between 1993-03-11 and
    1994-09-13 from the table sales */
Select max(qty), ord_num, ord_date
From sales
where ord_date between '1993-03-11' and '1994-09-13'
Group by ord_num, ord_date
order by max(qty) desc
limit 5;


/* 2. How many authors have an "i" in their first name, are from Utah,
   Maryland, or Kansas? */
Select  count(au_id), au_fname, au_lname, state
From authors
Where au_fname like '%i%' and state in ('UT', 'MD', 'KS')
Group by au_fname, au_lname, state;

Select *
From authors;
/* 3. In California, how many authors are there in cities that contain an "o"
   in the name?
   - Show only results for cities with more than 1 author.
   - Sort the cities ascendingly by author count.
*/
Select count(au_id) as Count, city, state
From authors
Where city like '%o%' and state in ('CA')
group by  city, state
Having count>1;

Select count(au_id) as Count, city, state
From authors
Where city like '%o%' and state in ('CA')
group by  city, state
order by count;

Select count(au_id) as Count, au_fname, au_lname, city, state
From authors
Where city like '%o%' and state in ('CA')
group by  au_fname, au_lname, city, state
order by count;


Select count(au_id) as Count, city, state
From authors
Where city like '%o%' and state in ('CA')
group by city, state
order by count;

Select *
From authors

