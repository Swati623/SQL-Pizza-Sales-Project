--Group the orders By Date and calculate the average number of pizzas ordered per day.

SELECT AVG(quantity) AS orders_per_day 
from (SELECT o.Date , SUM(od.quantity) AS quantity 
FROM orders AS o  join order_details AS od 
ON o.order_id = od.order_id
Group by Date )AS Orders_quantity;