SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Steve Shortt
-- Create date: 18 Feb 2017
-- Description:	Plan Update
-- =============================================
ALTER PROCEDURE [synps].[api_plan_dml_upd]
	@PlanUId uniqueidentifier
	,@Name varchar(250)
	,@Description varchar(500) = null
	,@UniqueName varchar(250)
	,@PlanFile varchar(max)
	,@PlanFileIsUri bit = 0
	,@PlanContainerUId uniqueidentifier
AS
BEGIN

	UPDATE [synps].[Plan]
	   SET [PlanUId] = @PlanUId
		  ,[Name] = @Name
		  ,[Description] = @Description
		  ,[UniqueName] = @UniqueName
		  ,[PlanFile] = @PlanFile
		  ,[PlanFileIsUri] = @PlanFileIsUri
		  ,[PlanContainerUId] = @PlanContainerUId
	   WHERE [PlanUId] = @PlanUId

END