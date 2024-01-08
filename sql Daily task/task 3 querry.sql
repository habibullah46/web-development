select *,
case 
when price >=50 then 'Expensive'
when price < 50 then 'affordable'
end as 'Status'
from shope
order by price desc
