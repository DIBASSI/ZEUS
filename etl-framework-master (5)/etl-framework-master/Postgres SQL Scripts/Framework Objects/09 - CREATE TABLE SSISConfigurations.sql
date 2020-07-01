USE [SSISManagement]
GO

/****** Object:  Table [dbo].[SSISConfigurations]    Script Date: 1/28/2016 3:50:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SSISConfigurations]') AND type in (N'U'))
DROP TABLE [dbo].[SSISConfigurations]
GO

/****** Object:  Table [dbo].[SSISConfigurations]    Script Date: 1/28/2016 3:50:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SSISConfigurations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SSISConfigurations](
	[ProcessConfigurationID] [int] IDENTITY(1,1) NOT NULL,
	[PackageName] [nvarchar](255) NOT NULL,
	[VariableName] [nvarchar](255) NOT NULL,
	[VariableValue] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ProcessConfiguration] PRIMARY KEY CLUSTERED 
(
	[ProcessConfigurationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO


