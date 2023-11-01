# Pizza-Sales-Analysis-using-SQL
select * from pizza_sales
select SUM(total_price) AS Total_Revenue from pizza_sales
Select SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_order_value from pizza_sales
SELECT SUM(quantity) AS Total_pizza_sold from pizza_sales
SELECT COUNT(DISTINCT order_id) AS Total_orders from pizza_sales
SELECT CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) from pizza_sales
select DATENAME(DW, order_date) as order_day, COUNT(DISTINCT order_id) AS total_order from pizza_sales
GROUP BY DATENAME(DW, order_date)
Select DATENAME(MONTH, order_date) AS Month_Name, COUNT(DISTINCT order_id) from 
pizza_sales
GROUP BY DATENAME(MONTH, order_date)
SELECT pizza_category, SUM(total_price)* 100 / (SELECT SUM(total_price) 
from pizza_sales) AS PCT_sales from pizza_sales
GROUP BY pizza_category
SELECT pizza_category, SUM( total_price) AS total_sales, SUM(total_price)* 100 / (SELECT SUM(total_price) 
from pizza_sales) AS PCT_sales from pizza_sales
GROUP BY pizza_category
SELECT pizza_size, SUM( total_price) AS total_sales, SUM(total_price)* 100 / (SELECT SUM(total_price) 
from pizza_sales) AS PCT_sales from pizza_sales
GROUP BY pizza_size
ORDER BY PCT_sales DESC
SELECT  top 5 pizza_name, SUM(total_price) AS total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_Revenue ASC
SELECT  top 5 pizza_name, SUM(quantity) AS total_quantity FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity ASC
SELECT  top 5 pizza_name, COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC
