-- Exercise 3
USE my_guitar_shop ;
SELECT 
    email_address,
    SUM(item_price * quantity) AS total_price,
    SUM(discount_amount * quantity) AS total_discount
FROM
    Customers
        JOIN
    Orders ON Customers.customer_id = Orders.customer_id
        JOIN
    Order_Items ON Orders.order_id = Order_Items.order_id
GROUP BY email_address
ORDER BY total_price DESC;