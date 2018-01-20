-- 06_trip_roster
USE www;
SELECT 
    d.destination_name,
    tt.trip_type_name,
    t.trip_number,
    t.trip_date,
    CONCAT(em.first_name, ' ', em.last_name) AS guide_name,
    CONCAT(g.first_name, ' ', g.last_name) AS guest_name,
    ex.experience_name,
    g.age,
    g.weight,
    g.isSWimmer,
    g.mobile_phone
FROM
    destination d,
    trip_type tt,
    trip t,
    employee em,
    reservation r,
    guest g,
    experience ex
WHERE
    d.destination_code = t.destination_code
        AND tt.trip_type_code = t.trip_type_code
        AND em.employee_id = t.guide_employee_id
        AND r.trip_number = t.trip_number
        AND r.guest_id = g.guest_id
        AND g.experience_code = ex.experience_code
ORDER BY destination_name , trip_type_name , trip_date , guest_name;
