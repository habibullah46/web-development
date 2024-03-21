--select m.Name, b.Title,a.Author_name,t.Borrow_date from Bookss b
--join Authorss a 
--on b.Author_id = a.Author_id
--join Transactions t 
--on b.Book_id=t.Book_id
--join Memberss m 
--on m.Member_id=t.Member_id
--where m.Name = 'John Doe'


update Transactions 
set Return_date='2024-02-28' 
where Member_id=1
