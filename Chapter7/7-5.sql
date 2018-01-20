-- exercise 5
USE my_guitar_shop;
SELECT 
    p1.product_name, p1.discount_percent
FROM
    products p1
WHERE
    discount_percent NOT IN (SELECT 
            discount_percent
        FROM
            products p2
        WHERE
            p1.product_name <> p2.product_name)
ORDER BY product_name;