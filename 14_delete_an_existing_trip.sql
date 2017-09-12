-- 14_delete_an_existing_trip
USE www;
DELETE FROM reservation
WHERE trip_number=576;

DELETE FROM trip
WHERE trip_number=576;