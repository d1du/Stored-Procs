USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[SelectAllAssignmentsByPeriod]    Script Date: 8/3/16 21:55:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SelectAllAssignmentsByPeriod]
@Period int
AS
BEGIN
	SELECT 
		Id,
		AssignmentName,
		AssignmentTypeId,
		TotalPoints,
		Period,
		DateAdded
	FROM dbo.Assignments
	WHERE Period = @Period
--exec SelectAllAssignmentsByPeriod 3
ORDER BY DateAdded
END
GO

