-- exercise 4
USE my_guitar_shop;
SELECT 
    order_id,
    order_date,
    DATE_ADD(order_date, INTERVAL 2 DAY) AS approx_ship_date,
    ship_date,
    DATEDIFF(ship_date, order_date) AS days_to_ship
FROM
    orders
WHERE
    MONTH(order_date) = 4
        AND YEAR(order_date) = 2015
ORDER BY order_id;