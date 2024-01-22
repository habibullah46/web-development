select * from Users
select * from Products
select * from Orders
select * from OrderDetails
select * from Inventory
select * from Categories

--first query using condition city 
select * from Users u
join Products p 
on u.UserID = p.ProductID
where city = 'lahore'

--2 query using 
select u.Username , u.Address,u.PhoneNumber,o.OrderDate,o.TotalAmount from Users u
join Orders o
on u.UserID = o.UserID
where City = 'islamabad'
