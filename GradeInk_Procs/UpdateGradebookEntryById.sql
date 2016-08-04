USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[UpdateGradebookEntryById]    Script Date: 8/3/16 21:56:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[UpdateGradebookEntryById]
	@Id int,
	@AssignmentId int,
	@PointsEarned int,
	@InstructorComments nvarchar(200) = null


/*
Declare  
	@Id int = 4,
	@AssignmentId int = 1,
	@PointsEarned int = 9,
	@InstructorComments nvarchar(200) = 'You suck'
			
 
Execute dbo.UpdateGradebookEntryById
	@Id,
	@AssignmentId,
	@PointsEarned,
	@InstructorComments 

*/

AS
BEGIN
UPDATE dbo.Gradebook2015
	SET		AssignmentId = @AssignmentId,
			PointsEarned = @PointsEarned,
			InstructorComments = @InstructorComments

	WHERE Id = @Id

END
GO

