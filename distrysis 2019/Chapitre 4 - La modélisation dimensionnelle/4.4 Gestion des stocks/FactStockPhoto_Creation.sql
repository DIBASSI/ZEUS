USE [DistrisysDW]
GO

/****** Object:  Table [dbo].[FactStockPhoto]    Script Date: 30/10/2014 15:44:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactStockPhoto](
	[DatePhoto_FK] [int] NOT NULL,
	[Site_FK] [int] NOT NULL,
	[Produit_FK] [int] NOT NULL,
	[QuantiteStockReel] [int] NOT NULL,
	[QuantiteStockActif] [int] NOT NULL,
	[QuantiteEnAttenteLivraison] [int] NOT NULL,
	[QuantiteEnAttenteReception] [int] NOT NULL,
	[ValorisationStock] [numeric](9, 2) NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[FactStockPhoto]  WITH NOCHECK ADD  CONSTRAINT [FK_FactStockPhoto_DimProduit] FOREIGN KEY([Produit_FK])
REFERENCES [dbo].[DimProduit] ([Produit_PK])
GO

ALTER TABLE [dbo].[FactStockPhoto] CHECK CONSTRAINT [FK_FactStockPhoto_DimProduit]
GO

ALTER TABLE [dbo].[FactStockPhoto]  WITH NOCHECK ADD  CONSTRAINT [FK_FactStockPhoto_DimSite] FOREIGN KEY([Site_FK])
REFERENCES [dbo].[DimSite] ([Site_PK])
GO

ALTER TABLE [dbo].[FactStockPhoto] CHECK CONSTRAINT [FK_FactStockPhoto_DimSite]
GO

ALTER TABLE [dbo].[FactStockPhoto]  WITH NOCHECK ADD  CONSTRAINT [FK_FactStockPhoto_DimTemps] FOREIGN KEY([DatePhoto_FK])
REFERENCES [dbo].[DimTemps] ([Temps_PK])
GO

ALTER TABLE [dbo].[FactStockPhoto] CHECK CONSTRAINT [FK_FactStockPhoto_DimTemps]
GO


