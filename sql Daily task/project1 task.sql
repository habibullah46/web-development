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
 --querry 3
 select p.Name  ,p.Price, sum(od.Quantity) as total_quantity from Users u
 join Orders o
 on u.UserID = o.OrderID
 join OrderDetails od
 on o.OrderID = od.OrderID
 join Products p 
 on od.ProductID = p.ProductID
 where od.Quantity>3
 group by od.Quantity , name , p.Price

---querry number 4
select p.Name, MAX(od.Quantity) as MaximumOrders from Users u
join Orders o
on u.UserID = o.UserID
join OrderDetails od
on o.OrderID = od.OrderID
join Products p 
on od.ProductID = p.ProductID
group by name , Quantity
order by Quantity desc

--trim querry
select u.Username,TRIM(u.Username) as afterTrim from Users u


--replace function
select Name , REPLACE(Name,'laptop','myphoone') as replace  from Products
--temporary file
create table #temptable
(id int,
 Usid int,
 dates date,
 ammount int,
)