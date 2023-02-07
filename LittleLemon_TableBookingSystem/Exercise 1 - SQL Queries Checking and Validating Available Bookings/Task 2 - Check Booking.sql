DROP PROCEDURE IF EXISTS CheckBooking;

DELIMITER //

CREATE PROCEDURE CheckBooking(booking_date DATE, table_number INT)
	BEGIN
		SELECT
			CASE
			WHEN (SELECT * FROM Bookings WHERE TableID = table_number AND BookingDate_Time = booking_date) 
            THEN (SELECT * FROM Bookings AS FreeTables WHERE NOT TableID = table_number AND NOT BookingDate_Time = booking_date)
            ELSE CONCAT("Table", table_number, "is available")
            END
		AS BookingAvailablility
    END //

DELIMITER ;

Call CheckBooking("2022-10-10", 5);