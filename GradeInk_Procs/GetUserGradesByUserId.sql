USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[GetUserGradesByUserId]    Script Date: 8/3/16 21:53:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetUserGradesByUserId]
@UserId nvarchar(128)
--EXEC GETUSERGRADESBYUSERID 'f7c6da88'
AS
BEGIN
	SELECT 
		Gradebook2015.Id,
		Assignments.Id as AssignmentId,
		AssignmentName,
		AssignmentTypeId,
		PointsEarned,
		TotalPoints,
		Gradebook2015.DateAdded,
		InstructorComments
		
	FROM Gradebook2015 inner join Assignments on Gradebook2015.AssignmentId = Assignments.Id

	WHERE UserId LIKE @UserId+'%'

	ORDER BY DateAdded

END
GO

