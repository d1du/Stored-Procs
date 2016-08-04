USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[GetUserHWPercentage]    Script Date: 8/3/16 21:53:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetUserHWPercentage] 
@UserId nvarchar(128)


AS
--EXEC [dbo].[GetUserHWPercentage] 'f7c6da88-5680-4da5-9fb4-23aeb5d3028e' 
BEGIN
Declare 
	@Period int,
	@TotalHWPoints int,
	@EarnedHWPoints int,
	@HWPercentage float

SET @Period = (Select Period from dbo.SEMSUsers WHERE UserId = @UserId)
SET @TotalHWPoints = (SELECT SUM(TotalPoints) FROM dbo.Assignments WHERE Period = @Period AND AssignmentTypeId = 1) 
SET @EarnedHWPoints = (SELECT SUM(PointsEarned) FROM dbo.Gradebook2015 inner join dbo.Assignments 
						ON Gradebook2015.AssignmentId = Assignments.Id 
						WHERE UserId = @UserId AND AssignmentTypeId = 1)
SET @HWPercentage = @EarnedHWPoints*1.0/@TotalHWPoints

select @EarnedHWPoints, @TotalHWPoints, @HWPercentage


END
GO

