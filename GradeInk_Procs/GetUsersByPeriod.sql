USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[GetUsersByPeriod]    Script Date: 8/3/16 21:54:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetUsersByPeriod]
@Period int
--EXEC GetUsersByPeriod '7'
AS
BEGIN
	SELECT 
		Id,
		FirstName,
		LastName,
		UserId,
		UserType
		
	FROM SEMSUsers

	WHERE Period = @Period

	ORDER BY LastName
END
GO

