select rev_name 
from Reviewer r1
inner join rating r2 on r1.rev_id=r2.rev_id
where rev_stars >= 8 and trim(rev_name)!=' '