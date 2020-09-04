/* Pour éviter les problèmes éventuels de perte de données, passez attentivement ce script en revue avant de l'exécuter en dehors du contexte du Concepteur de bases de données.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.AuditEvenement
	(
	AuditEvenement_PK int NOT NULL IDENTITY(1, 1),
	AuditFlux_FK int NOT NULL,
	Evenement varchar(50) NULL,
	EvenementType varchar(50) NULL,
	TacheConcerne varchar(50) NULL,
	ChampConcerne varchar(50) NULL,
	ValeurEnErreur varchar(50) NULL,
	CodeErreur varchar(100) NULL,
	ErreurTechnique char(1) NOT NULL,
	Avertissement char(1) NULL,
	FluxAReprendre char(1) NOT NULL,
	NbLignesComptabilisees int NULL
	)  ON [PRIMARY]
GO

ALTER TABLE dbo.AuditEvenement ADD CONSTRAINT
	PK_dbo_AuditEvenement PRIMARY KEY CLUSTERED 
	(
	AuditEvenement_PK
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

ALTER TABLE [dbo].[AuditEvenement] WITH NOCHECK ADD  CONSTRAINT [FK_AuditEvenement_AuditFlux] FOREIGN KEY([AuditFlux_FK])
REFERENCES [dbo].[AuditFlux] ([AuditFlux_PK])
GO

ALTER TABLE [dbo].[AuditEvenement] CHECK CONSTRAINT [FK_AuditEvenement_AuditFlux]
GO

ALTER TABLE dbo.AuditEvenement SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
