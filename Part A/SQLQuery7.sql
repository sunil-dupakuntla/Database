select mov_title 
from Movie m
inner join rating r on  r.mov_id=m.mov_id
where  rev_stars is null