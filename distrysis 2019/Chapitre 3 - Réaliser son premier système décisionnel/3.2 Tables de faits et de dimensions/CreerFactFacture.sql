USE [DistrisysDW]
GO

CREATE TABLE [dbo].[FactFacture](
	[DateFacturation_FK] [int] NOT NULL,
	[Site_FK] [int] NOT NULL,
	[Produit_FK] [int] NOT NULL,
	[Client_FK] [int] NOT NULL,
	[PrixCatalogue] [numeric](9, 2) NOT NULL,
	[Remise] [numeric](9, 2) NOT NULL,
	[CA] [numeric](9, 2) NOT NULL,
	[Marge] [numeric](9, 2) NOT NULL,
	[CoutDirectMatiere] [numeric](9, 2) NOT NULL,
	[CoutDirectMainOeuvre] [numeric](9, 2) NOT NULL,
	[CoutIndirect] [numeric](9, 2) NOT NULL,
	[Quantite] [numeric](9, 2) NOT NULL,
	[NumFacture] [varchar](6) NULL,
	INDEX cics_factfacture CLUSTERED COLUMNSTORE
) ON [PRIMARY]
GO