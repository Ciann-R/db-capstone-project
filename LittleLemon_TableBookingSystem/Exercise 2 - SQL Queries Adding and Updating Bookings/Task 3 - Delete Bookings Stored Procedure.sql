DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER //

CREATE PROCEDURE CancelBooking(booking_id)
	
    BEGIN
		
        DELETE FROM Bookings
        WHERE BookingID = booking_id;
        SELECT CONCAT("Cancellation of", booking_id, "was successful");
        
    END //
    
DELIMITER ;

Call CancelBooking(2);