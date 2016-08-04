USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[GetUserIdByIntId]    Script Date: 8/3/16 21:53:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetUserIdByIntId]
	@IntId int
AS
BEGIN
	SELECT UserId from SEMSUsers
	WHERE Id = @IntId
END

--EXEC GETUSERIDBYINTID 20
GO

