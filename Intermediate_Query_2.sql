-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(o.order_time) AS HourOfDay,
    COUNT(o.order_id) AS TotalOrders
FROM
    orders AS o
GROUP BY HourOfDay;