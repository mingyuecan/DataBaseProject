-- Problem 3
SELECT product_name, list_price, date_added
FROM Products
WHERE list_price > 500 AND list_price < 2000
ORDER BY date_added DESC;