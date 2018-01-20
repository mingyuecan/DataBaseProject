-- Exercise 1
USE my_guitar_shop;
SELECT 
    list_price,
    discount_percent,
    ROUND(list_price * discount_percent, 2) AS discount_amount
FROM
    products
ORDER BY discount_amount;