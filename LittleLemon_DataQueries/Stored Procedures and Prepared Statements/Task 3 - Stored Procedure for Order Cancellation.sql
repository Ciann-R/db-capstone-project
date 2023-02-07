DROP PROCEDURE IF EXISTS CancelOrder;

DELIMITER //

CREATE PROCEDURE CancelOrder(IN customer_id INT)
BEGIN
	delete from Orders WHERE CustomerID = CustomerID = customer_id;
END //

DELIMITER ;

Call CancelOrder(5);
