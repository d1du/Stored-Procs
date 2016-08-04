USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[SelectAssignmentById]    Script Date: 8/3/16 21:55:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SelectAssignmentById]
@Id int
as
begin
SELECT
	Id,
	AssignmentName,
	AssignmentTypeId,
	TotalPoints,
	Period,
	DateAdded

FROM dbo.Assignments
WHERE Id = @Id
end
GO

