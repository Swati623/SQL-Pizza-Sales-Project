--Identify the most common pizza size ordered

SELECT Top 1 p.size,COUNT(od.order_details_id) AS order_count
FROM pizzas AS p join order_details AS od
ON p.pizza_id = od.pizza_id
group by p.size order by order_count desc;