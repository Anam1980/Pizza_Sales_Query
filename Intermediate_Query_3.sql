-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT 
    pt.category AS Category, COUNT(pt.name) as TotalPizzasDistributed
FROM
  pizza_types as pt
GROUP BY Category;