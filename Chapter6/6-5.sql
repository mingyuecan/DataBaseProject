-- Exercise 5
USE my_guitar_shop;
SELECT 
    email_address,
    COUNT(Orders.order_id) AS order_numbers,
    SUM((item_price - discount_amount) * quantity) AS total_amount
FROM
    Customers
        JOIN
    Orders ON Customers.customer_id = Orders.customer_id
        JOIN
    Order_Items ON Orders.order_id = Order_Items.order_id
WHERE
    item_price > 400
GROUP BY email_address
HAVING COUNT(Orders.order_id) > 1
ORDER BY total_amount DESC;