USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[DeleteAssignmentById]    Script Date: 8/3/16 21:52:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DeleteAssignmentById]
@Id int
as
begin
--EXEC deleteassignmentbyid 5
DELETE FROM dbo.Gradebook2015
WHERE AssignmentId = @Id
DELETE FROM dbo.Assignments
WHERE Id = @Id
end
GO

