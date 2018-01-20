/*  
	Please do not distribute exercise solutions
 */
use my_guitar_shop;
SELECT 
    first_name, last_name, line1, city, state, zip_code
FROM
    customers c
        JOIN
    addresses a ON c.shipping_address_id = a.address_id
ORDER BY last_name , first_name
;