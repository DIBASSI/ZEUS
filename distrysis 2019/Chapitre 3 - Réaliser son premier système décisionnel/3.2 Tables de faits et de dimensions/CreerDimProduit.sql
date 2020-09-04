USE [DistrisysDW]
GO

CREATE TABLE [dbo].[DimProduit](
	[Produit_PK] [int] IDENTITY(1,1) NOT NULL,
	[ProduitCode] [varchar](10) NOT NULL,
	[Produit] [varchar](20) NOT NULL,
	[SousFamilleCode] [varchar](10) NOT NULL,
	[SousFamille] [varchar](20) NOT NULL,
	[FamilleCode] [varchar](10) NOT NULL,
	[Famille] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DimProduit] PRIMARY KEY CLUSTERED 
(
	[Produit_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO