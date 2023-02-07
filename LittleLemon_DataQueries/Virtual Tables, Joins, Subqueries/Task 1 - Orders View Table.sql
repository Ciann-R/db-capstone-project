CREATE VIEW OrdersView AS SELECT Orders.OrderID, Orders.Quantity, Orders.Total
FROM Orders
WHERE Orders.Quantity > 2;
