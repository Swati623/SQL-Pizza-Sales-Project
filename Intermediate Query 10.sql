--Determne the Top 3 most ordered pizza types based on revenue

SELECT TOP 3 pt.name , sum(p.price* od.quantity) AS Total_Revenue
from pizza_types AS pt join pizzas AS p
ON pt.pizza_type_id = p.pizza_type_id 
join order_details AS od 
On p.pizza_id=od.pizza_id 
Group By pt.name
order by Total_Revenue desc;

