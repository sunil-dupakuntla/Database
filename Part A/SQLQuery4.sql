select dir_fname,dir_Iname
from director 
where dir_id=(select dir_id
			  from  movie_director
			  where mov_id=(select mov_id
							from movie_cast
							where  trim(role)='Eyes Wide Shut'))
