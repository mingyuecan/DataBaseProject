-- exercise 12-2
USE my_guitar_shop;
SELECT customer_id, last_name, first_name,bill_line1
FROM customer_addresses
ORDER BY last_name,first_name