select mov_year
from movie m 
inner join rating r on m.mov_id=r.mov_id
where rev_stars>=4
group by mov_year 
having mov_year>4
