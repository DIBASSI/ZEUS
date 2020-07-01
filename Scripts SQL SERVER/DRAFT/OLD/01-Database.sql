USE [master];
GO
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'ZEUS')
BEGIN
ALTER DATABASE [ZEUS] 
SET SINGLE_USER 
WITH ROLLBACK IMMEDIATE;
DROP DATABASE [ZEUS] 
--Create DB with collation case sensative
CREATE DATABASE [ZEUS] COLLATE SQL_Latin1_General_CP1_CS_AS 
END;
GO

---- CREATE Schema

USE [ZEUS]
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'Stg')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA Stg;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'Ods')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA Ods;'
END
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'dim')
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
IF NOT EXISTS(SELECT 1 FROM sys.schemas WHERE name = 'rep')
BEGIN
    EXEC sys.sp_executesql N'CREATE SCHEMA rep;'
END