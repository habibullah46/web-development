create table passenger
(
  id varchar(40),
  P_name varchar(40),
  f_name varchar(40)
);
insert into passenger
values -- (' 1 ','H@bibulah ','Abdul Khalq!'),
--(' 1',' ali','salman '),
('2 ','imran ','dol@d')
select * from passenger

select p.id,rTRIM(p.id) as trimed
from passenger p

select p.f_name , replace(p.f_name,'salman','aqeel') 
as replaced 
from passenger p;


select p.f_name, substring (p.f_name,1,8)
as replaced 
from passenger p;