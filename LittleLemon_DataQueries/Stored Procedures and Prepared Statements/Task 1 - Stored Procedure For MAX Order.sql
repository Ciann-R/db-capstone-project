
DROP PROCEDURE IF EXISTS GetMaxQuantity;

DELIMITER //
CREATE PROCEDURE GetMaxQuantity() 
BEGIN
	SELECT MAX(Quantity) AS MaximumQuantityOrder
    FROM Orders;
END //

DELIMITER ;

CALL GetMaxQuantity();
