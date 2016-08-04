USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[SelectGradebookEntryById]    Script Date: 8/3/16 21:55:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SelectGradebookEntryById]
@Id int
as
begin
SELECT
	UserId,
	AssignmentId,
	AssignmentName,
	AssignmentTypeId,
	PointsEarned,
	TotalPoints,
	gradebook2015.DateAdded,
	InstructorComments

FROM dbo.Gradebook2015 inner join dbo.Assignments on Gradebook2015.AssignmentId = assignments.Id
WHERE gradebook2015.Id = @Id
end

--EXEC SelectGradebookEntryById 3


GO

