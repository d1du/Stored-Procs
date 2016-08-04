USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[UpdateAssignment]    Script Date: 8/3/16 21:56:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[UpdateAssignment]
	@AssignmentName nvarchar(128),
	@AssignmentTypeId int,
	@TotalPoints int,
	@Period int,
	@Id int

/*
Declare  
  @AssignmentName nvarchar(128) = 'Sir, I Come From France',
	@AssignmentTypeId int = 2,
	@TotalPoints int = 20,
	@Period int = 3,
	@Id int = 1
			
 
Execute dbo.UpdateAssignment
	  @AssignmentName
	, @AssignmentTypeId
	, @TotalPoints
	, @Period
	, @Id

*/

AS
BEGIN
UPDATE dbo.Assignments
	SET		AssignmentName = @AssignmentName,
			AssignmentTypeId = @AssignmentTypeId,
			TotalPoints = @TotalPoints,
			Period = @Period

	WHERE Id = @Id

END
GO

