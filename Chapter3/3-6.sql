-- Problem 6
SELECT order_id, order_date, ship_date
FROM Orders
WHERE ship_date IS NULL;
