-- Exercise 6
USE my_guitar_shop ;
SELECT 
    product_name,
    SUM((item_price - discount_amount) * quantity) AS total_amount
FROM
    Products
        JOIN
    Order_Items ON Products.product_id = Order_Items.product_id
GROUP BY product_name WITH ROLLUP;
