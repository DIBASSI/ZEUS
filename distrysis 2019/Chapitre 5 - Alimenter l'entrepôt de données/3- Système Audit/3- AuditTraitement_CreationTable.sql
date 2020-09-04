USE DistrisysDW


CREATE TABLE dbo.AuditTraitement
	(
	AuditTraitement_PK int NOT NULL IDENTITY(1, 1),
	NomFlux varchar(50) NOT NULL,
	DateDebutTraitement smalldatetime NOT NULL,
	DateFinTraitement smalldatetime NULL,
	NbErreurTechnique int NULL,
	NbAvertissement int NULL,
	FluxTermineAvecSucces char(1) NULL,
	FluxAReprendre char(1) NOT NULL,
	NbFluxExecute int NULL
	)  ON [PRIMARY]
GO

ALTER TABLE dbo.AuditTraitement ADD CONSTRAINT
	PK_dbo_AuditTraitement PRIMARY KEY CLUSTERED 
	(
	AuditTraitement_PK
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]


ALTER TABLE [dbo].[AuditFlux] WITH NOCHECK ADD  CONSTRAINT [FK_AuditFlux_AuditTraitement] FOREIGN KEY([AuditTraitement_FK])
REFERENCES [dbo].[AuditTraitement] ([AuditTraitement_PK])
GO

ALTER TABLE [dbo].[AuditFlux] CHECK CONSTRAINT [FK_AuditFlux_AuditTraitement]
GO

ALTER TABLE dbo.AuditTraitement SET (LOCK_ESCALATION = TABLE)
GO

