-- 10_delete_a_reservation
DELETE FROM reservation 
WHERE
    trip_number = 562
    AND guest_id = (SELECT 
        guest_id
    FROM
        guest
    
    WHERE
        first_name = 'Bart Jr.'
        AND last_name = 'Samuels')
