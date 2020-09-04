
-- DimProduit

ALTER TABLE dbo.DimProduit ADD
	AuditFluxAjout_FK int NULL,
	AuditFluxModification_FK int NULL

ALTER TABLE [dbo].[DimProduit] WITH NOCHECK ADD  CONSTRAINT [FK_DimProduit_AuditFluxAjout] FOREIGN KEY([AuditFluxAjout_FK])
REFERENCES [dbo].[AuditFlux] ([AuditFlux_PK])
GO

ALTER TABLE [dbo].[DimProduit] CHECK CONSTRAINT [FK_DimProduit_AuditFluxAjout]
GO

ALTER TABLE [dbo].[DimProduit] WITH NOCHECK ADD  CONSTRAINT [FK_DimProduit_AuditFluxModification] FOREIGN KEY([AuditFluxModification_FK])
REFERENCES [dbo].[AuditFlux] ([AuditFlux_PK])
GO

ALTER TABLE [dbo].[DimProduit] CHECK CONSTRAINT [FK_DimProduit_AuditFluxModification]
GO

-- FactFacture

ALTER TABLE dbo.FactFacture ADD
	AuditFluxAjout_FK int NULL

ALTER TABLE [dbo].[Factfacture] WITH NOCHECK ADD  CONSTRAINT [FK_FactFacture_AuditFluxAjout] FOREIGN KEY([AuditFluxAjout_FK])
REFERENCES [dbo].[AuditFlux] ([AuditFlux_PK])
GO

ALTER TABLE [dbo].[Factfacture] CHECK CONSTRAINT [FK_FactFacture_AuditFluxAjout]
GO

-- FactFactureEntete

ALTER TABLE dbo.FactFactureEntete ADD
	AuditFluxAjout_FK int NULL

ALTER TABLE [dbo].[FactFactureEntete] WITH NOCHECK ADD  CONSTRAINT [FK_FactFactureEntete_AuditFluxAjout] FOREIGN KEY([AuditFluxAjout_FK])
REFERENCES [dbo].[AuditFlux] ([AuditFlux_PK])
GO

ALTER TABLE [dbo].[FactFactureEntete] CHECK CONSTRAINT [FK_FactFactureEntete_AuditFluxAjout]
GO

-- Fin