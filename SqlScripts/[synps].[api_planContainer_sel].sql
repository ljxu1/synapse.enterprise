SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Steve Shortt
-- Create date: 18 Feb 2017
-- Description:	PlanContainer Select
-- =============================================
ALTER PROCEDURE [synps].[api_planContainer_sel]
	@PlanContainerUId uniqueidentifier
	,@Name varchar(250)
	,@NodeUri varchar(250)
AS
BEGIN

SELECT [PlanContainerUId]
      ,[Name]
      ,[Description]
      ,[NodeUri]
      ,[RlsMask]
      ,[RlsOwner]
      ,[ParentUId]
  FROM [synps].[PlanContainer]
  WHERE
		[PlanContainerUId] = COALESCE(@PlanContainerUId,[PlanContainerUId])
		AND [Name] = COALESCE(@Name,[Name])
		AND [NodeUri] = COALESCE(@NodeUri,[NodeUri])
END