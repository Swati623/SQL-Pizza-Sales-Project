--Determine the Top 3 most ordered pizza types based on Revenue for each pizza Category
SELECT category,name,Revenue FROM
(SELECT category,name, Revenue ,rank() over 
(partition by category order by Revenue desc) AS rank 
FROM
(SELECT  pt.category ,pt.name, sum(od.quantity*p.price) AS Revenue
FROM pizza_types AS pt join pizzas AS p
ON pt.pizza_type_id =p.pizza_type_id 
join order_details AS od On od.pizza_id = p.pizza_id
group By pt.category ,pt.name) AS a ) AS b
where rank<=3;