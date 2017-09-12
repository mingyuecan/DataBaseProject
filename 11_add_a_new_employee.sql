-- 11_add_a_new_employee
USE www;
INSERT INTO employee 
VALUES(DEFAULT, 'Patrick L.', 'Patterson', 'Pat', '847-555-9706', DEFAULT, 'All Saturdays and Sundays in June, July, and August');

INSERT INTO plays_role
SET employee_id=(SELECT employee_id FROM employee WHERE nickname='Pat'),
role_code=(SELECT role_code FROM role WHERE role_name='Guide');

INSERT INTO plays_role
SET employee_id=(SELECT employee_id FROM employee WHERE nickname='Pat'),
role_code=(SELECT role_code FROM role WHERE role_name='Gear');

INSERT INTO can_guide
SET employee_id=(SELECT employee_id FROM employee WHERE nickname='Pat'),
trip_type_code=(SELECT trip_type_code FROM trip_type WHERE trip_type_name='Kayak');


INSERT INTO can_guide
SET employee_id=(SELECT employee_id FROM employee WHERE nickname='Pat'),
trip_type_code=(SELECT trip_type_code FROM trip_type WHERE trip_type_name='Canoe');

INSERT INTO can_guide
SET employee_id=(SELECT employee_id FROM employee WHERE nickname='Pat'),
trip_type_code=(SELECT trip_type_code FROM trip_type WHERE trip_type_name='Raft');