-- exercise 3
USE my_guitar_shop;
SELECT 
    category_name
FROM
    categories
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            products
        WHERE
            category_id = categories.category_id);
	