-- Exercise 1
USE my_guitar_shop ;
SELECT 
    COUNT(*), SUM(tax_amount)
FROM
    Orders;
