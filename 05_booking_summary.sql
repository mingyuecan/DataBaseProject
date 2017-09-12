-- 05_booking_summary
USE www;
SELECT 
    d.destination_name,
    tt.trip_type_name,
    t.trip_number,
    t.trip_date,
    CONCAT(em.first_name, ' ', em.last_name) AS guide_name,
    t.capacity,
    COUNT(guest_id) AS guests_booked,
    (t.capacity - COUNT(guest_id)) AS positions_available
FROM
    destination d
        JOIN
    trip t ON d.destination_code = t.destination_code
        JOIN
    trip_type tt ON tt.trip_type_code = t.trip_type_code
        JOIN
    employee em ON em.employee_id = t.guide_employee_id
        LEFT JOIN
    reservation r ON r.trip_number = t.trip_number
GROUP BY trip_number
ORDER BY destination_name , trip_type_name , trip_date , trip_number;