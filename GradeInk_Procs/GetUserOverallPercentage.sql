USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[GetUserOverallPercentage]    Script Date: 8/3/16 21:54:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetUserOverallPercentage] 
@UserId nvarchar(128)


AS
--EXEC [dbo].[GetUserOverallPercentage] 'f7c6da88-5680-4da5-9fb4-23aeb5d3028e' 
BEGIN
Declare 
	@Period int,
	@TotalPoints int,
	@EarnedPoints int,
	@Percentage float

SET @Period = (Select Period from dbo.SEMSUsers WHERE UserId = @UserId)
SET @TotalPoints = (SELECT SUM(TotalPoints) FROM dbo.Assignments WHERE Period = @Period) 
SET @EarnedPoints = (SELECT SUM(PointsEarned) FROM dbo.Gradebook2015  
						WHERE UserId = @UserId)
SET @Percentage = @EarnedPoints*1.0/@TotalPoints

select @EarnedPoints, @TotalPoints, @Percentage


END
GO

