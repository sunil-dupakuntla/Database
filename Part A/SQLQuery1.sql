select mov_title 
from Movie



select mov_title as 'MovieTitle' from [dbo].[Movie]
inner join [dbo].[movie_genres] on movie.mov_id=movie_genres.mov_id
inner join [dbo].[genres] on movie_genres.gen_id=genres.gen_id
where trim(genres.gen_title)='Horror'