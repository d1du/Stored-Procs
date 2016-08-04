USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 8/3/16 21:51:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[AddUser]
	@Id int OUTPUT,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@UserId nvarchar(128),
	@Period int = 0,
	@UserType int,
	@Email nvarchar(128) = null

/*
Declare    
		@Id int,
		@FirstName nvarchar (50) = 'Derek',
		@LastName nvarchar (50) = 'Du',
		@UserId nvarchar(128) = 'xxxx',
		@Period int = null,
		@UserType int = 1,
		@Email nvarchar(128) = null
		
			
		
Execute dbo.AddUser
@ID  output
, @FirstName
, @LastName
, @UserId nvarchar(128)
, @Period
, @UserType
, @Email

 
 
Select @ID

*/

AS
BEGIN
	INSERT INTO dbo.SEMSUsers
	(
		FirstName,
		LastName,
		UserId,
		Period,
		UserType,
		Email
	)
	VALUES
	(
		@FirstName,
		@LastName,
		@UserId,
		@Period,
		@UserType,
		@Email
	)

SET @Id=SCOPE_IDENTITY()


END

GO

