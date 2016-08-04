USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[GetAssignmentsByPeriod]    Script Date: 8/3/16 21:53:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetAssignmentsByPeriod]
@Period int
--EXEC GetAssignmentsByPeriod '3'
AS
BEGIN
	SELECT 
		Assignments.Id,
		AssignmentName,
		AssignmentTypeId,
		TotalPoints,
		Period,
		DateAdded
		
	FROM Assignments

	WHERE Period = @Period

END
GO

