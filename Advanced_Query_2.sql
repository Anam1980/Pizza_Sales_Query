-- Analyze the cumulative revenue generated over time.

select Dates, sum(revenue) over (order by Dates) as cum_revenue from
(SELECT o.order_date as Dates, SUM(p.price * od.quantity) AS revenue FROM pizza AS p
JOIN orders_details AS od ON p.pizza_id = od.pizza_id
JOIN orders AS o ON o.order_id=od.order_id
group by Dates) as sales;