-- 07_trip_detail_sheet
USE www;
SELECT 
    d.destination_name,
    tt.trip_type_name,
    t.trip_number,
    t.trip_date,
    CONCAT(em.first_name, ' ', em.last_name) AS guide_name,
    em.mobile_phone AS guide_mobile_phone,
    '414-555-1212' AS Wilma’s_Wild_Wisconsin_Office_Phone,
    t.latest_guest_arrival_time,
    t.departure_time,
    t.estimated_return_time,
    gp.gathering_point_description
FROM
    destination d,
    trip_type tt,
    trip t,
    employee em,
    gathering_point gp
WHERE
    d.destination_code = t.destination_code
        AND tt.trip_type_code = t.trip_type_code
        AND em.employee_id = t.guide_employee_id
        AND gp.gathering_point_id = t.gathering_point_id
ORDER BY destination_name , trip_type_name , trip_date;
