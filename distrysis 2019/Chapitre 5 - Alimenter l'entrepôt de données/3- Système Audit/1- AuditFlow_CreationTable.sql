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
CREATE TABLE dbo.AuditFlux
	(
	AuditFlux_PK int NOT NULL IDENTITY(1, 1),
	AuditTraitement_FK int NOT NULL,
	NomFlux varchar(50) NOT NULL,
	DateDebutFlux1ereExecution smalldatetime NOT NULL,
	DateFinFlux1ereExecution smalldatetime NULL,
	DateDebutFluxDerniereExecution smalldatetime NOT NULL,
	DateFinFluxDerniereExecution smalldatetime NULL,
	DateDebutPlageDonnees smalldatetime NOT NULL,
	DateFinPlageDonnees smalldatetime NOT NULL,
	NbErreurTechnique int NULL,
	NbAvertissement int NULL,
	FluxTermineAvecSucces char(1) NULL,
	FluxAReprendre char(1) NOT NULL,
	NbExecution int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.AuditFlux ADD CONSTRAINT
	PK_dbo_AuditFlux PRIMARY KEY CLUSTERED 
	(
	AuditFlux_PK
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.AuditFlux SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
