-- 08_add_a_new_reservation
USE www;
INSERT INTO guest 
SET guest_id=DEFAULT,
first_name='Lily',
last_name='Ludsen',
age=25,
weight=120,
isSwimmer=1,
mobile_phone=DEFAULT,
experience_code= (SELECT experience_code FROM experience WHERE experience_name='Novice');

INSERT INTO reservation 
SET trip_number=562,
guest_id= (SELECT guest_id FROM guest WHERE first_name='Lily' AND last_name='Ludsen');