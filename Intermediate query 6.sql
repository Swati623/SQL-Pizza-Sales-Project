--Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT pt.category , sum(od.quantity) AS quantity
FROM pizza_types AS pt join pizzas AS p 
ON pt.pizza_type_id = p.pizza_type_id 
join order_details AS od ON p.pizza_id = od.pizza_id
group by pt.category;
