USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[AddAssignment]    Script Date: 8/3/16 21:48:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[AddAssignment]
	@Id int OUTPUT,
	@AssignmentName nvarchar(128),
	@AssignmentTypeId int,
	@TotalPoints int,
	@Period int

/*
Declare   
	@Id int
	@AssignmentName nvarchar(128) = 'Slippery Slope',
	@AssignmentTypeId int = 1,
	@TotalPoints int = 10,
	@Period int = 3		
		
Execute dbo.AddAssignment
	@ID output
	, @AssignmentName
	, @AssignmentTypeId
	, @TotalPoints
	, @Period


Select @ID

*/

AS
BEGIN
	INSERT INTO dbo.Assignments
	(
		AssignmentName,
		AssignmentTypeId,
		TotalPoints,
		Period,
		DateAdded
	)
	VALUES
	(
		@AssignmentName,
		@AssignmentTypeId,
		@TotalPoints,
		@Period,
		GETUTCDATE()
	)

SET @Id=SCOPE_IDENTITY()


END

GO

