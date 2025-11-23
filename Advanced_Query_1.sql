-- Calculate the percentage contribution of each pizza type to total revenue.
SELECT 
    pt.category AS PizzaType,
    ROUND(SUM(p.price * od.quantity) / (SELECT 
            ROUND(SUM(p.price * od.quantity), 2) AS revenue
        FROM
            pizza AS p
                JOIN
            orders_details AS od ON p.pizza_id = od.pizza_id
                JOIN
            pizza_types AS pt ON pt.pizza_type_id = p.pizza_type_id) * 100, 2) AS TotalRevenuePercentage
FROM
    pizza AS p
        JOIN
    orders_details AS od ON p.pizza_id = od.pizza_id
        JOIN
    pizza_types AS pt ON pt.pizza_type_id = p.pizza_type_id
GROUP BY PizzaType;