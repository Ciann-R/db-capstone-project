DROP PROCEDURE IF EXISTS UpdateBooking;

DELIMITER //

CREATE PROCEDURE UpdateBooking(booking_id INT, booking_date DATE)

	BEGIN
		
        UPDATE Bookings SET BookingDate_Time = booking_date
        WHERE BookingID = booking_id;
        SELECT CONCAT("Booking date updated for ", booking_id);
    
    END //
    
DELIMITER ;

Call UpdateBooking(1, "2022-10-10");