USE [$(database)]
GO

-------------------------------------------------------------------------------
PRINT 'Debut VUES'
GO
-------------------------------------------------------------------------------

/****** Object:  Index [CIDX_DimDate_PartnerCK]    Script Date: 01/06/2020 20:28:19 ******/
DROP INDEX IF EXISTS [CIDX_DimDate_PartnerCK] ON [dim].[VwDimDate] WITH ( ONLINE = OFF )
GO
/****** Object:  View [dim].[VwDimDate]    Script Date: 01/06/2020 20:28:19 ******/
DROP VIEW IF EXISTS [dim].[VwDimDate]
GO
/****** Object:  View [dim].[VwDimDate]    Script Date: 01/06/2020 20:28:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--DROP VIEW dim.VwDimDate

/****** Object:  Index [PK__DimDate__40DF45E3B5664BC6]    Script Date: 01/06/2020 19:59:22 ******/
--ALTER TABLE [dim].[DimDate] DROP CONSTRAINT [PK__DimDate__40DF45E3B5664BC6] WITH ( ONLINE = OFF )





CREATE VIEW [dim].[VwDimDate]
 
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
FROM [dim].[Date]

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
CREATE UNIQUE CLUSTERED INDEX [CIDX_DimDate_PartnerCK] ON [dim].[VwDimDate]
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO



/****** Object:  View [vw].[SHA1Columns]    Script Date: 08/07/2020 18:38:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



/****** Object:  View [vw].[SHA1Columns]    Script Date: 10/07/2020 17:56:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [vw].[SHA1Columns]
AS

SELECT STRING_AGG(COLUMN_NAME,',') AS COLUMN_NAME ,TABLE_SCHEMA, TABLE_NAME 
FROM INFORMATION_SCHEMA.COLUMNS S
WHERE S.COLUMN_NAME NOT IN ('UniqueKey','ID','UniqueRow')
GROUP BY TABLE_SCHEMA, TABLE_NAME;

GO




-------------------------------------------------------------------------------
PRINT 'Fin VUES'
GO
-------------------------------------------------------------------------------
