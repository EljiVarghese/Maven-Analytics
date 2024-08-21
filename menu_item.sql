USE restaurant_db;
#----view the menu_items table.
select * from menu_items;
# Find the number of items on the menu
select COUNT(*) from menu_items;
#What are the least and most expensive items on the menu?
select * from menu_items
order by price;
# Most expensive dishes on the menu
select * from menu_items
order by price DESC;
#4. How many italian dishes are on the menu?
select count(*) from menu_items
where category='Italian';
#5. What are the least and most expensive italian dishes on the menu?
select * from menu_items
where category ='Italian'
order by price;
#6. How many dishes are in each category?
select category, count(menu_item_id) as num_dishes
from menu_items
group by category;
#7. What is the average dish price within each category?
select category, avg(price) as avg_price
from menu_items
group by category;