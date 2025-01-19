--Analyze the cumulative Revenue generated over time

SELECT date, sum(Revenue) over(order by date) AS cum_Revenue
FROM 
(SELECT o.date, sum(od.Quantity* p.price) AS Revenue  
FROM order_details AS od join pizzas AS p
ON p.pizza_id =od.pizza_id 
join orders AS o 
ON o.order_id = od.order_id 
GROUP BY o.date ) AS Sales;