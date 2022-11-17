 create procedure [dbo].[procedure_cast_actor] @act_id integer,@mov_id integer,@role varchar(255)
 as
 begin 
  if  not exists(
					select 1 from movie_cast 
					where act_id=@act_id and mov_id=@mov_id)
 begin
 insert into movie_cast(act_id,mov_id,role)
 values (@act_id,@mov_id,@role)
 end
 else 
 begin 
 print'Cannot cast more then once'
 end
 end;
      

	  EXECUTE cast_actor 124,921,'George faraday'; 
	   
	   /*Stored Procedure will execute and  new  record is  inserted 
   because actor casting once for the movie*/

	  EXECUTE cast_actor 124,928,'Back to the Future';

	  /*Stored Procedure will execute and  new  record is inserted 
   because actor casting once for the movie*/

	  EXECUTE cast_actor 124,921,'slumdog millionaire';

	  /*Stored Procedure will execute and  new  record is not inserted 
   because actor casting once for the movie*/


