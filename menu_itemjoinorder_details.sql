#1.combine the menu_items and order_details tables into a single table.
select * from menu_items;
select * from order_details;
select * 
from order_details od left join menu_items mi
     on od.item_id = mi.menu_item_id;
#2.What were the least and most ordered items?What categories were they in?
select item_name,Category, count(order_details_id) as num_purchases
from order_details od left join menu_items mi
     on od.item_id = mi.menu_item_id
group by item_name , category
order by num_purchases;
#3.What are the top 5 orders that spent the most money?
select order_id,SUM(price) as total_spend
from order_details od left join menu_items mi 
	on od.item_id = mi.menu_item_id
group by order_id
order by total_spend Desc
limit 5;
#4.View the details of the highest spend order.What insights can you gather from the 
select category,count(item_id) AS num_items
from order_details od left join menu_items mi
	 ON od.item_id = mi.menu_item_id
     where order_id = 440
     group by category;
#5.view the details of the top 5 highest spend orders.What insights can you gather
select order_id,category,count(item_id) AS num_items
from order_details od left join menu_items mi
	 ON od.item_id = mi.menu_item_id
     where order_id IN (440,2075,1957,330,2675)
     group by order_id,category;
     
     
440	    192.15
2075	191.05
1957	190.10
330	    189.70
2675	185.10
