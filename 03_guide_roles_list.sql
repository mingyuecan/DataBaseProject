-- 03_guide_roles_list
USE www ;
SELECT 
    em.nickname,
    CONCAT(first_name, ' ', last_name) AS employee_name,
    r.role_name
FROM
    employee em,
    plays_role pr,
    role r
WHERE
    em.employee_id = pr.employee_id
        AND pr.role_code = r.role_code
ORDER BY nickname , role_name;