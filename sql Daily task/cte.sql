--Topic classes
with CTE_Student as (Select customers.C_id,orders.O_id,customers.c_name,customers.country
from customers
Full join orders
on orders.c_Id=customers.C_id
)
select top(5) c_name,country 
from CTE_Student