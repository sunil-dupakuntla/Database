select mov_title,mov_year,mov_dt_rel,dir_fname+dir_Iname as director_name ,act_fname+act_lname as actor_name
from Movie m
inner join rating r on r.mov_id=m.mov_id
inner join Reviewer r1 on r1.rev_id=r.rev_id
inner join movie_cast m1 on m.mov_id=m1.mov_id
inner join Actor a on m1.act_id=a.act_id
inner join movie_director m2 on m2.mov_id=m1.mov_id
inner join director d on d.dir_id=m2.dir_id
where trim(rev_name)='Neal Wruck'