-- exercise 6
USE my_guitar_shop;
SELECT 
    email_address, order_id, order_date
FROM
    customers
        JOIN
    orders
WHERE
    order_date = (SELECT 
            MIN(order_date)
        FROM
            orders
        WHERE
            customers.customer_id = orders.customer_id)
ORDER BY order_date;
   