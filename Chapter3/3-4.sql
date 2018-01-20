-- Problem 4
SELECT product_name, list_price, discount_percent, ROUND(list_price * discount_percent/100, 2) AS discount_amount, ROUND(list_price - list_price * discount_percent/100, 2) discount_price
FROM Products
ORDER BY discount_price DESC
LIMIT 5;