drop table if exists #temp_tablee
create table #temp_tablee
(
id int primary key,
namee varchar(40),
admission_date date,
discharge_date date
)
insert into #temp_tablee
select * from [HealthCare ].dbo.Patients
select * from Patients
select * from #temp_tablee