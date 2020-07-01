USE [master];
GO
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'ZEUS')
BEGIN
ALTER DATABASE [ZEUS] 
SET SINGLE_USER 
WITH ROLLBACK IMMEDIATE;
DROP DATABASE [ZEUS] 
END
GO

begin
--Create DB with collation case sensative
CREATE DATABASE [ZEUS] COLLATE SQL_Latin1_General_CP1_CS_AS 
END
GO
---- CREATE Schema

USE [ZEUS]
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'stg')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA stg;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'ods')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA ods;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'Dim')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA Dim;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'Fact')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA Fact;'
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
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'dwh')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA dwh;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'dw')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA dw;'
END