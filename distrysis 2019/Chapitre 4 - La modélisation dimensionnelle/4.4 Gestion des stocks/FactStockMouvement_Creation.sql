USE [DistrisysDW4]
GO

/****** Object:  Table [dbo].[FactStockMouvement]    Script Date: 30/10/2014 15:37:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[FactStockMouvement](
	[DateMouvement_FK] [int] NOT NULL,
	[Heure_FK] [int] NOT NULL,
	[Site_FK] [int] NOT NULL,
	[Produit_FK] [int] NOT NULL,
	[StockMouvement_FK] [int] NOT NULL,
	[QuantiteMouvemente] [int] NOT NULL,
	[ValeurMouvemente] [numeric](9, 2) NOT NULL,
	[NumLotProduit] [varchar](10) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[FactStockMouvement]  WITH CHECK ADD  CONSTRAINT [FK_FactStockMouvement_DimHeure] FOREIGN KEY([Heure_FK])
REFERENCES [dbo].[DimHeure] ([Heure_PK])
GO

ALTER TABLE [dbo].[FactStockMouvement] CHECK CONSTRAINT [FK_FactStockMouvement_DimHeure]
GO

ALTER TABLE [dbo].[FactStockMouvement]  WITH CHECK ADD  CONSTRAINT [FK_FactStockMouvement_DimJunkStockMouvement] FOREIGN KEY([StockMouvement_FK])
REFERENCES [dbo].[DimJunkStockMouvement] ([StockMouvement_PK])
GO

ALTER TABLE [dbo].[FactStockMouvement] CHECK CONSTRAINT [FK_FactStockMouvement_DimJunkStockMouvement]
GO

ALTER TABLE [dbo].[FactStockMouvement]  WITH CHECK ADD  CONSTRAINT [FK_FactStockMouvement_DimProduit] FOREIGN KEY([Produit_FK])
REFERENCES [dbo].[DimProduit] ([Produit_PK])
GO

ALTER TABLE [dbo].[FactStockMouvement] CHECK CONSTRAINT [FK_FactStockMouvement_DimProduit]
GO

ALTER TABLE [dbo].[FactStockMouvement]  WITH CHECK ADD  CONSTRAINT [FK_FactStockMouvement_DimSite] FOREIGN KEY([Site_FK])
REFERENCES [dbo].[DimSite] ([Site_PK])
GO

ALTER TABLE [dbo].[FactStockMouvement] CHECK CONSTRAINT [FK_FactStockMouvement_DimSite]
GO

ALTER TABLE [dbo].[FactStockMouvement]  WITH CHECK ADD  CONSTRAINT [FK_FactStockMouvement_DimTemps] FOREIGN KEY([DateMouvement_FK])
REFERENCES [dbo].[DimTemps] ([Temps_PK])
GO

ALTER TABLE [dbo].[FactStockMouvement] CHECK CONSTRAINT [FK_FactStockMouvement_DimTemps]
GO


