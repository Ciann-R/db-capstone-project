PREPARE GetOrderDetail 
FROM "SELECT OrderID, Quantity, Total FROM Orders WHERE CustomerID = ?";

SET @id = 1;
EXECUTE GetOrderDetail USING @id;