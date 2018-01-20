-- exercise 2
USE my_guitar_shop;
SELECT 
    order_date,
    DATE_FORMAT(order_date, '%Y') AS format1,
    DATE_FORMAT(order_date, '%b-%d-%Y') AS formate2,
    DATE_FORMAT(order_date, '%h:%i %p') AS twelve_hour,
    DATE_FORMAT(order_date, '%m/%d/%y %H:%i') AS format3
FROM
    orders
ORDER BY order_date;