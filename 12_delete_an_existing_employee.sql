-- 12_delete_an_existing_employee
USE www;
DELETE FROM can_guide 
WHERE
    employee_id = (SELECT 
        employee_id
    FROM
        employee
    
    WHERE
        nickname = 'Summer');
        
DELETE FROM plays_role 
WHERE
    employee_id = (SELECT 
        employee_id
    FROM
        employee
    
    WHERE
        nickname = 'Summer');

SET SQL_SAFE_UPDATES=0;

DELETE FROM employee 
WHERE
    nickname = 'Summer';