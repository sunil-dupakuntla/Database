select  mov_title
from Movie m
inner join movie_director m1 on m.mov_id=m1.mov_id
inner join director d on m1.dir_id=d.dir_id
where trim(dir_fname)='David'