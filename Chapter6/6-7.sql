-- Exercise 7
USE my_guitar_shop ;
SELECT 
    CONCAT(first_name, ' ', last_name) AS customer_name,
    email_address,
    COUNT(DISTINCT product_id) AS product_number
FROM
    Customers
        JOIN
    Orders ON Customers.customer_id = Orders.customer_id
        JOIN
    Order_Items ON Orders.order_id = Order_Items.order_id
GROUP BY email_address
HAVING product_number > 1;
