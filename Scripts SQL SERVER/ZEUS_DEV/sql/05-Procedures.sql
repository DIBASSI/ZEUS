USE [$(database)]
GO


-------------------------------------------------------------------------------
PRINT 'Debut PROCEDURE'
GO
-------------------------------------------------------------------------------
/****** Object:  StoredProcedure [ssis].[PackageRunTime]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ssis].[PackageRunTime]
GO
/****** Object:  StoredProcedure [ssis].[LogVariableValueChanged]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogVariableValueChanged]
GO
/****** Object:  StoredProcedure [ssis].[LogTaskPreExecute]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogTaskPreExecute]
GO
/****** Object:  StoredProcedure [ssis].[LogTaskPostExecute]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogTaskPostExecute]
GO
/****** Object:  StoredProcedure [ssis].[LogPackageStart]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogPackageStart]
GO
/****** Object:  StoredProcedure [ssis].[LogPackageError]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogPackageError]
GO
/****** Object:  StoredProcedure [ssis].[LogPackageEnd]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogPackageEnd]
GO
/****** Object:  StoredProcedure [ssis].[GetVariableValues]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ssis].[GetVariableValues]
GO
/****** Object:  StoredProcedure [ssis].[ErrorLogByPackage]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ssis].[ErrorLogByPackage]
GO
/****** Object:  StoredProcedure [ssis].[ErrorLogByBatch]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ssis].[ErrorLogByBatch]
GO
/****** Object:  StoredProcedure [ssis].[BatchRunTime]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ssis].[BatchRunTime]
GO
/****** Object:  StoredProcedure [ods].[sp_CleanEODPrices]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [ods].[sp_CleanEODPrices]
GO
/****** Object:  StoredProcedure [ods].[sp_CleanEODPrices]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ods].[sp_CleanEODPrices] 
AS
BEGIN

BEGIN TRANSACTION

--Set empty dates to the empty field code
--This HAS to be done before you check for
--bad dates.
UPDATE [ods].[EODPrices]
SET [Date] = '99991231'
WHERE [Date] IS NULL


--Set error dates to the error field code
UPDATE [ods].[EODPrices]
SET [Date] = '99991131'
WHERE ISDATE([Date]) = 0


--Convert the rest of the dates into YYYYMMDD format
UPDATE [ods].[EODPrices]
SET [Date] = CONVERT(VARCHAR(10),CAST([Date] AS DATE),112)

--Remove CR from volume data
UPDATE [ods].[EODPrices]
SET Volume = replace(Volume, char(13), '')




COMMIT TRANSACTION

END




GO
/****** Object:  StoredProcedure [ssis].[BatchRunTime]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ssis].[BatchRunTime] (@BatchID INT)
AS
BEGIN
SET NOCOUNT ON


SELECT 
BL.BatchLogID AS [Batch ID],
CONVERT(TIME,BL.EndDateTime - BL.StartDateTime) AS [Run Time],
[BL].[Status]
FROM BatchLog BL

WHERE BL.BatchLogID = @BatchID

END
GO
/****** Object:  StoredProcedure [ssis].[ErrorLogByBatch]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ssis].[ErrorLogByBatch] (@BatchID INT)
AS
BEGIN
SET NOCOUNT ON


SELECT BL.BatchLogID AS [Batch Log ID], 
P.PackageName AS [Package Name], 
PEL.SourceName AS [Task Name], 
PEL.ErrorDescription AS [Error Description], 
PEL.LogDateTime AS [Log Date Time]
FROM PackageErrorLog PEL
JOIN PackageLog PL
ON PEL.PackageLogID = PL.PackageLogID 
JOIN PackageVersion PV
ON PL.PackageVersionID = PV.PackageVersionID 
JOIN Package P
ON PV.PackageID = P.PackageID
JOIN BatchLog BL
ON PL.BatchLogID = BL.BatchLogID
WHERE BL.BatchLogID = @BatchID
ORDER BY PEL.LogDateTime Desc

END
GO
/****** Object:  StoredProcedure [ssis].[ErrorLogByPackage]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ssis].[ErrorLogByPackage] (@PackageName VARCHAR(MAX))
AS
BEGIN
SET NOCOUNT ON


SELECT BL.BatchLogID AS [Batch Log ID], 
P.PackageName AS [Package Name], 
PEL.SourceName AS [Task Name], 
PEL.ErrorDescription AS [Error Description], 
PEL.LogDateTime AS [Log Date Time]
FROM PackageErrorLog PEL
JOIN PackageLog PL
ON PEL.PackageLogID = PL.PackageLogID 
JOIN PackageVersion PV
ON PL.PackageVersionID = PV.PackageVersionID 
JOIN Package P
ON PV.PackageID = P.PackageID
JOIN BatchLog BL
ON PL.BatchLogID = BL.BatchLogID
WHERE P.PackageName = @PackageName
ORDER BY PEL.LogDateTime Desc

END
GO
/****** Object:  StoredProcedure [ssis].[GetVariableValues]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [ssis].[GetVariableValues] @packageName NVARCHAR(255)
AS
SELECT VariableName, VariableValue
FROM SSISConfigurations
WHERE PackageName = @packageName



GO
/****** Object:  StoredProcedure [ssis].[LogPackageEnd]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ssis].[LogPackageEnd]
(    @PackageLogID int
    ,@BatchLogID int
    ,@EndBatchAudit bit
)

AS
BEGIN
    SET NOCOUNT ON
    UPDATE ssis.PackageLog
        SET Status = 'S'
        , [EndDateTime] = getdate()
        WHERE PackageLogID = @PackageLogID

    IF @EndBatchAudit = 1
    Begin
        UPDATE ssis.BatchLog
        SET Status = 'S'
        , [EndDateTime] = getdate()
        WHERE BatchLogID = @BatchLogID
    End
END

GO
/****** Object:  StoredProcedure [ssis].[LogPackageError]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ssis].[LogPackageError]
(    @PackageLogID int
    ,@BatchLogID int
    ,@SourceName varchar(64)
    ,@SourceID uniqueidentifier
    ,@ErrorCode int
    ,@ErrorDescription varchar(2000)
    ,@EndBatchAudit bit
)

AS
BEGIN
    SET NOCOUNT ON
    INSERT INTO ssis.PackageErrorLog (PackageLogID, SourceName, SourceID, ErrorCode, ErrorDescription, LogDateTime)
    VALUES (@PackageLogID, @SourceName, @SourceID, @ErrorCode, @ErrorDescription, getdate())

    UPDATE ssis.PackageLog
        SET Status = 'F'
            , [EndDateTime] = getdate()
        WHERE PackageLogID = @PackageLogID

    IF @EndBatchAudit = 1
    Begin
    UPDATE ssis.BatchLog
        SET Status = 'F'
        , [EndDateTime] = getdate()
        WHERE BatchLogID = @BatchLogID
    End
END

GO
/****** Object:  StoredProcedure [ssis].[LogPackageStart]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [ssis].[LogPackageStart]
(    @BatchLogID int
    ,@PackageName varchar(255) 
    ,@ExecutionInstanceID uniqueidentifier 
    ,@MachineName varchar(64) 
    ,@UserName varchar(64) 
    ,@StartDatetime datetime 
    ,@PackageVersionGUID uniqueidentifier 
    ,@VersionMajor int 
    ,@VersionMinor int 
    ,@VersionBuild int 
    ,@VersionComment varchar(1000) 
    ,@PackageGUID uniqueidentifier 
    ,@CreationDate datetime 
    ,@CreatedBy varchar(255) 
)

AS
BEGIN
SET NOCOUNT ON

DECLARE @PackageID int
,@PackageVersionID int 
,@PackageLogID int
,@EndBatchAudit bit

/* Initialize Variables */
SELECT @EndBatchAudit = 0

/* Get Package Metadata ID */
IF NOT EXISTS (SELECT 1 FROM ssis.Package WHERE PackageGUID = @PackageGUID AND PackageName = @PackageName)
Begin
    INSERT INTO ssis.Package (PackageGUID, PackageName, CreationDate, CreatedBy)
        VALUES (@PackageGUID, @PackageName, @CreationDate, @CreatedBy)
End

SELECT @PackageID = PackageID
    FROM ssis.Package 
    WHERE PackageGUID = @PackageGUID
    AND PackageName = @PackageName

/* Get Package Version MetaData ID */
IF NOT EXISTS (SELECT 1 FROM ssis.PackageVersion WHERE PackageVersionGUID = @PackageVersionGUID)
Begin
    INSERT INTO ssis.PackageVersion (PackageID, PackageVersionGUID, VersionMajor, VersionMinor, VersionBuild, VersionComment)
        VALUES (@PackageID, @PackageVersionGUID, @VersionMajor, @VersionMinor, @VersionBuild, @VersionComment)
End
SELECT @PackageVersionID = PackageVersionID
    FROM ssis.PackageVersion 
    WHERE PackageVersionGUID = @PackageVersionGUID

/* Get BatchLogID */
IF ISNULL(@BatchLogID,0) = 0
Begin
    INSERT INTO ssis.BatchLog ([StartDateTime], [Status])
        VALUES (@StartDatetime, 'R')
    SELECT @BatchLogID = SCOPE_IDENTITY()
    SELECT @EndBatchAudit = 1
End

/* Create PackageLog Record */
INSERT INTO ssis.PackageLog (BatchLogID, PackageVersionID, ExecutionInstanceID, MachineName, UserName, [StartDateTime], [Status])
    VALUES(@BatchLogID, @PackageVersionID, @ExecutionInstanceID, @MachineName, @UserName, @StartDatetime, 'R')

SELECT @PackageLogID = SCOPE_IDENTITY()

SELECT @BatchLogID as BatchLogID, @PackageLogID as PackageLogID, @EndBatchAudit as EndBatchAudit

END

GO
/****** Object:  StoredProcedure [ssis].[LogTaskPostExecute]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ssis].[LogTaskPostExecute]
(    @PackageLogID int
    ,@SourceID uniqueidentifier
    ,@PackageID uniqueidentifier
)

AS
BEGIN
    SET NOCOUNT ON
    IF @PackageID <> @SourceID
        UPDATE ssis.PackageTaskLog 
            SET [EndDateTime] = getdate()
            WHERE PackageLogID = @PackageLogID AND SourceID = @SourceID
                AND [EndDateTime] is null
END

GO
/****** Object:  StoredProcedure [ssis].[LogTaskPreExecute]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ssis].[LogTaskPreExecute]
(    @PackageLogID int
    ,@SourceName varchar(64)
    ,@SourceID uniqueidentifier
    ,@PackageID uniqueidentifier
)

AS
BEGIN
    SET NOCOUNT ON
    IF @PackageID <> @SourceID
        AND @SourceName <> 'SQL LogPackageStart'
        AND @SourceName <> 'SQL LogPackageEnd'
        INSERT INTO ssis.PackageTaskLog (PackageLogID, SourceName, SourceID, StartDateTime)
        VALUES (@PackageLogID, @SourceName, @SourceID, getdate())
END

GO
/****** Object:  StoredProcedure [ssis].[LogVariableValueChanged]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ssis].[LogVariableValueChanged]
(    @PackageLogID	int
    ,@VariableName		varchar(255)
    ,@VariableValue		varchar(max)
)
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO ssis.PackageVariableLog(PackageLogID, VariableName, VariableValue, LogDateTime)
	VALUES (@PackageLogID, @VariableName, @VariableValue, getdate())
END

GO
/****** Object:  StoredProcedure [ssis].[PackageRunTime]    Script Date: 01/06/2020 19:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [ssis].[PackageRunTime] (@PackageName VARCHAR(MAX))
AS
BEGIN
SET NOCOUNT ON


SELECT 
pkg.PackageName,
pkglog.StartDateTime AS [Package Start Time],
CONVERT(TIME,pkglog.EndDateTime - pkglog.StartDateTime) AS [Run Time],
CASE pkglog.Status
WHEN 'S' THEN 'Success'
WHEN 'F' THEN 'Fail'
WHEN 'R' THEN 'Running'
END AS [Package Status]
FROM ssis.PackageLog pkglog
JOIN ssis.PackageVersion pkgvers 
ON pkglog.PackageVersionID = pkgvers.PackageVersionID
JOIN ssis.Package pkg 
ON pkgvers.PackageID = pkg.PackageID
WHERE pkg.PackageName = @PackageName
ORDER BY pkglog.StartDateTime DESC

END
GO

------------------------------------------------------------------------------

/****** Object:  StoredProcedure [ssis].[PackageRunTime]    Script Date: 01/06/2020 19:29:04 ******/
DROP PROCEDURE IF EXISTS [param].[sp_DropAllIndexesOnTable]
GO


/****** Object:  StoredProcedure [param].[sp_DropAllIndexesOnTable]    Script Date: 04/07/2020 18:33:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



/******************************************************************************************
*******************************************************************************************
* Copyright(c) NOM CLIENT
*******************************************************************************************
*******************************************************************************************
* Objet : [param].[sp_DropAllIndexesOnTable]
*******************************************************************************************
*
* Description : Traitement des Logs des traitements executé dans le cadre du projet Client
*******************************************************************************************
* Redacteur			: Mohamed DIBASSI
* Date de creation	: 11/04/2020
*******************************************************************************************
* Modifications :
*----------------------------------------------------------------------------
* date | version | auteur | description
*----------------------------------------------------------------------------
* 2020-04-11 | V0.1 | Mohamed DIBASSI | Création
*******************************************************************************************
******************************************************************************************/
CREATE PROCEDURE [param].[sp_DropAllIndexesOnTable] (
													 @TableName varchar(100)
													--,@schema_name varchar(1000)
													)

AS
BEGIN
SET NOCOUNT ON;

   DECLARE @DropCommand1 nvarchar(4000)
   DECLARE @DropCommand2 nvarchar(4000)

--Create Temp Table to hold the names and table names of all Clustered Indexes
    SELECT schema_name(o.schema_id) [schema_name], o.name AS TableName, i.name AS IndexName
      INTO #AllClustered
      FROM sys.indexes i 
INNER JOIN sys.objects o ON i.object_id=o.object_id
     WHERE o.type <> 'S'
       AND is_primary_key = 1

--Create Temp Table to hold the names and table names of all NonClustered Indexes
    SELECT schema_name(o.schema_id) [schema_name], o.name AS TableName, i.name AS IndexName
      INTO #AllNonClustered
      FROM sys.indexes i 
INNER JOIN sys.objects o ON i.object_id=o.object_id
     WHERE o.type <> 'S'
       AND is_primary_key <> 1 
       AND index_id > 0
	   AND schema_name(o.schema_id)<>'sys'

--Create DROP CONSTRAINT command for the Primary Key Constraint if there is one
    SELECT @DropCommand1 = ( SELECT 'ALTER TABLE dbo.['+ TableName +'] DROP CONSTRAINT ['+ IndexName +'];'
                               FROM #AllClustered
                              WHERE TableName IN (@TableName) --AND [schema_name] IN (@schema_name)
							
                                FOR xml path('') ); 

--Create DROP INDEX command for the indexes on the table if there are any 
    SELECT @DropCommand2 = ( SELECT 'DROP INDEX [' + IndexName + '] ON dbo.['+ TableName +'];'
                               FROM #AllNonClustered
                              WHERE TableName in (@TableName) --AND [schema_name] IN (@schema_name)
                                FOR xml path('') );

        IF (@DropCommand1 IS NULL AND @DropCommand2 IS NULL) PRINT 'No action taken, zero indexes found on table ' + @TableName
        IF @DropCommand1 IS NOT NULL EXEC sp_executesql @DropCommand1
        IF @DropCommand2 IS NOT NULL EXEC sp_executesql @DropCommand2

DROP TABLE IF EXISTS #AllClustered
DROP TABLE IF EXISTS #AllNonClustered

END
GO





-------------------------------------------------------------------------------
PRINT 'Fin PROCEDURE'
GO
-------------------------------------------------------------------------------
