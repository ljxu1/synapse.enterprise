SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Steve Shortt
-- Create date: 18 Feb 2017
-- Description:	PlanContainer Insert
-- =============================================
ALTER PROCEDURE [synps].[api_planContainer_dml_ins]
	@PlanContainerUId uniqueidentifier = null output
	,@Name varchar(250)
	,@Description varchar(500) = null
	,@NodeUri varchar(250)
	,@RlsMask varbinary(max) = null
	,@RlsOwner uniqueidentifier = null
	,@ParentUId uniqueidentifier = null
AS
BEGIN

	set @PlanContainerUId = ISNULL( @PlanContainerUId, newid() )

	INSERT INTO [synps].[PlanContainer]
			   ([PlanContainerUId]
			   ,[Name]
			   ,[Description]
			   ,[NodeUri]
			   ,[RlsMask]
			   ,[RlsOwner]
			   ,[ParentUId])
		 VALUES
		       (@PlanContainerUId
			   ,@Name
			   ,@Description
			   ,@NodeUri
			   ,@RlsMask
			   ,@RlsOwner
			   ,@ParentUId);

	SELECT @PlanContainerUId

END