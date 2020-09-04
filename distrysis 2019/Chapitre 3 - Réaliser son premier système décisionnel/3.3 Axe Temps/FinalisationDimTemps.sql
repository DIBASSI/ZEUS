
--USE [DistrisysDW]

---- Suppression de la clé primaire
--ALTER TABLE [dbo].[DimTemps] DROP CONSTRAINT [PK_DimTemps]
--GO

-- Renommage des colonnes
EXEC sp_rename N'[dbo].[DimTemps].[PK_Date]', N'Date', 'COLUMN'
GO
EXEC sp_rename N'[dbo].[DimTemps].[Date_Name]', N'Jour', 'COLUMN'
GO
EXEC sp_rename N'[dbo].[DimTemps].[Année]', N'AnneeDate', 'COLUMN'
GO
EXEC sp_rename N'[dbo].[DimTemps].[Année_Name]', N'AnneeNom', 'COLUMN'
GO
EXEC sp_rename N'[dbo].[DimTemps].[Semestre]', N'SemestreDate', 'COLUMN'
GO
EXEC sp_rename N'[dbo].[DimTemps].[Semestre_Name]', N'SemestreNom', 'COLUMN'
GO
EXEC sp_rename N'[dbo].[DimTemps].[Trimestre]', N'TrimestreDate', 'COLUMN'
GO
EXEC sp_rename N'[dbo].[DimTemps].[Trimestre_Name]', N'TrimestreNom', 'COLUMN'
GO
EXEC sp_rename N'[dbo].[DimTemps].[Mois]', N'MoisDate', 'COLUMN'
GO
EXEC sp_rename N'[dbo].[DimTemps].[Mois_Name]', N'MoisNom', 'COLUMN'
GO
EXEC sp_rename N'[dbo].[DimTemps].[Semaine]', N'SemaineDate', 'COLUMN'
GO
EXEC sp_rename N'[dbo].[DimTemps].[Semaine_Name]', N'SemaineNom', 'COLUMN'
GO

-- Modification des types de données DateTime en SmallDateTime
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [Date] [smalldatetime] NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [AnneeDate] [smalldatetime] NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [SemestreDate] [smalldatetime] NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [TrimestreDate] [smalldatetime] NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [MoisDate] [smalldatetime] NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [SemaineDate] [smalldatetime] NOT NULL
GO

-- Modification des types de données nvarchar en varchar
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [Jour] [varchar] (50) COLLATE French_CI_AS NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [AnneeNom] [varchar] (50) COLLATE French_CI_AS NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [SemestreNom] [varchar] (50) COLLATE French_CI_AS NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [TrimestreNom] [varchar] (50) COLLATE French_CI_AS NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [MoisNom] [varchar] (50) COLLATE French_CI_AS NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [SemaineNom] [varchar] (50) COLLATE French_CI_AS NULL
GO

-- Création des colonnes de type _Code
ALTER TABLE [dbo].[DimTemps] ADD [Temps_PK] [int] NULL
ALTER TABLE [dbo].[DimTemps] ADD [AnneeCode] [int] NULL
ALTER TABLE [dbo].[DimTemps] ADD [SemestreCode] [int] NULL
ALTER TABLE [dbo].[DimTemps] ADD [TrimestreCode] [int] NULL
ALTER TABLE [dbo].[DimTemps] ADD [MoisCode] [int] NULL
ALTER TABLE [dbo].[DimTemps] ADD [SemaineCode] [int] NULL
GO

-- Remplir Temps_PK
UPDATE [dbo].[DimTemps]
   SET [Temps_PK] = 
   (
   CAST(YEAR([Date]) AS varchar(50))
   +
   (
	CASE WHEN MONTH([Date])<10 
		THEN '0' + CAST(MONTH([Date]) AS varchar(50))
		ELSE CAST(MONTH([Date]) AS varchar(50))
	END
	)
	+
	CASE WHEN DAY([Date])<10 
		THEN '0' + CAST(DAY([Date]) AS varchar(50))
		ELSE CAST(DAY([Date]) AS varchar(50))
	END
	)

-- Remplir AnneeCode
UPDATE [dbo].[DimTemps]
   SET [AnneeCode] = 
   (
   CAST(YEAR([AnneeDate]) AS varchar(50))
   +
   (
	CASE WHEN MONTH([AnneeDate])<10 
		THEN '0' + CAST(MONTH([AnneeDate]) AS varchar(50))
		ELSE CAST(MONTH([AnneeDate]) AS varchar(50))
	END
	)
	+
	CASE WHEN DAY([AnneeDate])<10 
		THEN '0' + CAST(DAY([AnneeDate]) AS varchar(50))
		ELSE CAST(DAY([AnneeDate]) AS varchar(50))
	END
	)
	
-- Remplir SemestreCode

UPDATE [dbo].[DimTemps]
   SET [SemestreCode] = 
   (
   CAST(YEAR([SemestreDate]) AS varchar(50))
   +
   (
	CASE WHEN MONTH([SemestreDate])<10 
		THEN '0' + CAST(MONTH([SemestreDate]) AS varchar(50))
		ELSE CAST(MONTH([SemestreDate]) AS varchar(50))
	END
	)
	+
	CASE WHEN DAY([SemestreDate])<10 
		THEN '0' + CAST(DAY([SemestreDate]) AS varchar(50))
		ELSE CAST(DAY([SemestreDate]) AS varchar(50))
	END
	)

-- Remplir TrimestreCode

UPDATE [dbo].[DimTemps]
   SET [TrimestreCode] = 
   (
   CAST(YEAR([TrimestreDate]) AS varchar(50))
   +
   (
	CASE WHEN MONTH([TrimestreDate])<10 
		THEN '0' + CAST(MONTH([TrimestreDate]) AS varchar(50))
		ELSE CAST(MONTH([TrimestreDate]) AS varchar(50))
	END
	)
	+
	CASE WHEN DAY([TrimestreDate])<10 
		THEN '0' + CAST(DAY([TrimestreDate]) AS varchar(50))
		ELSE CAST(DAY([TrimestreDate]) AS varchar(50))
	END
	)

-- Remplir MoisCode
UPDATE [dbo].[DimTemps]
   SET [MoisCode] = 
   (
   CAST(YEAR([MoisDate]) AS varchar(50))
   +
   (
	CASE WHEN MONTH([MoisDate])<10 
		THEN '0' + CAST(MONTH([MoisDate]) AS varchar(50))
		ELSE CAST(MONTH([MoisDate]) AS varchar(50))
	END
	)
	+
	CASE WHEN DAY([MoisDate])<10 
		THEN '0' + CAST(DAY([MoisDate]) AS varchar(50))
		ELSE CAST(DAY([MoisDate]) AS varchar(50))
	END
	)
	
-- Remplir SemaineCode
UPDATE [dbo].[DimTemps]
   SET [SemaineCode] = 
   (
   CAST(YEAR([SemaineDate]) AS varchar(50))
   +
   (
	CASE WHEN MONTH([SemaineDate])<10 
		THEN '0' + CAST(MONTH([SemaineDate]) AS varchar(50))
		ELSE CAST(MONTH([SemaineDate]) AS varchar(50))
	END
	)
	+
	CASE WHEN DAY([SemaineDate])<10 
		THEN '0' + CAST(DAY([SemaineDate]) AS varchar(50))
		ELSE CAST(DAY([SemaineDate]) AS varchar(50))
	END
	)	

-- modifier les colonnes pour interdire la valeur null
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [Temps_PK] [int] NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [Jour] [varchar] (50) COLLATE French_CI_AS NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [AnneeCode] [int] NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [AnneeNom] [varchar] (50) COLLATE French_CI_AS NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [SemestreCode] [int] NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [SemestreNom] [varchar] (50) COLLATE French_CI_AS NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [TrimestreCode] [int] NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [TrimestreNom] [varchar] (50) COLLATE French_CI_AS NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [MoisCode] [int] NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [MoisNom] [varchar] (50) COLLATE French_CI_AS NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [SemaineCode] [int] NOT NULL
ALTER TABLE [dbo].[DimTemps] ALTER COLUMN [SemaineNom] [varchar] (50) COLLATE French_CI_AS NOT NULL
GO

-- Positionner la cle primaire sur Temps_PK
ALTER TABLE [dbo].[DimTemps] ADD CONSTRAINT [PK_DimTemps] PRIMARY KEY CLUSTERED  ([Temps_PK])
GO

-- SQL Server 2019 CTP3 nécessite de la francisation
UPDATE [dbo].[DimTemps]
   SET [AnneeNom] = REPLACE([AnneeNom], 'Calendar','Année')
      ,[SemestreNom] = REPLACE([SemestreNom], 'Semester ', 'S')
      ,[TrimestreNom] = REPLACE([TrimestreNom], 'Quarter ', 'T')
      ,[SemaineNom] = REPLACE([SemaineNom], 'Week', 'Semaine')
GO