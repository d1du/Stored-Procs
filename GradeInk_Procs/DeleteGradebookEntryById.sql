USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[DeleteGradebookEntryById]    Script Date: 8/3/16 21:52:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DeleteGradebookEntryById]
@Id int
as
begin
DELETE FROM dbo.Gradebook2015
WHERE Id = @Id
end
GO

