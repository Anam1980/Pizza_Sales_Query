-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
select Pizza_Category,  Pizza_Name, Revenue
from 
(select Pizza_Category,  Pizza_Name, Revenue,
rank() over(partition by Pizza_Category order by Revenue desc) as rn
from
(SELECT 
    pt.category AS Pizza_Category,
    pt.name AS Pizza_Name,
    SUM(p.price * od.quantity) AS Revenue
FROM
    pizza AS p
    JOIN
    pizza_types AS pt ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    orders_details AS od ON p.pizza_id = od.pizza_id
GROUP BY Pizza_Category,  Pizza_Name) as RankTable) as FinalTable where rn<=3;