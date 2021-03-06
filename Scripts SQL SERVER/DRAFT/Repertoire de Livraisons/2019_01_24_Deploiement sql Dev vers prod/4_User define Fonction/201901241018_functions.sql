USE [Hub_Banques_Depositaires]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GetPrefixvalue]    Script Date: 01/24/2019 10:16:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_GetPrefixvalue]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_GetPrefixvalue]
GO
/****** Object:  Table [dbo].[DWH_PARAM_FILE]    Script Date: 01/24/2019 10:16:59 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__DWH_PARAM__IS_OB__4A58F394]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DWH_PARAM_FILE] DROP CONSTRAINT [DF__DWH_PARAM__IS_OB__4A58F394]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_PARAM_FILE]') AND type in (N'U'))
DROP TABLE [dbo].[DWH_PARAM_FILE]
GO
/****** Object:  Table [dbo].[DWH_PARAM_FILE]    Script Date: 01/24/2019 10:16:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DWH_PARAM_FILE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DWH_PARAM_FILE](
	[ID] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](50) NOT NULL,
	[LOADING_FREQUENCY] [varchar](1) NOT NULL,
	[WORKING_DAY_FLAG] [bit] NOT NULL,
	[WEEK_DAY_FLAG] [bit] NOT NULL,
	[BANK_ID] [numeric](9, 0) NOT NULL,
	[PREFIX] [varchar](12) NOT NULL,
	[IS_OBLIG] [bit] NOT NULL DEFAULT ((1)),
	[IS_OBLIG_CACEIS] [bit] NULL,
 CONSTRAINT [PK_DWH_PARAM_FILE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_GetPrefixvalue]    Script Date: 01/24/2019 10:16:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_GetPrefixvalue]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'





CREATE FUNCTION [dbo].[ufn_GetPrefixvalue] (@Filename_IN varchar(255),@Bank_ID INT)
RETURNS varchar(25)
AS
BEGIN
        DECLARE @VALEUR_Prefix_OUT  varchar(25)= (SELECT TOP 1 ID FROM DWH_PARAM_FILE
													WHERE CHARINDEX(PREFIX,@Filename_IN)>0 and BANK_ID=@Bank_ID
													ORDER BY ID )

        RETURN ISNULL((@VALEUR_Prefix_OUT),9999)
END





' 
END
GO
