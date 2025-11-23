-- Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(pizza.price * orders_details.quantity),
            2) AS Revenue
FROM
    pizza
        JOIN
    orders_details ON pizza.pizza_id = orders_details.pizza_id;