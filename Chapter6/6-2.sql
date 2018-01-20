-- Exercise2
USE my_guitar_shop ;
SELECT 
    category_name,
    COUNT(product_id) AS product_qty,
    MAX(list_price) AS most_expensive_price
FROM
    Categories
        JOIN
    Products ON Categories.category_id = Products.category_id
GROUP BY category_name;