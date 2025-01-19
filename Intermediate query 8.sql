--Join relevant tables to find out the category wise distribution of pizzas 

SELECT pt.category , COUNT(p.pizza_id)
from pizza_types AS pt join pizzas AS p
on pt.pizza_type_id = p.pizza_type_id 
group by pt.category;