-- Identify the most common pizza size ordered.

SELECT p.size AS CommonPizza, count(od.order_details_id) as orderCnt
FROM pizza AS p JOIN orders_details AS od ON p.pizza_id = od.order_id
GROUP BY p.size
ORDER BY orderCnt DESC
LIMIT 1;