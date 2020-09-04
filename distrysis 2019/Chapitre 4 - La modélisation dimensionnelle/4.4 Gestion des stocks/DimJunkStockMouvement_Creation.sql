USE [DistrisysDW]
GO

/****** Object:  Table [dbo].[DimJunkStockMouvement]    Script Date: 27/10/2014 21:45:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[DimJunkStockMouvement](
	[StockMouvement_PK] [int] NOT NULL,
	[SensMouvement] [varchar](10) NOT NULL,
	[TypeMouvementCode] [int] NOT NULL,
	[TypeMouvement] [varchar](40) NOT NULL,
	[ManuelAutomatique] [varchar](12) NOT NULL,
	[ControleQualite] [varchar](30) NOT NULL,
 CONSTRAINT [PK_DimJunkStockMouvement] PRIMARY KEY CLUSTERED 
(
	[StockMouvement_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


