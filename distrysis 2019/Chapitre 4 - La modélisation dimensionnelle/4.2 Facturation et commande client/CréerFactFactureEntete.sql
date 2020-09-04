USE [DistrisysDW]
GO

/****** Object:  Table [dbo].[FactFacture]    Script Date: 15/09/2019 10:54:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactFactureEntete](
	[DateFacturation_FK] [int] NOT NULL,
	[Site_FK] [int] NOT NULL,
	[Client_FK] [int] NOT NULL,
	[NbArticleFacture] [int] NOT NULL,
	[NumFacture] [varchar](6) NULL,
	INDEX cics_factfactureentete CLUSTERED COLUMNSTORE
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactFactureEntete]  WITH NOCHECK ADD  CONSTRAINT [FK_FactFactureEntete_DimClient] FOREIGN KEY([Client_FK])
REFERENCES [dbo].[DimClient] ([Client_PK])
GO

ALTER TABLE [dbo].[FactFactureEntete] CHECK CONSTRAINT [FK_FactFactureEntete_DimClient]
GO

ALTER TABLE [dbo].[FactFactureEntete]  WITH NOCHECK ADD  CONSTRAINT [FK_FactFactureEntete_DimSite] FOREIGN KEY([Site_FK])
REFERENCES [dbo].[DimSite] ([Site_PK])
GO

ALTER TABLE [dbo].[FactFactureEntete] CHECK CONSTRAINT [FK_FactFactureEntete_DimSite]
GO

ALTER TABLE [dbo].[FactFactureEntete]  WITH NOCHECK ADD  CONSTRAINT [FK_FactFactureEntete_DimTemps] FOREIGN KEY([DateFacturation_FK])
REFERENCES [dbo].[DimTemps] ([Temps_PK])
GO

ALTER TABLE [dbo].[FactFactureEntete] CHECK CONSTRAINT [FK_FactFactureEntete_DimTemps]
GO


