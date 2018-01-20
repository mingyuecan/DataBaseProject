-- exercise 3
USE my_guitar_shop;
SELECT 
    card_number,
    LENGTH(card_number),
    SUBSTRING(card_number,-4) AS last_digits,
    CONCAT('XXXX-XXXX-XXXX-', SUBSTRING(card_number,-4)) AS masked_card_number
FROM
    orders
ORDER BY card_number;