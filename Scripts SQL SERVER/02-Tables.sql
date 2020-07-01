USE [ZEUS]
GO

-------------------------------------------------------------------------------
PRINT 'Debut TABLES'
GO
-------------------------------------------------------------------------------


/****** Object:  StoredProcedure [ssis].[ErrorLogByBatch]    Script Date: 01/06/2020 20:27:27 ******/
DROP PROCEDURE IF EXISTS [ssis].[ErrorLogByBatch]
GO
/****** Object:  StoredProcedure [ssis].[ErrorLogByPackage]    Script Date: 01/06/2020 20:27:27 ******/
DROP PROCEDURE IF EXISTS [ssis].[ErrorLogByPackage]
GO
/****** Object:  StoredProcedure [ssis].[GetVariableValues]    Script Date: 01/06/2020 20:27:27 ******/
DROP PROCEDURE IF EXISTS [ssis].[GetVariableValues]
GO
/****** Object:  StoredProcedure [ssis].[LogPackageEnd]    Script Date: 01/06/2020 20:27:27 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogPackageEnd]
GO
/****** Object:  StoredProcedure [ssis].[LogPackageError]    Script Date: 01/06/2020 20:27:27 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogPackageError]
GO
/****** Object:  StoredProcedure [ssis].[LogPackageStart]    Script Date: 01/06/2020 20:27:27 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogPackageStart]
GO
/****** Object:  StoredProcedure [ssis].[LogTaskPostExecute]    Script Date: 01/06/2020 20:27:27 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogTaskPostExecute]
GO
/****** Object:  StoredProcedure [ssis].[LogTaskPreExecute]    Script Date: 01/06/2020 20:27:27 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogTaskPreExecute]
GO
/****** Object:  StoredProcedure [ssis].[LogVariableValueChanged]    Script Date: 01/06/2020 20:27:27 ******/
DROP PROCEDURE IF EXISTS [ssis].[LogVariableValueChanged]
GO
/****** Object:  StoredProcedure [ssis].[BatchRunTime]    Script Date: 01/06/2020 20:27:27 ******/
DROP PROCEDURE IF EXISTS [ssis].[BatchRunTime]
GO
/****** Object:  StoredProcedure [ssis].[PackageRunTime]    Script Date: 01/06/2020 20:27:27 ******/
DROP PROCEDURE IF EXISTS [ssis].[PackageRunTime]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[PackageVersion]') AND type in (N'U'))
ALTER TABLE [ssis].[PackageVersion] DROP CONSTRAINT IF EXISTS [FK_PackageVersion_Package]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[PackageVariableLog]') AND type in (N'U'))
ALTER TABLE [ssis].[PackageVariableLog] DROP CONSTRAINT IF EXISTS [FK_PackageVariableLog_PackageLog]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[PackageTaskLog]') AND type in (N'U'))
ALTER TABLE [ssis].[PackageTaskLog] DROP CONSTRAINT IF EXISTS [FK_PackageTaskLog_PackageLog]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[PackageLog]') AND type in (N'U'))
ALTER TABLE [ssis].[PackageLog] DROP CONSTRAINT IF EXISTS [FK_PackageLog_PackageVersion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[PackageLog]') AND type in (N'U'))
ALTER TABLE [ssis].[PackageLog] DROP CONSTRAINT IF EXISTS [FK_PackageLog_BatchLog]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[PackageErrorLog]') AND type in (N'U'))
ALTER TABLE [ssis].[PackageErrorLog] DROP CONSTRAINT IF EXISTS [FK_PackageErrorLog_PackageLog]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[stg].[YourStageTableName]') AND type in (N'U'))
ALTER TABLE [stg].[YourStageTableName] DROP CONSTRAINT IF EXISTS [DF_YourStageTableName_RunDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[stg].[YourStageTableName]') AND type in (N'U'))
ALTER TABLE [stg].[YourStageTableName] DROP CONSTRAINT IF EXISTS [DF_YourStageTableName_Processed]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[stg].[YourStageTableName]') AND type in (N'U'))
ALTER TABLE [stg].[YourStageTableName] DROP CONSTRAINT IF EXISTS [DF_YourStageTableName_ErrorRecord]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[stg].[YourStageTableName]') AND type in (N'U'))
ALTER TABLE [stg].[YourStageTableName] DROP CONSTRAINT IF EXISTS [DF_YourStageTableName_Cleansed]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[stg].[YourStageTableName]') AND type in (N'U'))
ALTER TABLE [stg].[YourStageTableName] DROP CONSTRAINT IF EXISTS [DF_YourStageTableName_SourceSystem]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[stg].[YourStageTableName]') AND type in (N'U'))
ALTER TABLE [stg].[YourStageTableName] DROP CONSTRAINT IF EXISTS [DF_YourStageTableName_ETLKey]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[PackageVersion]') AND type in (N'U'))
ALTER TABLE [ssis].[PackageVersion] DROP CONSTRAINT IF EXISTS [DF__PackageVe__Enter__412EB0B6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[PackageLog]') AND type in (N'U'))
ALTER TABLE [ssis].[PackageLog] DROP CONSTRAINT IF EXISTS [DF__PackageLo__Start__403A8C7D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[Package]') AND type in (N'U'))
ALTER TABLE [ssis].[Package] DROP CONSTRAINT IF EXISTS [DF__Package__Entered__3F466844]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[BatchLog]') AND type in (N'U'))
ALTER TABLE [ssis].[BatchLog] DROP CONSTRAINT IF EXISTS [DF__BatchLog__StartD__3E52440B]
GO
/****** Object:  Table [stg].[YourStageTableName]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [stg].[YourStageTableName]
GO
/****** Object:  Table [ssis].[SSISConfigurations]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [ssis].[SSISConfigurations]
GO
/****** Object:  Table [ssis].[PackageVersion]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [ssis].[PackageVersion]
GO
/****** Object:  Table [ssis].[PackageVariableLog]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [ssis].[PackageVariableLog]
GO
/****** Object:  Table [ssis].[PackageTaskLog]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [ssis].[PackageTaskLog]
GO
/****** Object:  Table [ssis].[PackageLog]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [ssis].[PackageLog]
GO
/****** Object:  Table [ssis].[PackageErrorLog]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [ssis].[PackageErrorLog]
GO
/****** Object:  Table [ssis].[Package]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [ssis].[Package]
GO
/****** Object:  Table [ssis].[BatchLog]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [ssis].[BatchLog]
GO
/****** Object:  Table [rpt].[TableLoadReport]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [rpt].[TableLoadReport]
GO
/****** Object:  Table [dwh].[YourFactTableName]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [dwh].[YourFactTableName]
GO
/****** Object:  Table [dwh].[DimYourDimensionName]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [dwh].[DimYourDimensionName]
GO
/****** Object:  Index [CIDX_DimDate_PartnerCK]    Script Date: 01/06/2020 20:27:27 ******/
DROP INDEX IF EXISTS [CIDX_DimDate_PartnerCK] ON [dwh].[VwDimDate] WITH ( ONLINE = OFF )
GO
/****** Object:  View [dwh].[VwDimDate]    Script Date: 01/06/2020 20:27:27 ******/
DROP VIEW IF EXISTS [dwh].[VwDimDate]
GO
/****** Object:  Table [dwh].[DimDate]    Script Date: 01/06/2020 20:27:27 ******/
DROP TABLE IF EXISTS [dwh].[DimDate]
GO
/****** Object:  Table [dwh].[DimDate]    Script Date: 01/06/2020 20:27:27 ******/

/****** Object:  Table [audit].[Import]    Script Date: 28/06/2020 21:01:49 ******/
DROP TABLE [audit].[Import]
GO

/****** Object:  Table [audit].[Import]    Script Date: 28/06/2020 21:01:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [audit].[Import](
	[ImportID] [bigint] IDENTITY(1,1) NOT NULL,
	[BatchLogID] [bigint] NOT NULL,
	[PackageLogID] [bigint] NOT NULL,
	[Importname] [varchar](100) NULL,
	[DirectoryPath] [varchar](256) NULL,
	[ImportCreatedDateTime] [datetime] NULL,
	[ImportLastModifieddDateTime] [datetime] NULL,
	[ImportDateTime] [datetime] NULL,
	[ImportStatut] [varchar](10) NULL,
	[ImportSize] [int] NULL,
 CONSTRAINT [PK_Import_ImportID] PRIMARY KEY CLUSTERED 
(
	[ImportID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dwh].[DimDate](
	[DateKey] [int] NOT NULL,
	[Date] [datetime] NULL,
	[FullDateUK] [char](10) NULL,
	[FullDateUSA] [char](10) NULL,
	[DayOfMonth] [varchar](2) NULL,
	[DaySuffix] [varchar](4) NULL,
	[DayName] [varchar](9) NULL,
	[DayOfWeekUSA] [char](1) NULL,
	[DayOfWeekUK] [char](1) NULL,
	[DayOfWeekInMonth] [varchar](2) NULL,
	[DayOfWeekInYear] [varchar](2) NULL,
	[DayOfQuarter] [varchar](3) NULL,
	[DayOfYear] [varchar](3) NULL,
	[WeekOfMonth] [varchar](1) NULL,
	[WeekOfQuarter] [varchar](2) NULL,
	[WeekOfYear] [varchar](2) NULL,
	[Month] [varchar](2) NULL,
	[MonthName] [varchar](9) NULL,
	[MonthOfQuarter] [varchar](2) NULL,
	[Quarter] [char](1) NULL,
	[QuarterName] [varchar](9) NULL,
	[Year] [char](4) NULL,
	[YearName] [char](7) NULL,
	[MonthYear] [char](10) NULL,
	[MMYYYY] [char](6) NULL,
	[FirstDayOfMonth] [date] NULL,
	[LastDayOfMonth] [date] NULL,
	[FirstDayOfQuarter] [date] NULL,
	[LastDayOfQuarter] [date] NULL,
	[FirstDayOfYear] [date] NULL,
	[LastDayOfYear] [date] NULL,
	[IsHolidayUSA] [bit] NULL,
	[IsWeekday] [bit] NULL,
	[HolidayUSA] [varchar](50) NULL,
	[IsHolidayUK] [bit] NULL,
	[HolidayUK] [varchar](50) NULL,
	[FiscalDayOfYear] [varchar](3) NULL,
	[FiscalWeekOfYear] [varchar](3) NULL,
	[FiscalMonth] [varchar](2) NULL,
	[FiscalQuarter] [char](1) NULL,
	[FiscalQuarterName] [varchar](9) NULL,
	[FiscalYear] [char](4) NULL,
	[FiscalYearName] [char](7) NULL,
	[FiscalMonthYear] [char](10) NULL,
	[FiscalMMYYYY] [char](6) NULL,
	[FiscalFirstDayOfMonth] [date] NULL,
	[FiscalLastDayOfMonth] [date] NULL,
	[FiscalFirstDayOfQuarter] [date] NULL,
	[FiscalLastDayOfQuarter] [date] NULL,
	[FiscalFirstDayOfYear] [date] NULL,
	[FiscalLastDayOfYear] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dwh].[VwDimDate]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--DROP VIEW dwh.VwDimDate

/****** Object:  Index [PK__DimDate__40DF45E3B5664BC6]    Script Date: 01/06/2020 19:59:22 ******/
--ALTER TABLE [dwh].[DimDate] DROP CONSTRAINT [PK__DimDate__40DF45E3B5664BC6] WITH ( ONLINE = OFF )





CREATE VIEW [dwh].[VwDimDate]
 
WITH SCHEMABINDING  
AS  
SELECT
[DateKey]
      ,[Date]
      ,[FullDateUK]
      ,[FullDateUSA]
      ,[DayOfMonth]
      ,[DaySuffix]
      ,[DayName]
      ,[DayOfWeekUSA]
      ,[DayOfWeekUK]
      ,[DayOfWeekInMonth]
      ,[DayOfWeekInYear]
      ,[DayOfQuarter]
      ,[DayOfYear]
      ,[WeekOfMonth]
      ,[WeekOfQuarter]
      ,[WeekOfYear]
      ,[Month]
      ,[MonthName]
      ,[MonthOfQuarter]
      ,[Quarter]
      ,[QuarterName]
      ,[Year]
      ,[YearName]
      ,[MonthYear]
      ,[MMYYYY]
      ,[FirstDayOfMonth]
      ,[LastDayOfMonth]
      ,[FirstDayOfQuarter]
      ,[LastDayOfQuarter]
      ,[FirstDayOfYear]
      ,[LastDayOfYear]
      ,[IsHolidayUSA]
      ,[IsWeekday]
      ,[HolidayUSA]
      ,[IsHolidayUK]
      ,[HolidayUK]
      ,[FiscalDayOfYear]
      ,[FiscalWeekOfYear]
      ,[FiscalMonth]
      ,[FiscalQuarter]
      ,[FiscalQuarterName]
      ,[FiscalYear]
      ,[FiscalYearName]
      ,[FiscalMonthYear]
      ,[FiscalMMYYYY]
      ,[FiscalFirstDayOfMonth]
      ,[FiscalLastDayOfMonth]
      ,[FiscalFirstDayOfQuarter]
      ,[FiscalLastDayOfQuarter]
      ,[FiscalFirstDayOfYear]
      ,[FiscalLastDayOfYear]
FROM [dwh].[DimDate]

GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [CIDX_DimDate_PartnerCK]    Script Date: 01/06/2020 20:27:27 ******/
CREATE UNIQUE CLUSTERED INDEX [CIDX_DimDate_PartnerCK] ON [dwh].[VwDimDate]
(
	[DateKey] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Table [dwh].[DimYourDimensionName]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dwh].[DimYourDimensionName](
	[YourDimensionNameCK] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[SourceSystem] [nvarchar](100) NULL,
	[SourceSystemKey] [nvarchar](100) NULL,
	[EffectiveFrom] [datetime] NULL,
	[EffectiveTo] [datetime] NULL,
	[IsMostRecentRecord] [bit] NULL,
	[RowHash]  AS (CONVERT([varbinary](16),hashbytes('MD5',concat(CONVERT([nvarchar](35),[Column1],(0)),CONVERT([nvarchar](35),[Column2],(0)),CONVERT([nvarchar](35),[Column3],(0)))),(0))) PERSISTED,
	[Column1] [nvarchar](35) NULL,
	[Column2] [nvarchar](35) NULL,
	[Column3] [nvarchar](35) NULL,
	[Column4] [nvarchar](35) NULL,
	[Column5] [nvarchar](35) NULL,
	[Column6] [nvarchar](35) NULL,
	[Column7] [nvarchar](35) NULL,
	[Column8] [nvarchar](35) NULL,
	[Column9] [nvarchar](35) NULL,
	[Column10] [nvarchar](35) NULL,
 CONSTRAINT [PK_YourDimensionName] PRIMARY KEY CLUSTERED 
(
	[YourDimensionNameCK] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dwh].[YourFactTableName]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dwh].[YourFactTableName](
	[RowID] [bigint] IDENTITY(1,1) NOT NULL,
	[TransactionID] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[SourceSystem] [nvarchar](50) NULL,
	[UniqueDims]  AS (CONVERT([varbinary](35),hashbytes('SHA1',concat(CONVERT([nvarchar](35),[DimKey1CK],(0)),CONVERT([nvarchar](35),[DimKey2CK],(0)))),(0))) PERSISTED,
	[DimKey1CK] [nvarchar](35) NULL,
	[DimKey2CK] [nvarchar](35) NULL,
	[Column1] [nvarchar](35) NULL,
	[Column2] [nvarchar](35) NULL,
	[Column3] [nvarchar](35) NULL,
	[Column4] [nvarchar](35) NULL,
	[Column5] [nvarchar](35) NULL,
 CONSTRAINT [PK_prices] PRIMARY KEY CLUSTERED 
(
	[RowID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_YourFactTableName] UNIQUE NONCLUSTERED 
(
	[UniqueDims] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [rpt].[TableLoadReport]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [rpt].[TableLoadReport](
	[TableLoadReportID] [bigint] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](50) NULL,
	[DateOfCurrentObservation] [datetime] NULL,
	[DateOfLastObservation] [datetime] NULL,
	[RowCount] [int] NULL,
	[ChangeFromLastObservation] [int] NULL,
	[CurrentThreeSDLevel] [numeric](18, 4) NULL,
	[AsOf] [date] NULL,
 CONSTRAINT [PK_TableLoadReport] PRIMARY KEY CLUSTERED 
(
	[TableLoadReportID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ssis].[BatchLog]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ssis].[BatchLog](
	[BatchLogID] [int] IDENTITY(1,1) NOT NULL,
	[StartDateTime] [datetime] NOT NULL,
	[EndDateTime] [datetime] NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK_BatchLog] PRIMARY KEY CLUSTERED 
(
	[BatchLogID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ssis].[Package]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ssis].[Package](
	[PackageID] [int] IDENTITY(1,1) NOT NULL,
	[PackageGUID] [uniqueidentifier] NOT NULL,
	[PackageName] [varchar](255) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](255) NOT NULL,
	[EnteredDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[PackageID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ssis].[PackageErrorLog]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ssis].[PackageErrorLog](
	[PackageErrorLogID] [int] IDENTITY(1,1) NOT NULL,
	[PackageLogID] [int] NOT NULL,
	[SourceName] [varchar](64) NOT NULL,
	[SourceID] [uniqueidentifier] NOT NULL,
	[ErrorCode] [int] NULL,
	[ErrorDescription] [varchar](2000) NULL,
	[LogDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_PackageErrorLog] PRIMARY KEY CLUSTERED 
(
	[PackageErrorLogID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ssis].[PackageLog]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ssis].[PackageLog](
	[PackageLogID] [int] IDENTITY(1,1) NOT NULL,
	[BatchLogID] [int] NOT NULL,
	[PackageVersionID] [int] NOT NULL,
	[ExecutionInstanceID] [uniqueidentifier] NOT NULL,
	[MachineName] [varchar](64) NOT NULL,
	[UserName] [varchar](64) NOT NULL,
	[StartDateTime] [datetime] NOT NULL,
	[EndDateTime] [datetime] NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK_PackageLog] PRIMARY KEY CLUSTERED 
(
	[PackageLogID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ssis].[PackageTaskLog]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ssis].[PackageTaskLog](
	[PackageTaskLogID] [int] IDENTITY(1,1) NOT NULL,
	[PackageLogID] [int] NOT NULL,
	[SourceName] [varchar](255) NOT NULL,
	[SourceID] [uniqueidentifier] NOT NULL,
	[StartDateTime] [datetime] NOT NULL,
	[EndDateTime] [datetime] NULL,
 CONSTRAINT [PK_PackageTaskLog] PRIMARY KEY CLUSTERED 
(
	[PackageTaskLogID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ssis].[PackageVariableLog]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ssis].[PackageVariableLog](
	[PackageVariableLogID] [int] IDENTITY(1,1) NOT NULL,
	[PackageLogID] [int] NOT NULL,
	[VariableName] [varchar](255) NOT NULL,
	[VariableValue] [varchar](max) NOT NULL,
	[LogDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_PackageVariableLog] PRIMARY KEY CLUSTERED 
(
	[PackageVariableLogID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ssis].[PackageVersion]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ssis].[PackageVersion](
	[PackageVersionID] [int] IDENTITY(1,1) NOT NULL,
	[PackageVersionGUID] [uniqueidentifier] NOT NULL,
	[PackageID] [int] NOT NULL,
	[VersionMajor] [int] NOT NULL,
	[VersionMinor] [int] NOT NULL,
	[VersionBuild] [int] NOT NULL,
	[VersionComment] [varchar](1000) NOT NULL,
	[EnteredDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_PackageVersion] PRIMARY KEY CLUSTERED 
(
	[PackageVersionID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ssis].[SSISConfigurations]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ssis].[SSISConfigurations](
	[ProcessConfigurationID] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [nvarchar](255) NOT NULL,
	[VariableName] [nvarchar](255) NOT NULL,
	[VariableValue] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ProcessConfiguration] PRIMARY KEY CLUSTERED 
(
	[ProcessConfigurationID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [stg].[YourStageTableName]    Script Date: 01/06/2020 20:27:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stg].[YourStageTableName](
	[ETLKey] [uniqueidentifier] NOT NULL,
	[UniqueDims] [varbinary](35) NULL,
	[UniqueRows] [varbinary](16) NULL,
	[SourceSystem] [nvarchar](255) NULL,
	[Cleansed] [bit] NULL,
	[ErrorRecord] [bit] NULL,
	[ErrorReason] [nvarchar](255) NULL,
	[Processed] [bit] NULL,
	[RunDate] [datetime] NULL,
	[Column1] [nvarchar](35) NULL,
	[Column2] [nvarchar](35) NULL,
	[Column3] [nvarchar](35) NULL,
	[Column4] [nvarchar](35) NULL,
	[Column5] [nvarchar](35) NULL,
	[Column6] [nvarchar](35) NULL,
	[Column7] [nvarchar](35) NULL,
	[Column8] [nvarchar](35) NULL,
	[Column9] [nvarchar](35) NULL,
	[Column10] [nvarchar](35) NULL,
 CONSTRAINT [PK_YourStageTableName] PRIMARY KEY CLUSTERED 
(
	[ETLKey] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ssis].[BatchLog] ADD  DEFAULT (getdate()) FOR [StartDateTime]
GO
ALTER TABLE [ssis].[Package] ADD  DEFAULT (getdate()) FOR [EnteredDateTime]
GO
ALTER TABLE [ssis].[PackageLog] ADD  DEFAULT (getdate()) FOR [StartDateTime]
GO
ALTER TABLE [ssis].[PackageVersion] ADD  DEFAULT (getdate()) FOR [EnteredDateTime]
GO
ALTER TABLE [stg].[YourStageTableName] ADD  CONSTRAINT [DF_YourStageTableName_ETLKey]  DEFAULT (newid()) FOR [ETLKey]
GO
ALTER TABLE [stg].[YourStageTableName] ADD  CONSTRAINT [DF_YourStageTableName_SourceSystem]  DEFAULT (N'Copia') FOR [SourceSystem]
GO
ALTER TABLE [stg].[YourStageTableName] ADD  CONSTRAINT [DF_YourStageTableName_Cleansed]  DEFAULT ((0)) FOR [Cleansed]
GO
ALTER TABLE [stg].[YourStageTableName] ADD  CONSTRAINT [DF_YourStageTableName_ErrorRecord]  DEFAULT ((0)) FOR [ErrorRecord]
GO
ALTER TABLE [stg].[YourStageTableName] ADD  CONSTRAINT [DF_YourStageTableName_Processed]  DEFAULT ((0)) FOR [Processed]
GO
ALTER TABLE [stg].[YourStageTableName] ADD  CONSTRAINT [DF_YourStageTableName_RunDate]  DEFAULT (getdate()) FOR [RunDate]
GO
ALTER TABLE [ssis].[PackageErrorLog]  WITH CHECK ADD  CONSTRAINT [FK_PackageErrorLog_PackageLog] FOREIGN KEY([PackageLogID])
REFERENCES [ssis].[PackageLog] ([PackageLogID])
GO
ALTER TABLE [ssis].[PackageErrorLog] CHECK CONSTRAINT [FK_PackageErrorLog_PackageLog]
GO
ALTER TABLE [ssis].[PackageLog]  WITH CHECK ADD  CONSTRAINT [FK_PackageLog_BatchLog] FOREIGN KEY([BatchLogID])
REFERENCES [ssis].[BatchLog] ([BatchLogID])
GO
ALTER TABLE [ssis].[PackageLog] CHECK CONSTRAINT [FK_PackageLog_BatchLog]
GO
ALTER TABLE [ssis].[PackageLog]  WITH CHECK ADD  CONSTRAINT [FK_PackageLog_PackageVersion] FOREIGN KEY([PackageVersionID])
REFERENCES [ssis].[PackageVersion] ([PackageVersionID])
GO
ALTER TABLE [ssis].[PackageLog] CHECK CONSTRAINT [FK_PackageLog_PackageVersion]
GO
ALTER TABLE [ssis].[PackageTaskLog]  WITH CHECK ADD  CONSTRAINT [FK_PackageTaskLog_PackageLog] FOREIGN KEY([PackageLogID])
REFERENCES [ssis].[PackageLog] ([PackageLogID])
GO
ALTER TABLE [ssis].[PackageTaskLog] CHECK CONSTRAINT [FK_PackageTaskLog_PackageLog]
GO
ALTER TABLE [ssis].[PackageVariableLog]  WITH CHECK ADD  CONSTRAINT [FK_PackageVariableLog_PackageLog] FOREIGN KEY([PackageLogID])
REFERENCES [ssis].[PackageLog] ([PackageLogID])
GO
ALTER TABLE [ssis].[PackageVariableLog] CHECK CONSTRAINT [FK_PackageVariableLog_PackageLog]
GO
ALTER TABLE [ssis].[PackageVersion]  WITH CHECK ADD  CONSTRAINT [FK_PackageVersion_Package] FOREIGN KEY([PackageID])
REFERENCES [ssis].[Package] ([PackageID])
GO
ALTER TABLE [ssis].[PackageVersion] CHECK CONSTRAINT [FK_PackageVersion_Package]
GO
/****** Object:  StoredProcedure [ssis].[PackageRunTime]    Script Date: 01/06/2020 20:27:27 ******/
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
/****** Object:  StoredProcedure [ssis].[BatchRunTime]    Script Date: 01/06/2020 20:27:27 ******/
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
/****** Object:  StoredProcedure [ssis].[LogVariableValueChanged]    Script Date: 01/06/2020 20:27:27 ******/
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
/****** Object:  StoredProcedure [ssis].[LogTaskPreExecute]    Script Date: 01/06/2020 20:27:27 ******/
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
/****** Object:  StoredProcedure [ssis].[LogTaskPostExecute]    Script Date: 01/06/2020 20:27:27 ******/
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
/****** Object:  StoredProcedure [ssis].[LogPackageStart]    Script Date: 01/06/2020 20:27:27 ******/
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
/****** Object:  StoredProcedure [ssis].[LogPackageError]    Script Date: 01/06/2020 20:27:27 ******/
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
/****** Object:  StoredProcedure [ssis].[LogPackageEnd]    Script Date: 01/06/2020 20:27:27 ******/
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
/****** Object:  StoredProcedure [ssis].[GetVariableValues]    Script Date: 01/06/2020 20:27:27 ******/
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
/****** Object:  StoredProcedure [ssis].[ErrorLogByPackage]    Script Date: 01/06/2020 20:27:27 ******/
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
/****** Object:  StoredProcedure [ssis].[ErrorLogByBatch]    Script Date: 01/06/2020 20:27:27 ******/
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

-------------------------------------------------------------------------------
PRINT 'Fin TABLES'
GO
-------------------------------------------------------------------------------
