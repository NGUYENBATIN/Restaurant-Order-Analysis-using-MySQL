-- Objective 1: explore item table
use  restaurant_db;
-- 1. view the menu_items table
select * From menu_items; 

-- 2. Find the number of items on the menu
select count(*) from menu_items;

-- 3. what are the least and most expensive items on the menu?
select * 
from menu_items
order by price; -- the least expensive

select * 
from menu_items
order by price desc; -- the most expensive

-- 4. how many Italian dishes are on the menu ?
select count(*) 
from menu_items
where category = 'Italian';

-- 5. what are the least and most expensive Italian dishes on the menu?
select * 
from menu_items
where category = 'Italian'
order by price;

select * 
from menu_items
where category = 'Italian'
order by price desc;

-- 6. How many dishes are in each category?
select Category, count(*) As num_dishes
from menu_items
group by category;
-- 7. What is the average dish price within each category?
 SELECT Category, avg(price) from menu_items
 group by Category;
 
