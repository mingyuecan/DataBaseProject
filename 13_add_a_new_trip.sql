-- 13_add_a_new_trip
USE www;
INSERT INTO trip
SET trip_number=666, 
trip_date='2014-08-02', 
capacity=7, 
latest_guest_arrival_time='7:30:00', 
departure_time='8:15:00', 
estimated_return_time='16:00:00', 
destination_code=(SELECT destination_code FROM destination WHERE destination_name='Upper Wisconsin River'),
trip_type_code=(SELECT trip_type_code FROM trip_type WHERE trip_type_name='Kayak'),
guide_employee_id=(SELECT employee_id FROM employee WHERE nickname='Pat'),
gear_employee_id=DEFAULT,
gathering_point_id=(SELECT gathering_point_id FROM gathering_point WHERE gathering_point_description="Omar's Live Bait and Bridal Salon; 3421 Highway KZ; Casino Springs; WI 54776")
