USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[SelectUserById]    Script Date: 8/3/16 21:55:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SelectUserById]
@Id int
as
begin
SELECT
	Id,
	FirstName,
	LastName,
	UserId,
	Period,
	UserType,
	Email
FROM dbo.SEMSUsers
WHERE Id = @Id
end
GO

