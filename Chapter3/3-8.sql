-- Problem 8
SELECT CONCAT('$',format(100,0)) AS Price,
CONCAT(format(.07 * 100,0) , '%') AS TaxRate,
CONCAT('$',format(100 * .07,0)) AS TaxAmount,
CONCAT('$',FORMAT((100) + (100 * .07),0)) AS Total;