
ALTER PROCEDURE  [dbo].[SP_mbk_details_name]
	(
	@bk_name                 varchar(50),
	@btype_name                varchar(20),
	@publication_year         int,
	@shelf_no                int,
	@language_name             varchar(20),	
	@auther_name                varchar(20)
	)
AS
BEGIN

declare @auther_code as numeric(10)
declare @btype_code  as numeric(10)
declare @shelf_code as numeric(10)
declare @language_code as numeric(10)


	IF NOT exists(select auther_name  from ggn_auther where auther_name=@auther_name)			
		BEGIN		
		 	insert into ggn_auther(auther_name) values(UPPER(@auther_name))		 		  
	    END    
	
      select @auther_code=auther_code  from ggn_auther where auther_name=@auther_name
	
	  if NOT EXISTS(select btype_name from mbtype_details where btype_name=@btype_name)
  
      BEGIN
      insert into mbtype_details(btype_name)values(UPPER(@btype_name))
      END
    
       select @btype_code=btype_code from mbtype_details where btype_name=@btype_name
    
	  if NOT EXISTS(select shelf_no from ggn_shelf where shelf_no=@shelf_no)
  
      BEGIN
      insert into ggn_shelf(shelf_no)values(UPPER(@shelf_no))
     END
    
     select @shelf_code=shelf_code from ggn_shelf where shelf_no=@shelf_no
     
     
     if NOT EXISTS(select language_name from ggn_languagetype where language_name=@language_name)
  
      BEGIN
      insert into ggn_languagetype(language_name)values(UPPER(@language_name))
     END
    
     select @language_code=language_code from ggn_languagetype where language_name=@language_name
    
	  insert into mbk_details(bk_name,auther_code,btype_code,publication_year,shelf_code,language_code)
	 Values(UPPER(@bk_name),@auther_code,@btype_code,@publication_year,@shelf_code,@language_code)
END

select * from mbk_details


     