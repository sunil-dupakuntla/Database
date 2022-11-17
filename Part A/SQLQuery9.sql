select act_fname,act_lname,role
from Actor a
inner join movie_cast m on m.act_id=a.act_id
inner join Movie m1 on m1.mov_id=m.mov_id
where trim(mov_title)='Boogie Nights' 

