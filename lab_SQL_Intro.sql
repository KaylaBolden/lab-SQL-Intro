-- 2. Explore tables by selecting all columns from each table or using the in 
-- built review features for your client.
select * from sakila.actor limit 20;
select * from sakila.address limit 20;
select * from sakila.category limit 20;
select * from sakila.city limit 20;
select * from sakila.country limit 20;
select * from sakila.customer limit 20;
select * from sakila.film limit 20;
select * from sakila.film_actor limit 20;
select * from sakila.film_category limit 20;
select * from sakila.film_text limit 20;
select * from sakila.inventory limit 20;
select * from sakila.language limit 20;
select * from sakila.payment limit 20;
select * from sakila.rental limit 20;
select * from sakila.staff limit 20;
select * from sakila.store limit 20;

-- 3. Select one column from a table. Get film titles.
select title from sakila.film_text;

-- 4. Select one column from a table and alias it. Get unique list of film 
-- languages under the alias language
select distinct
l.name as 'language'
from sakila.language as l;

-- 5.1 Find out how many stores does the company have?
select count(distinct(
store_id)) as 'No. of Stores'
from sakila.store;

-- 5.2 Find out how many employees staff does the company have?
select count(distinct(
staff_id)) as 'No. of Staff'
from sakila.staff;

-- 5.3 Return a list of employee first names only?
select distinct
first_name
from sakila.staff;
