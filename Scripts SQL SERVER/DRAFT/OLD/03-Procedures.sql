
USE [$(v_BaseDeDonnees)]
GO


-------------------------------------------------------------------------------
PRINT 'Debut PROCEDURE'
GO
-------------------------------------------------------------------------------

/****** Object:  StoredProcedure [dwh].[PS_Alim_DWH_M_Contran_DIM_Controle_Assuj]    Script Date: 12/10/2016 16:02:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dwh].[PS_Alim_DWH_M_Contran_DIM_Controle_Assuj]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dwh].[PS_Alim_DWH_M_Contran_DIM_Controle_Assuj]
GO
/****** Object:  StoredProcedure [dwh].[PS_Alim_DWH_M_Contran_DIM_Controle_Assuj]    Script Date: 12/10/2016 16:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dwh].[PS_Alim_DWH_M_Contran_DIM_Controle_Assuj]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/****************************************************************************
*****************************************************************************
* Copyright(c)BANQUE DE FRANCE
*****************************************************************************
*****************************************************************************
* Objet : [dwh].[PS_Alim_DWH_M_Contran_DIM_Tableau]
*****************************************************************************
*
* Description : Traitement d''alimentation des tableaux dans l''environnement DWH
*****************************************************************************
* Redacteur			: HAMEL DJAMEL
* Date de creation	: 16/06/2016
*****************************************************************************
* Modifications :
*----------------------------------------------------------------------------
* date | version | auteur | description
*----------------------------------------------------------------------------
* 2016-06-16 | V0.1 | HAMEL Djamel | Création
* 2016-10-04 | V0.1 | ez-zghari dounia | Modif jira 1010 pour les messages en double 
* 2016-10-07 | V0.1 | ez-zghari dounia | Modif jira 1011
* 2016-10-10 | V0.1 | ez-zghari dounia | Modif jira 1011 message erroné sur un guichet attendu
* 2016-10-11 | V0.1 | DIBASSI MOHAMED  | GESTION TABLE TEMPOREL
* 2016-10-11 | V0.1 | ez-zghari dounia |MESSAGE CA00010 
*****************************************************************************
****************************************************************************/

 
 
CREATE  PROCEDURE [dwh].[PS_Alim_DWH_M_Contran_DIM_Controle_Assuj] (@p_FichierId UNIQUEIDENTIFIER) 
AS
BEGIN

	BEGIN TRY
		
		SET NOCOUNT ON;
		
		
		IF OBJECT_ID(''Tempdb..#TMP_DWH_TAB_0'') IS NOT NULL
			DROP TABLE #TMP_DWH_TAB_0
	
		IF OBJECT_ID(''Tempdb..#TMP_DWH_TAB'') IS NOT NULL
			DROP TABLE #TMP_DWH_TAB

       	IF OBJECT_ID(''Tempdb..#RG_MCO_AS_04'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_04

		IF OBJECT_ID(''Tempdb..#RG_MCO_AS_05'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_05

		IF OBJECT_ID(''Tempdb..#RG_MCO_AS_06'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_06
       
	    IF OBJECT_ID(''Tempdb..#RG_MCO_AS_07'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_07

		IF OBJECT_ID(''Tempdb..#RG_MCO_AS_08'') IS NOT NULL
		DROP TABLE #RG_MCO_AS_08

		IF OBJECT_ID(''Tempdb..#TABLE'') IS NOT NULL
		DROP TABLE #TABLE
		

			
		DECLARE  @v_TraitementId		UNIQUEIDENTIFIER	= NEWID()
		
				,@v_NomTraitement		NVARCHAR(255)		= ''PS_Alim_DWH_M_Contran_DIM_Controle_Assuj''
		DECLARE	 @v_Trace				BIT					= ( SELECT 
																	CASE WHEN COUNT(1)>=1 THEN 1 ELSE 0 END 
																FROM 
																	[audit].[t_SsisConfigration_SCO]
																WHERE
																		[SCO_NomPackage]		= @v_NomTraitement
																AND		[SCO_CheminPropriete]	= ''Trace''
																AND		[SCO_Valeur]			= ''True'' )
																
		
		
	/* Debut Log En cours.. */
		IF(@v_Trace=1)
			INSERT INTO [audit].[t_LogTraitement_LTR]
					([LTR_TraitementId],[LTR_FichierId],[LTR_NomTraitement],[LTR_DateDebut],[LTR_Statut],[LTR_Utilisateur])
			VALUES
					(@v_traitementid,@p_FichierId,@v_NomTraitement,GETDATE(),''En cours'', SUSER_NAME())

	DECLARE @V_SourceId Int =   (SELECT 
										SRC_Id 
								  FROM dmt.t_DIM_Source_SRC 
								  WHERE SRC_Nom = ''MCO'') 
/*BEGIN TRAN*/	
	 
		



	/* Alimentation de la table temporaire */


	/* GLOBAL */ 
	--- RG_MCO_AS_02
		SELECT DISTINCT
				tab.*, 
				EOMONTH(TRY_CONVERT(DATE,Concat(right(ECH_Code_bk,4),left(ECH_Code_bk,2)+''01'')))  AS ECHEANCE
			  	,CASE 
				 WHEN 
				 (
				EOMONTH(TRY_CONVERT(DATE,Concat(right(ECH_Code_bk,4),left(ECH_Code_bk,2)+''01''))) > = ETA.ETA_DateDebutAutorisation --- RG_MCO_AS_02
				AND ISNULL(ETA.ETA_DateFinAutorisation, ''99991231'') >= EOMONTH(TRY_CONVERT(DATE,Concat(right(ECH_Code_bk,4),left(ECH_Code_bk,2)+''01''))))
				THEN ''A'' 
				ELSE 
				''D''
				END AS RG,
				CONVERT(nvarchar(50), '''')  AS CODE_MSG
				,CONVERT(nvarchar(255), '''') AS LibelleMSG
				,CONVERT(datetime, NULL) AS Date_MSG
				,ROW_NUMBER() OVER(PARTITION BY ETA_CIB_bk ORDER BY ETA_DateDebutAutorisation DESC) AS RowNumber
		INTO #TMP_DWH_TAB_0
		FROM    (SELECT * FROM dmt.t_DIM_Tableau_TAB UNION ALL SELECT * FROM dwh.t_DIM_Tableau_TAB) tab --1011 et 1009
		INNER JOIN 	[dmt].[t_DIM_Remise_REM] rem 	ON REM.REM_FichierId = @p_FichierId
		LEFT JOIN dmt.t_DIM_Etablissement_ETA ETA ON tab.TAB_CIB_bk = ETA.ETA_CIB_bk
		LEFT JOIN 	[dmt].t_DIM_Echeance_ECH dmt_ech ON dmt_ech.ECH_Id			= tab.ECH_Id
		WHERE
				tab.TAB_FichierId = @p_FichierId
				--AND (
				--EOMONTH(TRY_CONVERT(DATE,Concat(right(ECH_Code_bk,4),left(ECH_Code_bk,2)+''01''))) > = ETA.ETA_DateDebutAutorisation
				--AND ETA.ETA_DateFinAutorisation >= EOMONTH(TRY_CONVERT(DATE,Concat(right(ECH_Code_bk,4),left(ECH_Code_bk,2)+''01''))))


		SELECT * 
		INTO #TMP_DWH_TAB
		FROM #TMP_DWH_TAB_0
		WHERE RowNumber = 1



     -- RG_MCO_AS_03

    DECLARE @tab INT = (SELECT COUNT(*) from #TMP_DWH_TAB)
	DECLARE @RG VARCHAR(1) = (SELECT TOP 1 RG FROM #TMP_DWH_TAB WHERE RG= ''D'')
	IF ISNULL(@tab, 0) <> 0 AND @RG = ''D''
	BEGIN
       UPDATE  #TMP_DWH_TAB
	   SET CODE_MSG = ''CA00010'' 
	   , LibelleMSG = ''Etablissment ou guichet non attendu''
	   ,Date_MSG  = GETDATE()
	   

		UPDATE dmt.t_DIM_Remise_REM
		SET REM_Statut = ''INF_AS''  
		WHERE REM_FichierId = @p_FichierId
	END 
	ELSE 
	BEGIN 
	 --- RG_MCO_AS_04
		SELECT   tab.*, RSMF.*
		INTO #RG_MCO_AS_04
		FROM #TMP_DWH_TAB tab
		INNER JOIN  dmt.t_RSMF_Guichet RSMF on TAB.TAB_CIB_bk =RSMF.CIB AND (RSMF.Regroupementderemise = ''Rem_Exhau'' or  RSMF.Regroupementderemise =''Rem_Gui'') 
		WHERE  RSMF.DateDebutregroupementderemise <= tab.ECHEANCE AND ISNULL(RSMF.DateFinRegroupementderemise, ''99991231'')>=tab.ECHEANCE					
		 AND   RG=''A''
	END
		
	
DECLARE @NB_Lignes04 INT
IF OBJECT_ID(''Tempdb..#RG_MCO_AS_04'') IS NOT NULL
BEGIN

	SET @NB_Lignes04 = (SELECT COUNT(*) FROM #RG_MCO_AS_04)
END
ELSE SET @NB_Lignes04 = 0


--DECLARE @NB_Lignes04  INT = (select CASE  WHEN OBJECT_ID(''Tempdb..#RG_MCO_AS_04'') IS NOT NULL 
--							THEN  (SELECT COUNT(*) FROM #RG_MCO_AS_04)
--							ELSE  0
--							END	)

--(SELECT COUNT(*) FROM #RG_MCO_AS_04)


 -- RG_MCO_AS_05
		SELECT   *
		INTO #RG_MCO_AS_05
		FROM #TMP_DWH_TAB tab
		WHERE NOT EXISTS ( SELECT * FROM dmt.t_RSMF_Guichet RSMF
									WHERE TAB.TAB_CIB_bk =RSMF.CIB-- AND (RSMF.Regroupementderemise = ''Rem_Exhau'' OR RSMF.Regroupementderemise = ''Rem_Gui'') 
									AND (RSMF.DateDebutregroupementderemise <= tab.ECHEANCE AND ISNULL(RSMF.DateFinRegroupementderemise, ''99991231'')>=tab.ECHEANCE)
									)
		AND    RG=''A''  -----> VERS RG_MCO_AS_09.

	---TABLE DE LA REMISE 
	SELECT  fait.Code_Guichet, TAB_DateRemise AS Date_MSG,  fait.TAB_Id, rem.REM_Id, TAB_CIB_bk, TAB_Code_bk, rem.ECH_Id, rem.TAB_FichierId
	INTO #TABLE
	FROM dmt.t_FCT_M_Contran fait
		INNER JOIN  (SELECT * FROM dmt.t_DIM_Tableau_TAB UNION ALL SELECT * FROM dwh.t_DIM_Tableau_TAB) rem on fait.TAB_ID = rem.TAB_Id
	WHERE fait.Fichier_Id =  @p_FichierId

	UPDATE #RG_MCO_AS_05 
	SET CODE_MSG =  ''CA00010''
	, LibelleMSG = ''Etablissement ou guichet non attendu'' 
	, Date_MSG = #RG_MCO_AS_05.TAB_DateRemise
	
	DECLARE @RG05 INT = (SELECT COUNT(*) from #RG_MCO_AS_05)
	IF ISNULL(@RG05, 0) <> 0
	BEGIN
	 
		UPDATE dmt.t_DIM_Remise_REM
		SET REM_Statut = ''INF_AS''  
		WHERE REM_FichierId = @p_FichierId
	END
	--vérifier S''il ya un cib actif 
	ELSE IF ( ISNULL(@NB_Lignes04,0) <> 0 ) -- RG_MCO_AS_06 
	BEGIN
								--SELECT DISTINCT RG04.Codeguichet , ''CA00020'' AS CODE_MSG, ''Guichet manquant'' AS Libelle_MSG, TAB.TAB_DateRemise AS Date_MSG,   RG04.TAB_Id, TAB.REM_Id, tab.TAB_CIB_bk, tab.TAB_Code_bk, TAB.ECH_Id, TAB.TAB_FichierId
				SELECT DISTINCT RG04.Codeguichet , RG04.TAB_DateRemise AS Date_MSG,   RG04.TAB_Id, RG04.REM_Id, RG04.TAB_CIB_bk, RG04.TAB_Code_bk, RG04.ECH_Id, RG04.TAB_FichierId,RG04.Regroupementderemise
				INTO #RG_MCO_AS_06
				FROM #RG_MCO_AS_04 RG04
				WHERE Regroupementderemise = ''Rem_Exhau'' 


			UNION ALL

				-- Code guichet absent dans la remise where Rem_Gui	
				SELECT DISTINCT  RG04.Codeguichet , RG04.TAB_DateRemise AS Date_MSG, RG04.TAB_Id, RG04.REM_Id, RG04.TAB_CIB_bk, RG04.TAB_Code_bk, RG04.ECH_Id,RG04.TAB_FichierId,RG04.Regroupementderemise
				FROM #RG_MCO_AS_04 RG04
				WHERE RG04.Regroupementderemise = ''Rem_Gui'' and RG04.RegroupementECGGUI=''ECGGUI''
				AND (RG04.DateDebutECGGUI <= RG04.ECHEANCE AND ISNULL(RG04.DateFinECGGUI, ''99991231'')>=RG04.ECHEANCE) AND RG04.CIB = RG04.TAB_CIB_bk
	END


	


	--DECLARE @NB_LIGNES06 INT = (SELECT COUNT(*) FROM #RG_MCO_AS_06 ) 

DECLARE @NB_LIGNES06 INT
IF OBJECT_ID(''Tempdb..#RG_MCO_AS_06'') IS NOT NULL
BEGIN
	SET @NB_LIGNES06 = (SELECT COUNT(*) FROM #RG_MCO_AS_06)
END
ELSE SET @NB_LIGNES06 = 0

	IF ISNULL(@NB_LIGNES06, 0) <> 0
		BEGIN
			SELECT DISTINCT RG06.Codeguichet , ''CA00020'' AS CODE_MSG, ''Guichet manquant'' AS Libelle_MSG , Date_MSG, RG06.TAB_Id, RG06.REM_Id, TAB_CIB_bk, RG06.TAB_Code_bk, RG06.ECH_Id, RG06.TAB_FichierId
			INTO #RG_MCO_AS_07
			FROM #RG_MCO_AS_06 RG06
			WHERE (RG06.Regroupementderemise = ''Rem_Exhau'' OR  RG06.Regroupementderemise = ''Rem_Gui'' )
			AND NOT EXISTS  ( 
								SELECT * FROM  #TABLE fait WHERE RG06.Codeguichet =fait.Code_Guichet and RG06.TAB_CIB_bk = fait.TAB_CIB_bk and fait.TAB_FichierId =  @p_FichierId
							)
	
		 
		-- Les codes guichet absent dans la table guichet where Rem_Exhau /RG_MCO_AS_08
			SELECT DISTINCT  fait.Code_Guichet, ''CA00010'' AS CODE_MSG, ''Etablissement ou guichet non attendu'' AS LibelleMSG, FAIT.Date_MSG,  fait.TAB_Id, FAIT.REM_Id, TAB_CIB_bk, TAB_Code_bk, FAIT.ECH_Id, FAIT.TAB_FichierId
			INTO #RG_MCO_AS_08
			FROM #TABLE FAIT
			WHERE NOT EXISTS (
								SELECT * FROM   #RG_MCO_AS_06 RG06
								WHERE RG06.Codeguichet = fait.Code_Guichet 
								AND RG06.TAB_CIB_bk =fait.TAB_CIB_bk AND (RG06.Regroupementderemise = ''Rem_Exhau'' OR  RG06.Regroupementderemise = ''Rem_Gui'')
							)
			
		END	


DECLARE @NB_NA INT
IF OBJECT_ID(''Tempdb..#TMP_DWH_TAB'') IS NOT NULL
BEGIN
	SET @NB_NA = (SELECT COUNT(*) FROM #TMP_DWH_TAB)

   INSERT INTO [dmt].[t_DIM_Message_M_Contran_MES]
			   ([MES_Code_bk]
			   ,MES_Libelle 
			   ,[MES_DateCreation]
			   ,[MES_Type]
			   ,[REM_Id]
			   ,[TAB_Id]
			   ,[FAI_Id]
			   ,[SRC_Id]
			   ,[ANO_Id])
		SELECT DISTINCT
			    tmp.CODE_MSG
			   ,ano.ANO_Libelle 
			   ,GETDATE()
			   ,ano.ANO_Type
			   ,tmp.REM_Id
			   ,tmp.TAB_Id
			   ,null
			   ,@V_SourceId 
			   ,ano.ANO_Id 
			FROM
				#TMP_DWH_TAB tmp
				LEFT JOIN (SELECT * FROM dmt.t_DIM_Tableau_TAB UNION ALL SELECT * FROM dwh.t_DIM_Tableau_TAB) dmt_tab ON dmt_tab.TAB_DerniereVersion = 1
				AND	dmt_tab.TAB_Code_bk	 = tmp.TAB_Code_bk
				AND	dmt_tab.TAB_CIB_bk = tmp.TAB_CIB_bk
				AND	dmt_tab.ECH_Id = tmp.ECH_Id
				AND dmt_tab.TAB_Id = tmp.TAB_Id
			INNER JOIN
				[dmt].[t_DIM_Remise_REM] dmt_rem
					ON	dmt_rem.REM_FichierId				= tmp.TAB_FichierId
			INNER JOIN dmt.t_REF_Anomalie_ANO  ano on tmp.CODE_MSG = ano.ANO_Code
			 WHERE  tmp.RG = ''D'' AND  LTRIM(RTRIM(ISNULL(tmp.CODE_MSG,''''))) <> '''' 

END
ELSE SET @NB_NA = 0


DECLARE @NB_05 INT
IF OBJECT_ID(''Tempdb..#RG_MCO_AS_05'') IS NOT NULL
BEGIN
	SET @NB_05 = (SELECT COUNT(*) FROM #RG_MCO_AS_05)

	 INSERT INTO [dmt].[t_DIM_Message_M_Contran_MES]
			   ([MES_Code_bk]
			   ,MES_Libelle 
			   ,[MES_DateCreation]
			   ,[MES_Type]
			   ,[REM_Id]
			   ,[TAB_Id]
			   ,[FAI_Id]
			   ,[SRC_Id]
			   ,[ANO_Id])
			SELECT
			  tmp.CODE_MSG
			 ,ano.ANO_Libelle 
			 ,tmp.Date_MSG
				    ,ano.ANO_Type
			   ,tmp.REM_Id
			   ,tmp.TAB_Id
			   ,null
			   ,@V_SourceId 
			   ,ano.ANO_Id 
			FROM
				#RG_MCO_AS_05 tmp
				LEFT JOIN [dmt].t_DIM_Tableau_TAB dmt_tab ON dmt_tab.TAB_DerniereVersion = 1
				AND	dmt_tab.TAB_Code_bk	 = tmp.TAB_Code_bk
				AND	dmt_tab.TAB_CIB_bk = tmp.TAB_CIB_bk
				AND	dmt_tab.ECH_Id = tmp.ECH_Id
				AND dmt_tab.TAB_Id = tmp.TAB_Id
			INNER JOIN 	[dmt].[t_DIM_Remise_REM] dmt_rem  ON	dmt_rem.REM_FichierId= tmp.TAB_FichierId
			INNER JOIN dmt.t_REF_Anomalie_ANO  ano on tmp.CODE_MSG = ano.ANO_Code
			 WHERE LTRIM(RTRIM(ISNULL(tmp.CODE_MSG,''''))) <> '''' 
END
ELSE SET @NB_05 = 0


DECLARE @NB_07 INT
IF OBJECT_ID(''Tempdb..#RG_MCO_AS_07'') IS NOT NULL
BEGIN
	SET @NB_07 = (SELECT COUNT(*) FROM #RG_MCO_AS_07)

				  INSERT INTO [dmt].[t_DIM_Message_M_Contran_MES]
			   ([MES_Code_bk]
			   ,MES_Libelle 
			   ,[MES_DateCreation]
			   ,[MES_Type]
			   ,[REM_Id]
			   ,[TAB_Id]
			   ,[FAI_Id]
			   ,[SRC_Id]
			   ,[ANO_Id])
			SELECT
			  tmp.CODE_MSG
					 ,ano.ANO_Libelle +'' (''+tmp.Codeguichet+'')''
				   ,tmp.Date_MSG
				    ,ano.ANO_Type
			   ,tmp.REM_Id
			   ,tmp.TAB_Id
			   ,null
			   ,@V_SourceId 
			   ,ano.ANO_Id 
			FROM
				#RG_MCO_AS_07 tmp
				LEFT JOIN (SELECT * FROM dmt.t_DIM_Tableau_TAB UNION ALL SELECT * FROM dwh.t_DIM_Tableau_TAB) dmt_tab ON dmt_tab.TAB_DerniereVersion = 1
				AND	dmt_tab.TAB_Code_bk	 = tmp.TAB_Code_bk
				AND	dmt_tab.TAB_CIB_bk = tmp.TAB_CIB_bk
				AND	dmt_tab.ECH_Id = tmp.ECH_Id
				AND dmt_tab.TAB_Id = tmp.TAB_Id
			INNER JOIN 	[dmt].[t_DIM_Remise_REM] dmt_rem  ON	dmt_rem.REM_FichierId= tmp.TAB_FichierId
			INNER JOIN dmt.t_REF_Anomalie_ANO  ano on tmp.CODE_MSG = ano.ANO_Code
			 WHERE LTRIM(RTRIM(ISNULL(tmp.CODE_MSG,''''))) <> '''' 
END
ELSE SET @NB_07 = 0


DECLARE @NB_08 INT
IF OBJECT_ID(''Tempdb..#RG_MCO_AS_08'') IS NOT NULL
BEGIN
	SET @NB_08 = (SELECT COUNT(*) FROM #RG_MCO_AS_08)

					  INSERT INTO [dmt].[t_DIM_Message_M_Contran_MES]
			   ([MES_Code_bk]
			   ,MES_Libelle 
			   ,[MES_DateCreation]
			   ,[MES_Type]
			   ,[REM_Id]
			   ,[TAB_Id]
			   ,[FAI_Id]
			   ,[SRC_Id]
			   ,[ANO_Id])
			SELECT
			  tmp.CODE_MSG
					 ,ano.ANO_Libelle +'' (''+tmp.Code_Guichet+'')''
				   ,tmp.Date_MSG
				    ,ano.ANO_Type
			   ,tmp.REM_Id
			   ,tmp.TAB_Id
			   ,null
			   ,@V_SourceId 
			   ,ano.ANO_Id 
			FROM
				#RG_MCO_AS_08 tmp
				LEFT JOIN (SELECT * FROM dmt.t_DIM_Tableau_TAB UNION ALL SELECT * FROM dwh.t_DIM_Tableau_TAB) dmt_tab ON dmt_tab.TAB_DerniereVersion = 1
				AND	dmt_tab.TAB_Code_bk	 = tmp.TAB_Code_bk
				AND	dmt_tab.TAB_CIB_bk = tmp.TAB_CIB_bk
				AND	dmt_tab.ECH_Id = tmp.ECH_Id
				AND dmt_tab.TAB_Id = tmp.TAB_Id
			INNER JOIN 	[dmt].[t_DIM_Remise_REM] dmt_rem  ON	dmt_rem.REM_FichierId= tmp.TAB_FichierId
			INNER JOIN dmt.t_REF_Anomalie_ANO  ano on tmp.CODE_MSG = ano.ANO_Code
			 WHERE LTRIM(RTRIM(ISNULL(tmp.CODE_MSG,''''))) <> '''' 
END
ELSE SET @NB_08 = 0


	----DECLARE @NB_NA INT = (SELECT COUNT(*) FROM #TMP_DWH_TAB WHERE CODE_MSG = ''D'')
		
	----DECLARE @NB_05 INT = (SELECT COUNT(*) FROM #RG_MCO_AS_05 WHERE CODE_MSG <> '''')

	----DECLARE @NB_07 INT = (SELECT COUNT(*) FROM #RG_MCO_AS_07 WHERE CODE_MSG <> '''')

	----DECLARE @NB_08 INT = (SELECT COUNT(*) FROM #RG_MCO_AS_08 WHERE CODE_MSG <> '''')




	IF ISNULL(@NB_NA, 0) <> 0 OR  ISNULL(@NB_05, 0) <> 0 OR ISNULL(@NB_07, 0) <> 0 OR ISNULL(@NB_08,0)<> 0
	BEGIN 
	UPDATE dmt.t_DIM_Remise_REM
		SET REM_Statut = ''INF_AS''  
		WHERE REM_FichierId = @p_FichierId
	END 
		



		
		IF OBJECT_ID(''Tempdb..#TMP_DWH_TAB'') IS NOT NULL
		DROP TABLE #TMP_DWH_TAB

       	IF OBJECT_ID(''Tempdb..#RG_MCO_AS_04'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_04

		IF OBJECT_ID(''Tempdb..#RG_MCO_AS_05'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_05

		IF OBJECT_ID(''Tempdb..#RG_MCO_AS_06'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_06
       
	    IF OBJECT_ID(''Tempdb..#RG_MCO_AS_07'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_07

		IF OBJECT_ID(''Tempdb..#RG_MCO_AS_08'') IS NOT NULL
		DROP TABLE #RG_MCO_AS_08

		IF OBJECT_ID(''Tempdb..#TABLE'') IS NOT NULL
		DROP TABLE #TABLE
		
		
		/*COMMIT TRAN*/
		
		/* Trace OK */
		IF(@v_Trace=1)
			UPDATE [audit].[t_LogTraitement_LTR]
				SET
					 [LTR_Statut]		= ''OK''
					,[LTR_DateFin]		= GETDATE()
			WHERE
					[LTR_TraitementId]	= @v_TraitementId
		
		RETURN(1)
			
	END TRY	
	BEGIN CATCH
		
		IF OBJECT_ID(''Tempdb..#TMP_DWH_TAB'') IS NOT NULL
		DROP TABLE #TMP_DWH_TAB

       	IF OBJECT_ID(''Tempdb..#RG_MCO_AS_04'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_04

		IF OBJECT_ID(''Tempdb..#RG_MCO_AS_05'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_05

		IF OBJECT_ID(''Tempdb..#RG_MCO_AS_06'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_06
       
	    IF OBJECT_ID(''Tempdb..#RG_MCO_AS_07'') IS NOT NULL
			DROP TABLE #RG_MCO_AS_07

		IF OBJECT_ID(''Tempdb..#RG_MCO_AS_08'') IS NOT NULL
		DROP TABLE #RG_MCO_AS_08

		IF OBJECT_ID(''Tempdb..#TABLE'') IS NOT NULL
		DROP TABLE #TABLE
		
		
		/*ROLLBACK TRAN*/
		
		/* Trace KO */
		IF(@v_Trace=1)
			UPDATE [audit].[t_LogTraitement_LTR]
				SET
					 [LTR_Statut]			= ''KO''
					,[LTR_MessageErreur] 	= ERROR_MESSAGE()	
					,[LTR_DateFin]			= GETDATE()
			WHERE
					[LTR_TraitementId] = @v_TraitementId
		
		
		DECLARE @ErrorMessage NVARCHAR(4000)
		DECLARE @ErrorSeverity INT
		DECLARE @ErrorState INT
		
		SET @ErrorMessage = ERROR_MESSAGE()
		SET @ErrorSeverity = ERROR_SEVERITY()
		SET @ErrorState = ERROR_STATE()
		RAISERROR (@ErrorMessage,@ErrorSeverity,@ErrorState)
		
		RETURN(0)

	END CATCH
	
END

' 
END
GO




-------------------------------------------------------------------------------
PRINT 'Fin PROCEDURE'
GO
-------------------------------------------------------------------------------
