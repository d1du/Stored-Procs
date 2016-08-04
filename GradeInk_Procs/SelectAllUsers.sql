USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[SelectAllUsers]    Script Date: 8/3/16 21:55:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SelectAllUsers]

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

ORDER BY Period, LastName
--exec selectallusers
end
GO

