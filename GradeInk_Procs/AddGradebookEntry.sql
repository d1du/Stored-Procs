USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[AddGradebookEntry]    Script Date: 8/3/16 21:50:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[AddGradebookEntry]
	@Id int OUTPUT,
	@UserId nvarchar(128),
	@AssignmentId int,
	@PointsEarned int,
	@InstructorComments nvarchar(200) = null


/*
Declare   
	@Id int, 
	@UserId nvarchar(128) = '78b113dc-3fe1-41ce-a914-b2ab8d4c134b',
	@AssignmentId int = 3,
	@PointsEarned int = 10		
		
Execute dbo.AddGradebookEntry
@ID  output
, @UserId
, @AssignmentId
, @PointsEarned


Select @ID

*/

AS
BEGIN
	INSERT INTO dbo.Gradebook2015
	(
		UserId,
		AssignmentId,
		PointsEarned,
		DateAdded,
		InstructorComments
	)
	VALUES
	(
		@UserId,
		@AssignmentId,
		@PointsEarned,
		GETUTCDATE(),
		@InstructorComments
	)

SET @Id=SCOPE_IDENTITY()


END

GO

