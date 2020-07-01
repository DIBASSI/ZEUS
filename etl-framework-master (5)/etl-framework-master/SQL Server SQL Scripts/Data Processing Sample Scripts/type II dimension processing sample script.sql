-- =============================================
-- Author: Bob Wakefield
-- Create date: 5Oct17
-- Description: Sample script to update a Type II dimension
-- A full explanation can be found here:
-- https://datadrivenperspectives.com/how-to-properly-update-a-type-ii-slowly-changing-dimension-with-t-sql-8ec03242c915
-- =============================================

USE ODS

GO


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.sp_ProcessDimYourDimensionName') AND type in (N'P', N'PC'))
DROP PROCEDURE dbo.sp_ProcessDimYourDimensionName
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_ProcessDimYourDimensionName
AS
BEGIN


DECLARE @LowDate AS DATETIME
DECLARE @HighDate AS DATETIME

SELECT @HighDate = CAST(MAX(DateCK) AS NCHAR(8))
FROM DimDate

SELECT @LowDate = CAST(MIN(DateCK) AS NCHAR(8))
FROM DimDate



IF OBJECT_ID('tempdb..#DimYourDimensionName') IS NOT NULL DROP TABLE #DimYourDimensionName

CREATE TABLE #DimYourDimensionName(
[YourDimensionNameCK] [bigint] NULL,
--your columns here
[CreatedBy] [nvarchar](50) NULL,
[CreatedOn] [datetime] NULL,
[UpdatedBy] [nvarchar](50) NULL,
[UpdatedOn] [datetime] NULL,
[SourceSystem] [nvarchar](100) NULL,
[SourceSystemKey] [nvarchar](100) NULL,
[EffectiveFrom] [datetime] NULL,
[EffectiveTo] [datetime] NULL,
[IsMostRecentRecord] [bit] NULL
) 


TRUNCATE TABLE cm.DimYourDimensionName

BEGIN TRANSACTION

--Handle new records
INSERT INTO cm.DimYourDimensionName(
--your columns here
[SourceSystem],
[SourceSystemKey]
)
SELECT
DISTINCT
[Name],
[Code],
[IsIntraday],
[TimeZone],
[Suffix],
[Currency],
[Country],
[SourceSystem],
[SourceSystemKey]
FROM [YourSchemaName].[YourStageTable]
WHERE Processed = 0

MERGE DimYourDimensionName AS target
USING (
SELECT
--your columns here
[SourceSystem],
[SourceSystemKey],
--RowHash
FROM cm.DimYourDimensionName
) AS source
ON target.[SourceSystemKey] = source.[SourceSystemKey]

WHEN NOT MATCHED THEN
INSERT (
--your columns here
[SourceSystem],
[SourceSystemKey],
EffectiveFrom,
EffectiveTo,
IsMostRecentRecord,
CreatedBy,
CreatedOn
)
VALUES (
--your columns here
[SourceSystem],
[SourceSystemKey],
@LowDate,
@HighDate,
1,
SYSTEM_USER,
CURRENT_TIMESTAMP
)
;

--Handle changed records
INSERT INTO #DimYourDimensionName(
--your columns here
[SourceSystem],
[SourceSystemKey],
EffectiveFrom,
EffectiveTo,
IsMostRecentRecord,
CreatedBy,
CreatedOn
)
SELECT
--your columns here
[SourceSystem],
[SourceSystemKey],
EffectiveFrom,
EffectiveTo,
IsMostRecentRecord,
CreatedBy,
CreatedOn 
FROM(
MERGE DimYourDimensionName AS target
USING (
SELECT
--your columns here
[SourceSystem],
[SourceSystemKey],
--RowHash
FROM cm.DimYourDimensionName
) AS source
ON target.[SourceSystemKey]  = source.[SourceSystemKey] 
WHEN MATCHED
--AND source.RowHash <> target.RowHash
AND target.IsMostRecentRecord = 1
THEN
UPDATE
SET
[UpdatedBy] = SYSTEM_USER,
[UpdatedOn] = CURRENT_TIMESTAMP,
EffectiveTo = DATEADD(ss,-1,CURRENT_TIMESTAMP),
IsMostRecentRecord = 0
OUTPUT 
$action Action_Out,
--your columns here
source.[SourceSystem],
source.[SourceSystemKey],
CURRENT_TIMESTAMP AS EffectiveFrom,
@HighDate AS EffectiveTo,
1 AS IsMostRecentRecord,
SYSTEM_USER AS CreatedBy,
CURRENT_TIMESTAMP AS CreatedOn
) AS MERGE_OUT
WHERE MERGE_OUT.Action_Out = 'UPDATE'
;

INSERT INTO DimYourDimensionName(
--your columns here
[SourceSystem],
[SourceSystemKey],
EffectiveFrom,
EffectiveTo,
IsMostRecentRecord,
CreatedBy,
CreatedOn
)
SELECT
--your columns here
[SourceSystem],
[SourceSystemKey],
EffectiveFrom,
EffectiveTo,
IsMostRecentRecord,
CreatedBy,
CreatedOn
FROM #DimYourDimensionName


TRUNCATE TABLE cm.DimYourDimensionName

INSERT INTO cm.DimYourDimensionName(
[YourDimensionNameCK],
[SourceSystemKey]
)
SELECT
[YourDimensionNameCK],
[SourceSystemKey]
FROM DimYourDimensionName
WHERE IsMostRecentRecord = 1

COMMIT TRANSACTION

DROP TABLE #DimYourDimensionName

END