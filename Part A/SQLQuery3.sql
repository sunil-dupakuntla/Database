select * from Actor a
inner join movie_cast m on a.act_id=m.act_id
inner join Movie m1 on m.mov_id=m1.mov_id
where trim(mov_title)='Deliverance'