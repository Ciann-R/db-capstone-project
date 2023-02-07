DROP PROCEDURE IF EXISTS AddValidBooking;

DELIMITER //

CREATE PROCEDURE AddValidBooking(customer_id INT, booking_id INT, table_number INT, booking_date DATE, no_of_guests INT)
	BEGIN
		START TRANSACTION;
        
			INSERT INTO Bookings(BookingID, CustomerID, TableID, BookingDate_Time, No_ofGuests)  
            VALUES (booking_id, customer_id, table_number, booking_date, no_of_guests);
            
            IF EXISTS (SELECT * FROM Bookings WHERE BookingDate_Time = booking_date AND TableID = table_number) THEN ROLLBACK;
            
            ELSE COMMIT;
            
            END IF;
	END //
    
    DELIMITER ;
    
Call AddValidBooking(1, 2, 3, "2022-10-10", 5);


