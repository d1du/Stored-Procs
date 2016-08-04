USE [SEMS2015]
GO

/****** Object:  StoredProcedure [dbo].[DeleteUserById]    Script Date: 8/3/16 21:52:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DeleteUserById]
@Id int
as
begin
DELETE FROM dbo.SEMSUsers
WHERE Id = @Id
end
GO

