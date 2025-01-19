--Calculate the percentage contribution of each pizza type to total revenue.

SELECT pt.category, Round(sum(od.quantity * p.price)/(select sum(od.quantity*p.price) from 
order_details AS od join pizzas AS p ON od.pizza_id = p.pizza_id)*100,2) AS Total_Revenue
from pizza_types AS pt join pizzas AS p 
ON pt.pizza_type_id = p.pizza_type_id  
join order_details AS od 
ON od.pizza_id = p.pizza_id
Group by pt.category
order by Total_Revenue desc;