--Determine the distribution of the orders by hour of the day

select DATEPART(HOUR,time) AS Time , COUNT(order_id) AS Orders_COUNT
From orders 
group by DATEPART(HOUR,time)
order By time ;