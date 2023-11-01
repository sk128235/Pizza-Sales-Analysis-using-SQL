SELECT  top 5 pizza_name, SUM(total_price) AS total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_Revenue ASC
SELECT  top 5 pizza_name, SUM(quantity) AS total_quantity FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity ASC
SELECT  top 5 pizza_name, COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC

