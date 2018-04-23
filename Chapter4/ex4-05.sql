use my_guitar_shop;
SELECT 
    p1.product_name, p1.list_price
FROM
    products p1
        JOIN
    products p2 ON  p1.list_price = p2.list_price
WHERE p1.product_id <> p2.product_id
ORDER BY p1.product_name;

