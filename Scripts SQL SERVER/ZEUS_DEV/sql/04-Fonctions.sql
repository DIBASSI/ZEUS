USE [$(database)]
GO

-------------------------------------------------------------------------------
PRINT 'Debut FUNCTION'
GO
-------------------------------------------------------------------------------


/*
Directions for use. 
1. Set @EmptyRecordCode and @ErrorDateCode to the values appropriate to your system. 
2. Find and replace YourDatabase.YourSchema with the name of your data warehouse
and the schema that it lives in.
*/


GO

DROP FUNCTION IF EXISTS udf_CleanDate

GO

CREATE FUNCTION udf_CleanDate(@DATE NVARCHAR(255))

RETURNS NCHAR(8)

AS

BEGIN

DECLARE @CleanDate NCHAR(8)
DECLARE @MinDate DATE
DECLARE @MaxDate DATE
DECLARE @EmptyRecordCode BIGINT = 99991231
DECLARE @ErrorDateCode BIGINT = 99991130

SELECT @MaxDate = CAST(MAX(DateKey) AS NCHAR(8))
FROM dim.Date
WHERE DateKey NOT IN (@EmptyRecordCode,@ErrorDateCode)

SELECT @MinDate = CAST(MIN(DateKey) AS NCHAR(8))
FROM dim.Date


--Set empty dates to the empty field code
--This HAS to be done before you check for
--bad dates. Then Set error dates to the error field code.
--Finally, clean up the dates to conform to DimDateKey format.

RETURN
CASE 
WHEN @Date IS NULL THEN  @EmptyRecordCode
WHEN ISDATE(@Date) = 0 THEN  @ErrorDateCode
WHEN @Date < @MinDate THEN  @ErrorDateCode
WHEN @Date > @MaxDate THEN  @ErrorDateCode
ELSE CONVERT(VARCHAR(10),CAST(@Date AS DATE),112)
END


END

GO



/****** Object:  UserDefinedFunction [fn].[GetUniqueRowsKeyScript]    Script Date: 10/07/2020 17:55:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [fn].[GetUniqueRowsKeyScript]
(
  @TABLE_SCHEMA NVARCHAR(MAX), @TABLE_NAME VARCHAR(MAX),@UNIQUEKEY VARCHAR(MAX)
)
RETURNS nvarchar(MAX)
--WITH SCHEMABINDING
AS
BEGIN

DECLARE @cols AS NVARCHAR(MAX) = (SELECT COLUMN_NAME FROM [vw].[SHA1Columns]
									where TABLE_SCHEMA=@TABLE_SCHEMA AND TABLE_NAME = @TABLE_NAME ) 

DECLARE @SqlCmd VARCHAR(MAX)='ALTER TABLE '+@TABLE_SCHEMA+'.'+@TABLE_NAME+ ' DROP COLUMN IF EXISTS ' + IIF(@UNIQUEKEY IS NULL, '[UniqueRow];','[UniqueKey];') + CHAR(10)
							+'ALTER TABLE '+@TABLE_SCHEMA+'.'+@TABLE_NAME+ ' ADD ' + IIF(@UNIQUEKEY IS NULL, '[UniqueRow] AS','[UniqueKey] AS') + CHAR(10)
							+'(CONVERT([varbinary](35), HASHBYTES (''SHA1'',CONCAT_WS(''|'',' + CHAR(10) 
							+  IIF(@UNIQUEKEY IS NULL, @cols,@UNIQUEKEY)+ CHAR(10)
							+')))) PERSISTED';

--EXEC(@SqlCmd);
  RETURN (@SqlCmd);
END

GO





-------------------------------------------------------------------------------
PRINT 'Fin FUNCTION'
GO
-------------------------------------------------------------------------------

