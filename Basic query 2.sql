-- Calculate the total revenue generated from Pizza sales

SELECT ROUND(SUM(p.price * od.quantity), 2) AS Total_Revenue
FROM pizzas AS p INNER JOIN order_details AS od 
ON p.pizza_id = od.pizza_id;
