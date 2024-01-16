select * from comments
select * from  Posts
select * from Users


select count(c.comment_text ) as NumberOfComments, count(p.P_id) as NumberOfPost, u.Username as NumberOfId from Posts p
join comments c
on p.P_id = c.P_id
join Users u 
on c.U_id = u.u_id
group by comment_text, u.Username , p.P_id