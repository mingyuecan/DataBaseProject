USE my_guitar_shop;
SELECT 
    date_added,
    CAST(date_added AS DATE) AS product_date,
    CAST(date_added AS CHAR (7)) AS product_year_month,
    CAST(date_added AS TIME) AS product_time
FROM
    Products
ORDER BY date_added;