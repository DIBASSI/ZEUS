USE [$(database)]
GO

-------------------------------------------------------------------------------
PRINT 'Debut TABLES'
GO
-------------------------------------------------------------------------------

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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ref].[SETUP_PACKAGES]') AND type in (N'U'))
ALTER TABLE [ref].[SETUP_PACKAGES] DROP CONSTRAINT IF EXISTS [FK_SETUP_PACKAGES_SETUP_PACKAGES_TYPE]
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[stg].[Table1]') AND type in (N'U'))
ALTER TABLE [stg].[Table1] DROP CONSTRAINT IF EXISTS [DF_Table1_RunDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[stg].[Table1]') AND type in (N'U'))
ALTER TABLE [stg].[Table1] DROP CONSTRAINT IF EXISTS [DF_Table1_Processed]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[stg].[Table1]') AND type in (N'U'))
ALTER TABLE [stg].[Table1] DROP CONSTRAINT IF EXISTS [DF_Table1_ErrorRecord]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[stg].[Table1]') AND type in (N'U'))
ALTER TABLE [stg].[Table1] DROP CONSTRAINT IF EXISTS [DF_Table1_Cleansed]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[stg].[Table1]') AND type in (N'U'))
ALTER TABLE [stg].[Table1] DROP CONSTRAINT IF EXISTS [DF_Table1_SourceSystem]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[PackageVersion]') AND type in (N'U'))
ALTER TABLE [ssis].[PackageVersion] DROP CONSTRAINT IF EXISTS [DF__PackageVe__Enter__4B7734FF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[PackageLog]') AND type in (N'U'))
ALTER TABLE [ssis].[PackageLog] DROP CONSTRAINT IF EXISTS [DF__PackageLo__Start__4A8310C6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[Package]') AND type in (N'U'))
ALTER TABLE [ssis].[Package] DROP CONSTRAINT IF EXISTS [DF__Package__Entered__498EEC8D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ssis].[BatchLog]') AND type in (N'U'))
ALTER TABLE [ssis].[BatchLog] DROP CONSTRAINT IF EXISTS [DF__BatchLog__StartD__489AC854]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ods].[Table1]') AND type in (N'U'))
ALTER TABLE [ods].[Table1] DROP CONSTRAINT IF EXISTS [DF_Table1_RunDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ods].[Table1]') AND type in (N'U'))
ALTER TABLE [ods].[Table1] DROP CONSTRAINT IF EXISTS [DF_Table1_Processed]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ods].[Table1]') AND type in (N'U'))
ALTER TABLE [ods].[Table1] DROP CONSTRAINT IF EXISTS [DF_Table1_ErrorRecord]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ods].[Table1]') AND type in (N'U'))
ALTER TABLE [ods].[Table1] DROP CONSTRAINT IF EXISTS [DF_Table1_Cleansed]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ods].[Table1]') AND type in (N'U'))
ALTER TABLE [ods].[Table1] DROP CONSTRAINT IF EXISTS [DF_Table1_SourceSystem]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ods].[Table1]') AND type in (N'U'))
ALTER TABLE [ods].[Table1] DROP CONSTRAINT IF EXISTS [DF_Table1_ETLKey]
GO
/****** Object:  Table [stg].[YourStageTableName]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [stg].[YourStageTableName]
GO
/****** Object:  Table [stg].[Table1]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [stg].[Table1]
GO
/****** Object:  Table [ssis].[SSISConfigurations]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ssis].[SSISConfigurations]
GO
/****** Object:  Table [ssis].[PackageVersion]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ssis].[PackageVersion]
GO
/****** Object:  Table [ssis].[PackageVariableLog]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ssis].[PackageVariableLog]
GO
/****** Object:  Table [ssis].[PackageTaskLog]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ssis].[PackageTaskLog]
GO
/****** Object:  Table [ssis].[PackageLog]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ssis].[PackageLog]
GO
/****** Object:  Table [ssis].[PackageErrorLog]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ssis].[PackageErrorLog]
GO
/****** Object:  Table [ssis].[Package]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ssis].[Package]
GO
/****** Object:  Table [ssis].[BatchLog]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ssis].[BatchLog]
GO
/****** Object:  Table [rpt].[TableLoadReport]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [rpt].[TableLoadReport]
GO
/****** Object:  Table [ref].[t_Param_File]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ref].[t_Param_File]
GO
/****** Object:  Table [ods].[Table1]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ods].[Table1]
GO
/****** Object:  Table [fact].[TableName]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [fact].[TableName]
GO
/****** Object:  Table [dwh].[YourFactTableName]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [dwh].[YourFactTableName]
GO
/****** Object:  Table [dwh].[DimYourDimensionName]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [dwh].[DimYourDimensionName]
GO
/****** Object:  Table [dwh].[DimDate]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [dwh].[DimDate]
GO
/****** Object:  Table [dim].[Date]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [dim].[Date]
GO
/****** Object:  Table [ref].[SETUP_PACKAGES_TYPE]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ref].[SETUP_PACKAGES_TYPE]
GO
/****** Object:  Table [ref].[SETUP_PACKAGES]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [ref].[SETUP_PACKAGES]
GO
/****** Object:  Table [audit].[Import0]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [audit].[Import0]
GO
/****** Object:  Table [audit].[Import]    Script Date: 03/07/2020 16:00:38 ******/
DROP TABLE IF EXISTS [audit].[Import]
GO
/****** Object:  Table [audit].[Import]    Script Date: 03/07/2020 16:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[Import](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ETLKey] [uniqueidentifier] NOT NULL,
	[UniqueRows]  AS (CONVERT([varbinary](16),hashbytes('MD5',concat(CONVERT([nvarchar](35),[Importname],(0)),CONVERT([nvarchar](35),[ImportSize],(0)),CONVERT([nvarchar](35),(CONVERT([varchar](10),[ImportCreatedDateTime],(126))+' ')+CONVERT([varchar](24),[ImportCreatedDateTime],(114)),(0)),CONVERT([nvarchar](35),(CONVERT([varchar](10),[ImportLastModifieddDateTime],(126))+' ')+CONVERT([varchar](24),[ImportLastModifieddDateTime],(114)),(0)))),(0))) PERSISTED NOT NULL,
	[BatchLogID] [bigint] NOT NULL,
	[PackageLogID] [bigint] NOT NULL,
	[Importname] [varchar](35) NOT NULL,
	[DirectoryPath] [varchar](256) NULL,
	[ImportCreatedDateTime] [datetime] NOT NULL,
	[ImportLastModifieddDateTime] [datetime] NOT NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[ImportStatus] [varchar](10) NULL,
	[ImportSize] [int] NULL,
	[BatchtStatus] [varchar](10) NULL,
 CONSTRAINT [PK_UniqueRows] PRIMARY KEY NONCLUSTERED 
(
	[UniqueRows] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[Import0]    Script Date: 03/07/2020 16:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[Import0](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ETLKey] [uniqueidentifier] NOT NULL,
	[UniqueRows] [varbinary](16) NULL,
	[BatchLogID] [bigint] NOT NULL,
	[PackageLogID] [bigint] NOT NULL,
	[Importname] [varchar](35) NOT NULL,
	[DirectoryPath] [varchar](256) NULL,
	[ImportCreatedDateTime] [datetime] NOT NULL,
	[ImportLastModifieddDateTime] [datetime] NOT NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[ImportStatus] [varchar](10) NULL,
	[ImportSize] [int] NULL,
	[BatchtStatus] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ref].[SETUP_PACKAGES]    Script Date: 03/07/2020 16:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[SETUP_PACKAGES](
	[Package_Name] [varchar](100) NOT NULL,
	[Package_Project] [varchar](50) NOT NULL,
	[Package_Type] [varchar](10) NOT NULL,
	[Package_Order] [int] NOT NULL,
	[Package_Enable] [bit] NOT NULL,
	[Source] [nvarchar](255) NULL,
 CONSTRAINT [PK_SETUP_PACKAGES] PRIMARY KEY CLUSTERED 
(
	[Package_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ref].[SETUP_PACKAGES_TYPE]    Script Date: 03/07/2020 16:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[SETUP_PACKAGES_TYPE](
	[Package_Type] [varchar](10) NOT NULL,
	[Package_Type_Order] [int] NOT NULL,
	[Package_Type_Enable] [bit] NOT NULL,
 CONSTRAINT [PK_SETUP_PACKAGES_TYPE] PRIMARY KEY CLUSTERED 
(
	[Package_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[Date]    Script Date: 03/07/2020 16:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[Date](
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
/****** Object:  Table [dwh].[DimDate]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [dwh].[DimYourDimensionName]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [dwh].[YourFactTableName]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [fact].[TableName]    Script Date: 03/07/2020 16:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[TableName](
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
/****** Object:  Table [ods].[Table1]    Script Date: 03/07/2020 16:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ods].[Table1](
	[ETLKey] [uniqueidentifier] NOT NULL,
	[UniqueDims]  AS (CONVERT([varbinary](35),hashbytes('SHA1',concat(CONVERT([nvarchar](35),[DateKey],(0)),CONVERT([nvarchar](35),[DayOfWeekUK],(0)))),(0))) PERSISTED NOT NULL,
	[SourceSystem] [nvarchar](255) NULL,
	[Cleansed] [bit] NULL,
	[ErrorRecord] [bit] NULL,
	[ErrorReason] [nvarchar](255) NULL,
	[Processed] [bit] NULL,
	[RunDate] [datetime] NULL,
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
	[FiscalLastDayOfYear] [date] NULL,
 CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED 
(
	[UniqueDims] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ref].[t_Param_File]    Script Date: 03/07/2020 16:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ref].[t_Param_File](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Extension] [nvarchar](255) NOT NULL,
	[Source] [nvarchar](255) NULL,
	[Priorite] [int] NOT NULL,
	[SCD] [int] NOT NULL,
	[Header] [nvarchar](2000) NULL,
	[Structure] [nvarchar](4000) NULL,
	[XSD] [nvarchar](255) NULL,
	[Masque] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Mail] [nvarchar](255) NULL,
	[InPutFolder] [nvarchar](255) NULL,
	[OutPutFolder] [nvarchar](255) NULL,
	[Package_Project] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [rpt].[TableLoadReport]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [ssis].[BatchLog]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [ssis].[Package]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [ssis].[PackageErrorLog]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [ssis].[PackageLog]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [ssis].[PackageTaskLog]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [ssis].[PackageVariableLog]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [ssis].[PackageVersion]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [ssis].[SSISConfigurations]    Script Date: 03/07/2020 16:00:38 ******/
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
/****** Object:  Table [stg].[Table1]    Script Date: 03/07/2020 16:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stg].[Table1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ETLKey] [uniqueidentifier] NOT NULL,
	[UniqueRows]  AS (CONVERT([varbinary](16),hashbytes('MD5',concat(CONVERT([nvarchar](35),[DateKey],(0)),CONVERT([nvarchar](35),[DayOfWeekUK],(0)))),(0))) PERSISTED NOT NULL,
	[SourceSystem] [nvarchar](255) NULL,
	[Cleansed] [bit] NULL,
	[ErrorRecord] [bit] NULL,
	[ErrorReason] [nvarchar](255) NULL,
	[Processed] [bit] NULL,
	[RunDate] [datetime] NULL,
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
	[FiscalLastDayOfYear] [date] NULL,
 CONSTRAINT [PK_UniqueRows] PRIMARY KEY NONCLUSTERED 
(
	[UniqueRows] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [stg].[YourStageTableName]    Script Date: 03/07/2020 16:00:38 ******/
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
ALTER TABLE [ods].[Table1] ADD  CONSTRAINT [DF_Table1_ETLKey]  DEFAULT (newid()) FOR [ETLKey]
GO
ALTER TABLE [ods].[Table1] ADD  CONSTRAINT [DF_Table1_SourceSystem]  DEFAULT (N'bank0') FOR [SourceSystem]
GO
ALTER TABLE [ods].[Table1] ADD  CONSTRAINT [DF_Table1_Cleansed]  DEFAULT ((0)) FOR [Cleansed]
GO
ALTER TABLE [ods].[Table1] ADD  CONSTRAINT [DF_Table1_ErrorRecord]  DEFAULT ((0)) FOR [ErrorRecord]
GO
ALTER TABLE [ods].[Table1] ADD  CONSTRAINT [DF_Table1_Processed]  DEFAULT ((0)) FOR [Processed]
GO
ALTER TABLE [ods].[Table1] ADD  CONSTRAINT [DF_Table1_RunDate]  DEFAULT (getdate()) FOR [RunDate]
GO
ALTER TABLE [ssis].[BatchLog] ADD  DEFAULT (getdate()) FOR [StartDateTime]
GO
ALTER TABLE [ssis].[Package] ADD  DEFAULT (getdate()) FOR [EnteredDateTime]
GO
ALTER TABLE [ssis].[PackageLog] ADD  DEFAULT (getdate()) FOR [StartDateTime]
GO
ALTER TABLE [ssis].[PackageVersion] ADD  DEFAULT (getdate()) FOR [EnteredDateTime]
GO
ALTER TABLE [stg].[Table1] ADD  CONSTRAINT [DF_Table1_SourceSystem]  DEFAULT (N'bank0') FOR [SourceSystem]
GO
ALTER TABLE [stg].[Table1] ADD  CONSTRAINT [DF_Table1_Cleansed]  DEFAULT ((0)) FOR [Cleansed]
GO
ALTER TABLE [stg].[Table1] ADD  CONSTRAINT [DF_Table1_ErrorRecord]  DEFAULT ((0)) FOR [ErrorRecord]
GO
ALTER TABLE [stg].[Table1] ADD  CONSTRAINT [DF_Table1_Processed]  DEFAULT ((0)) FOR [Processed]
GO
ALTER TABLE [stg].[Table1] ADD  CONSTRAINT [DF_Table1_RunDate]  DEFAULT (getdate()) FOR [RunDate]
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
ALTER TABLE [ref].[SETUP_PACKAGES]  WITH CHECK ADD  CONSTRAINT [FK_SETUP_PACKAGES_SETUP_PACKAGES_TYPE] FOREIGN KEY([Package_Type])
REFERENCES [ref].[SETUP_PACKAGES_TYPE] ([Package_Type])
GO
ALTER TABLE [ref].[SETUP_PACKAGES] CHECK CONSTRAINT [FK_SETUP_PACKAGES_SETUP_PACKAGES_TYPE]
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








---------------------------------------------------------------------------------------------------------------


DROP TABLE IF EXISTS [ref].[TransfertFile]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [ref].[TransfertFile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Extension] [nvarchar](255) NOT NULL,
	[Source] [nvarchar](255) NULL,
	[Priorite] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Header] [nvarchar](2000) NULL,
	[Structure] [nvarchar](4000) NULL,
	[XSD] [nvarchar](255) NULL,
	[Masque] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Mail] [nvarchar](255) NULL,
	[InPutFolder] [nvarchar](255) NULL,
	[OutPutFolder] [nvarchar](255) NULL,
	[Package_Project] [varchar](50) NULL
) ON [PRIMARY]
GO


/****** Object:  Table [audit].[TransfertFile]    Script Date: 06/07/2020 19:08:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [audit].[TransfertFile](
	[UniqueRows]  AS (CONVERT([varbinary](16),hashbytes('MD5',concat(CONVERT([nvarchar](35),[TransfertFilename],(0)),CONVERT([nvarchar](35),[TransfertFileSize],(0)),CONVERT([nvarchar](35),(CONVERT([varchar](10),[TransfertFileCreatedDateTime],(126))+' ')+CONVERT([varchar](24),[TransfertFileCreatedDateTime],(114)),(0)),CONVERT([nvarchar](35),(CONVERT([varchar](10),[TransfertFileLastModifieddDateTime],(126))+' ')+CONVERT([varchar](24),[TransfertFileLastModifieddDateTime],(114)),(0)))),(0))) PERSISTED NOT NULL,
	[TransfertFilename] [varchar](35) NOT NULL,
	[Source] [nvarchar](255) NULL,
	[SourcePath] [varchar](256) NULL,
	[TargetPath] [varchar](256) NULL,
	[TransfertFileCreatedDateTime] [datetime] NOT NULL,
	[TransfertFileLastModifieddDateTime] [datetime] NOT NULL,
	[TransfertFileSize] [int] NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[TransfertFileStatus] [varchar](25) NULL,
	[TransfertFolderStatus] [varchar](25) NULL,
 CONSTRAINT [PK_audit_TransfertFile_UniqueRows] PRIMARY KEY NONCLUSTERED 
(
	[UniqueRows] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



-------------------------------------------------------------------------------
PRINT 'Fin TABLES'
GO
-------------------------------------------------------------------------------
