/* using salesDB,a list of orders,along with the 
	related customer,product and employee details

for each order,display:
	order ID,Customer's name,product name,sales amount
	product price , salesperson's name.*/

select 
	so.OrderID,
	sc.FirstName as Customers_name,
	sc.LastName as Customers_lastname,
	sp.Product as Product_name,
	so.sales as Sales_amount,
	sp.Price as Product_price,
	se.FirstName as Salepersons_name,
	se.LastName as Salespersons_lastname
from Sales.Orders as so
left join Sales.Customers as sc
on so.CustomerID=sc.CustomerID
left join Sales.Products as sp
on sp.ProductID = so.ProductID
left join Sales.Employees as se
on so.SalesPersonID = se.EmployeeID
