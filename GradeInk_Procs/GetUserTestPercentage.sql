USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[GetUserTestPercentage]    Script Date: 8/3/16 21:54:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetUserTestPercentage] 
@UserId nvarchar(128)


AS
--EXEC [dbo].[GetUserTestPercentage] 'f7c6da88-5680-4da5-9fb4-23aeb5d3028e' 
BEGIN
Declare 
	@Period int,
	@TotalTestPoints int,
	@EarnedTestPoints int,
	@TestPercentage float

SET @Period = (Select Period from dbo.SEMSUsers WHERE UserId = @UserId)
SET @TotalTestPoints = (SELECT SUM(TotalPoints) FROM dbo.Assignments WHERE Period = @Period AND AssignmentTypeId = 3) 
SET @EarnedTestPoints = (SELECT SUM(PointsEarned) FROM dbo.Gradebook2015 inner join dbo.Assignments 
						ON Gradebook2015.AssignmentId = Assignments.Id 
						WHERE UserId = @UserId AND AssignmentTypeId = 3)
SET @TestPercentage = @EarnedTestPoints*1.0/@TotalTestPoints

select @EarnedTestPoints, @TotalTestPoints, @TestPercentage


END
GO

