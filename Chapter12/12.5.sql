-- exercise 12.5
USE my_guitar_shop;
CREATE OR REPLACE VIEW product_summary AS
SELECT product_name, COUNT(*) AS order_count, SUM(item_total) AS order_total
FROM order_item_products
GROUP BY product_name
ORDER BY order_total DESC