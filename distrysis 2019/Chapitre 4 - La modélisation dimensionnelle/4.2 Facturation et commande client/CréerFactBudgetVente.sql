USE [DistrisysDW]
GO

/****** Object:  Table [dbo].[FactFacture]    Script Date: 15/09/2019 10:54:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactBudgetVente](
	[DateBudget_FK] [int] NOT NULL,
	[Site_FK] [int] NOT NULL,
	[Produit_FK] [int] NOT NULL,
	[CA] [numeric](9,2) NOT NULL,
	[Marge] [numeric](9,2) NOT NULL,
	INDEX cics_factbudgetvente CLUSTERED COLUMNSTORE
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactBudgetVente]  WITH NOCHECK ADD  CONSTRAINT [FK_FactBudgetVente_DimSite] FOREIGN KEY([Site_FK])
REFERENCES [dbo].[DimSite] ([Site_PK])
GO

ALTER TABLE [dbo].[FactBudgetVente] CHECK CONSTRAINT [FK_FactBudgetVente_DimSite]
GO

ALTER TABLE [dbo].[FactBudgetVente]  WITH NOCHECK ADD  CONSTRAINT [FK_FactBudgetVente_DimProduit] FOREIGN KEY([Produit_FK])
REFERENCES [dbo].[DimProduit] ([Produit_PK])
GO

ALTER TABLE [dbo].[FactBudgetVente] CHECK CONSTRAINT [FK_FactBudgetVente_DimProduit]
GO

ALTER TABLE [dbo].[FactBudgetVente]  WITH NOCHECK ADD  CONSTRAINT [FK_FactBudgetVente_DimTemps] FOREIGN KEY([DateBudget_FK])
REFERENCES [dbo].[DimTemps] ([Temps_PK])
GO

ALTER TABLE [dbo].[FactBudgetVente] CHECK CONSTRAINT [FK_FactBudgetVente_DimTemps]
GO
