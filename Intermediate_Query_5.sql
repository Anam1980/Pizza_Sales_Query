-- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pt.name AS PizzaType, SUM(p.price * od.quantity) AS revenue
FROM
    pizza AS p
        JOIN
    orders_details AS od ON p.pizza_id = od.pizza_id
        JOIN
    pizza_types AS pt ON pt.pizza_type_id = p.pizza_type_id
GROUP BY PizzaType
ORDER BY revenue DESC
LIMIT 3;