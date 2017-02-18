SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Steve Shortt
-- Create date: 18 Feb 2017
-- Description:	PlanContainer Delete
-- =============================================
ALTER PROCEDURE [synps].[api_planContainer_dml_del]
	@PlanContainerUId uniqueidentifier
AS
BEGIN

	DELETE FROM [synps].[PlanContainer] WHERE [PlanContainerUId] = @PlanContainerUId

END