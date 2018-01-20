-- exercise 12.1
USE my_guitar_shop;
CREATE OR REPLACE VIEW customer_addresses AS
    SELECT 
        C.customer_id,
        C.email_address,
        C.last_name,
        C.first_name,
        B.line1 AS bill_line1,
        B.line2 AS bill_line2,
        B.city AS bill_city,
        B.state AS bill_state,
        B.zip_code AS bill_zip,
        S.line1 AS ship_line1,
        S.line2 AS ship_line2,
        S.city AS ship_city,
        S.state AS ship_state,
        S.zip_code AS ship_zip
FROM customers C, addresses B, addresses S
WHERE C.billing_address_id = B.address_id
AND   C.shipping_address_id = S.address_id
