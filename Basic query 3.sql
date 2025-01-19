--Identify the highest priced Pizza

SELECT TOP 1 pt.name, p.price AS Highest_priced_pizza  
FROM pizzas AS p  join pizza_types AS pt
ON p.pizza_type_id = pt.pizza_type_id
ORDER BY p.price desc;