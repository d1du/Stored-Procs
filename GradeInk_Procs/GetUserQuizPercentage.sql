USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[GetUserQuizPercentage]    Script Date: 8/3/16 21:54:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetUserQuizPercentage] 
@UserId nvarchar(128)


AS
--EXEC [dbo].[GetUserQuizPercentage] 'f7c6da88-5680-4da5-9fb4-23aeb5d3028e'  
BEGIN
Declare 
	@Period int,
	@TotalQuizPoints int,
	@EarnedQuizPoints int,
	@QuizPercentage float

SET @Period = (Select Period from dbo.SEMSUsers WHERE UserId = @UserId)
SET @TotalQuizPoints = (SELECT SUM(TotalPoints) FROM dbo.Assignments WHERE Period = @Period AND AssignmentTypeId = 2) 
SET @EarnedQuizPoints = (SELECT SUM(PointsEarned) FROM dbo.Gradebook2015 inner join dbo.Assignments 
						ON Gradebook2015.AssignmentId = Assignments.Id 
						WHERE UserId = @UserId AND AssignmentTypeId = 2)
SET @QuizPercentage = @EarnedQuizPoints*1.0/@TotalQuizPoints

select @EarnedQuizPoints, @TotalQuizPoints, @QuizPercentage


END
GO

