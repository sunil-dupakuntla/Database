select act_fname,act_lname
from Actor
where act_id in (select act_id
			   from movie_cast
			   group by act_id
			   having count(act_id)>1)