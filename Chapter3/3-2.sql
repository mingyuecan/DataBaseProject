-- Problem 2
SELECT CONCAT(last_name,', ',first_name) AS full_name
FROM Customers
WHERE last_name REGEXP '^[M-Z].*$'
ORDER BY last_name; 