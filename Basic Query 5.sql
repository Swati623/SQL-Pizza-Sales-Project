--List the Top 5 most ordered pizza types 
--along with their quantities

SELECT TOP 5 pt.name , Sum(od.quantity) AS quantity 
from pizza_types AS pt join pizzas AS p
ON pt.pizza_type_id = p.pizza_type_id 
join order_details AS od ON od.pizza_id=p.pizza_id 
group by pt.name
order by quantity desc;