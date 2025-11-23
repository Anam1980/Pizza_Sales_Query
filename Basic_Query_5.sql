-- List the top 5 most ordered pizza types along with their quantities.
SELECT 
    pt.name AS MostOrdered, SUM(od.quantity) as Quantity
FROM
    pizza_types AS pt
        JOIN
    pizza AS p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    orders_details AS od ON od.pizza_id = p.pizza_id
GROUP BY pt.name
ORDER BY Quantity DESC
LIMIT 5;  