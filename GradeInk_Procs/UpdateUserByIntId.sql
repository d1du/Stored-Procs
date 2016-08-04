USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[UpdateUserByIntId]    Script Date: 8/3/16 21:56:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[UpdateUserByIntId]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Period int = null,
	@UserType int,
	@Email nvarchar(128) = null,
	@Id int

/*
Declare  
  @FirstName nvarchar(50) = 'xxxx'
			, @LastName nvarchar(50) = 'Sequiera'
			, @Period int = null
			, @UserType INT = 1
			, @Email nvarchar(128) = 'wanda.sequiera@lausd.net'
			, @Id int = 1
			
 
Execute dbo.UpdateUser
  @FirstName
, @LastName
, @Period
, @UserType
, @Email
, @Id


*/

AS
BEGIN
UPDATE dbo.SEMSUsers
	SET		FirstName = @FirstName,
			LastName = @LastName,
			Period = @Period,
			UserType = @UserType,
			Email = @Email

	WHERE Id = @Id

END


GO

