-- Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT 
    pt.category AS PizzaCategory,
    SUM(od.quantity) AS TotalQuantity
FROM
    pizza_types AS pt
        JOIN
    pizza AS p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    orders_details AS od ON od.pizza_id = p.pizza_id
GROUP BY PizzaCategory;