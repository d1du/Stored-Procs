USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[SelectAllAssignments]    Script Date: 8/3/16 21:54:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SelectAllAssignments]
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
--exec selectallassignments
ORDER BY Period, DateAdded
END
GO

