USE [DistrisysDW]
GO

/****** Object:  Table [dbo].[FactFacture]    Script Date: 15/09/2019 10:54:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactBilanCommandeClient](
	[DateDemande_FK] [int] NOT NULL,
	[DateLivraisonPrevue_FK] [int] NOT NULL,
	[DateLivraisonReelle_FK] [int] NOT NULL,
	[Site_FK] [int] NOT NULL,
	[Client_FK] [int] NOT NULL,
	[DelaiPrevuEnJour] [int] NOT NULL,
	[DelaiReelEnJour] [int] NOT NULL,
	[NbCommandeEnRetard] [tinyint] NOT NULL,
	[DelaiRetardEnJour] [int] NOT NULL,
	[NumCommande] [varchar](10) NULL,
	INDEX cics_factbilancommandeclient CLUSTERED COLUMNSTORE
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactBilanCommandeClient]  WITH NOCHECK ADD  CONSTRAINT [FK_FactBilanCommandeClient_DimClient] FOREIGN KEY([Client_FK])
REFERENCES [dbo].[DimClient] ([Client_PK])
GO

ALTER TABLE [dbo].[FactBilanCommandeClient] CHECK CONSTRAINT [FK_FactBilanCommandeClient_DimClient]
GO

ALTER TABLE [dbo].[FactBilanCommandeClient]  WITH NOCHECK ADD  CONSTRAINT [FK_FactBilanCommandeClient_DimSite] FOREIGN KEY([Site_FK])
REFERENCES [dbo].[DimSite] ([Site_PK])
GO

ALTER TABLE [dbo].[FactBilanCommandeClient] CHECK CONSTRAINT [FK_FactBilanCommandeClient_DimSite]
GO

ALTER TABLE [dbo].[FactBilanCommandeClient]  WITH NOCHECK ADD  CONSTRAINT [FK_FactBilanCommandeClient_DimTemps1] FOREIGN KEY([DateDemande_FK])
REFERENCES [dbo].[DimTemps] ([Temps_PK])
GO

ALTER TABLE [dbo].[FactBilanCommandeClient] CHECK CONSTRAINT [FK_FactBilanCommandeClient_DimTemps1]
GO

ALTER TABLE [dbo].[FactBilanCommandeClient]  WITH NOCHECK ADD  CONSTRAINT [FK_FactBilanCommandeClient_DimTemps2] FOREIGN KEY([DateLivraisonPrevue_FK])
REFERENCES [dbo].[DimTemps] ([Temps_PK])
GO

ALTER TABLE [dbo].[FactBilanCommandeClient] CHECK CONSTRAINT [FK_FactBilanCommandeClient_DimTemps2]
GO

ALTER TABLE [dbo].[FactBilanCommandeClient]  WITH NOCHECK ADD  CONSTRAINT [FK_FactBilanCommandeClient_DimTemps3] FOREIGN KEY([DateLivraisonReelle_FK])
REFERENCES [dbo].[DimTemps] ([Temps_PK])
GO

ALTER TABLE [dbo].[FactBilanCommandeClient] CHECK CONSTRAINT [FK_FactBilanCommandeClient_DimTemps3]
GO
