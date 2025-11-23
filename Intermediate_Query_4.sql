-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    ROUND(AVG(Quantity), 0) AS AvgOfPizzas
FROM
    (SELECT 
        o.order_date AS DateOfOrders,
            SUM(od.quantity) AS Quantity
    FROM
        orders AS o
    JOIN orders_details AS od ON o.order_id = od.order_id
    GROUP BY DateOfOrders) AS Order_Quantity;