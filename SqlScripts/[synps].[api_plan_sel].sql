SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Steve Shortt
-- Create date: 18 Feb 2017
-- Description:	Plan Select
-- =============================================
ALTER PROCEDURE [synps].[api_plan_sel]
	@PlanUId uniqueidentifier
	,@Name varchar(250)
	,@Description varchar(500) = null
	,@UniqueName varchar(250)
	,@PlanFile varchar(max)
	,@PlanFileIsUri bit = 0
	,@PlanContainerUId uniqueidentifier
AS
BEGIN

SELECT [PlanUId]
      ,[Name]
      ,[Description]
      ,[UniqueName]
      ,[PlanFile]
      ,[PlanFileIsUri]
      ,[PlanContainerUId]
  FROM [synps].[Plan]
  WHERE
		[PlanUId] = COALESCE(@PlanUId,[PlanUId])
		AND [Name] = COALESCE(@Name,[Name])
		AND [UniqueName] = COALESCE(@UniqueName,[UniqueName])
		AND [PlanFile] = COALESCE(@PlanFile,[PlanFile])
		AND [PlanFileIsUri] = COALESCE(@PlanFileIsUri,[PlanFileIsUri])
		AND [PlanContainerUId] = COALESCE(@PlanContainerUId,[PlanContainerUId])

END