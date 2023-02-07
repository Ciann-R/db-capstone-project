DROP PROCEDURE IF EXISTS AddBooking;

DELIMITER //

CREATE PROCEDURE AddBooking(customer_id INT, booking_id INT, table_number INT, booking_date DATE, no_of_guests INT)

	BEGIN
		
        INSERT INTO Bookings(BookingID, CustomerID, TableID, BookingDate_Time, No_ofGuests)  
		VALUES (booking_id, customer_id, table_number, booking_date, no_of_guests);
        SELECT "Booking Confirmed";
        
    END //
    
DELIMITER ;

Call AddBooking(1, 2, 3, "2022-10-10", 4);