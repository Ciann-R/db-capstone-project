CREATE VIEW OrdersSummary AS SELECT
	Customers.CustomerID, 
	Customers.CustomerName, 
	Orders.OrderID, 
	Orders.Total, 
	Menu.MenuName, 
	Menuitems_new.Mains

FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Menu ON Orders.MenuID = Menu.MenuID
INNER JOIN 
	(SELECT MenuItems.Mains, Menu.MenuID 
	 FROM MenuItems 
     INNER JOIN Menu ON Menu.MenuItemsID = MenuItems.MenuItemID) AS Menuitems_new
ON Orders.MenuID = Menuitems_new.MenuID

WHERE Orders.Total > 150

ORDER BY Orders.Total ASC

LIMIT 4;