-- 09_transfer_a_reservation
USE www;
UPDATE reservation 
SET 
    trip_number = 564
WHERE
    trip_number = 562
        AND guest_id = (SELECT 
            guest_id
        FROM
            guest
        WHERE
            first_name = 'Lamar'
                AND last_name = 'Lincoln');