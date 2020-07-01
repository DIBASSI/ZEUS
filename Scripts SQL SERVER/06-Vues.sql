USE [ZEUS]
GO

-------------------------------------------------------------------------------
PRINT 'Debut VUES'
GO
-------------------------------------------------------------------------------

/****** Object:  Index [CIDX_DimDate_PartnerCK]    Script Date: 01/06/2020 20:28:19 ******/
DROP INDEX IF EXISTS [CIDX_DimDate_PartnerCK] ON [dwh].[VwDimDate] WITH ( ONLINE = OFF )
GO
/****** Object:  View [dwh].[VwDimDate]    Script Date: 01/06/2020 20:28:19 ******/
DROP VIEW IF EXISTS [dwh].[VwDimDate]
GO
/****** Object:  View [dwh].[VwDimDate]    Script Date: 01/06/2020 20:28:19 ******/
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
/****** Object:  Index [CIDX_DimDate_PartnerCK]    Script Date: 01/06/2020 20:28:19 ******/
CREATE UNIQUE CLUSTERED INDEX [CIDX_DimDate_PartnerCK] ON [dwh].[VwDimDate]
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

-------------------------------------------------------------------------------
PRINT 'Fin VUES'
GO
-------------------------------------------------------------------------------
