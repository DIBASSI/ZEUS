USE [DistrisysDW]
GO

/****** Object:  Table [dbo].[DimHeure]    Script Date: 27/10/2014 21:18:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DimHeure](
	[Heure_PK] [int] NOT NULL,
	[TrancheHoraire] [varchar](20) NOT NULL,
	[MomentJourneeCode] [int] NOT NULL,
	[MomentJournee] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DimHeure] PRIMARY KEY CLUSTERED 
(
	[Heure_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


