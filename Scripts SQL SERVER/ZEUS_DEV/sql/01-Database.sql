IF EXISTS (SELECT 1 FROM sys.databases WHERE name = $(db))
BEGIN
ALTER DATABASE [$(database)] 
SET SINGLE_USER 
WITH ROLLBACK IMMEDIATE;
DROP DATABASE [$(database)] 
END
GO

begin
--Create DB with collation case sensative
CREATE DATABASE [$(database)] COLLATE SQL_Latin1_General_CP1_CS_AS 
END
GO


USE [$(database)]


---- CREATE Schema

IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'stg')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA stg;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'ods')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA ods;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'dim')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA dim;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'fact')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA fact;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'dwh')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA dwh;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'dmt')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA dmt;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'audit')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA audit;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'log')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA log;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'rpt')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA rpt;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'ssis')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA ssis;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'audit')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA audit;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'param')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA param;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'log')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA log;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'ref')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA ref;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'fn')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA fn;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'vw')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA vw;'
END