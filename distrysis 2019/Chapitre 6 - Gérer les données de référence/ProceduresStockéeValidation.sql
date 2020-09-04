

USE [MasterData]
GO
 

CREATE Procedure [dbo].[sp_TraitementTablesIntermediairesEtCopie]
as

BEGIN
--*****************************************************************************************************
-- Cette procédure permet de traiter les lots des tables intédiaires
--		Elle charge les données dans les entités puis lance le processus de validation
--		Elle analyse les modifications apportées et liste les eventuelles erreures rencontrées.
--		Après avoir traité une entité, elle alimente les tables intermédiares des entités fantomes si elles existent (nom identique + "-copie")
--
--		Pour chaque modèle de la base, on parcours la liste des entités
--		Pour chaque entité, sil il ya des données dans les tables intermédiaires, 
--			On execute la procédure de l'entité qui traite la table intermédiaire
--			On analyse ensuite le résultat de cette opération pour lister
--					Le nombre de nouveaux membres (ImportType=1)
--					Le nombre de membres modifiés (ImportType=0,2)
--					Le nombre de suppressions (ImportType>2)
--					Les eventuelles erreurs (ImportStatus_Id=2)
--			Ensuite, on lance la procédure de validation pour cette entité
--					On analyse la table tblValidationLog pour lister les éventuelles erreurs de Validation
--
--	   En fin de traitement, la procédure renvoie un récapitulatif des actions effectuées
--		1 ligne par entité traitée
--			Pour chaque ligne, un récapitulatif (nom de l'entité et status du traitement) + un detail des actions 
--		Vous pouvez utiliser ces données dans un rapport ou pour envoyer un mail aux utilisateurs en charge des entités...
--*****************************************************************************************************


 

declare @IdEntite int -- Id de l'entité
declare @IdVersion int -- Id de la version du modèle
declare @UserId int -- Pas utilisé mais nécessaire pour la sp de validation de l'entité
declare @IdModel int -- Id du modèle

declare @NomVersion varchar(50) -- Nom de la version du modèle
declare @NomModel varchar(50) -- Nom du modéle
 

declare @SQL nvarchar(MAX) -- Pour exécuter du SQL dynamique
declare @SQLCompte nvarchar(MAX) -- Pour exécuter du SQL dynamique
declare @NbLignes int -- Retour des requêtes count

declare @SQLAttr nvarchar(max) -- pour boucler sur les attributs basés sur un domaine



declare @NomEntite varchar(50) -- Nom de l'entité
declare @BaseStaging varchar(50) -- Base du nom pour les tables intermédiaires
declare @TableMembreConsolide varchar(50) -- Nom de la table qui contient les membres consolidés de l'entité
declare @NomTableEntite varchar(50) -- Nom de la table qui contient les membres feuilles de l'entité


 


declare @TypeTable varchar(20) -- Type des tables de staging (leaf, consolidated, relationships

declare @NomBatch nvarchar(500) -- Nom du batch dans les tables de staging

declare @NbErreurs int  -- Nbre d'erreurs détectées

 

declare @TypeTableCurseur Cursor -- Curseur pour balayer les 3 types de table
declare @CodesEnErreur Cursor -- Curseur pour balayer les erreurs de batch
declare @NomBatchCurseur cursor -- Curseur pour balayer tous les batch d'une table de staging

declare @Code varchar(100) -- Code en erreur
declare @CodeErreur int -- Erreur sur le code (bitmask)

declare @IdBatchPrec int -- Id du dernier batch exécuté

declare @IdBatch int -- Id du batch courant

 
-- Variables pour récupérer les informations si on a eu une erreur sur un attribut lié (référence à un code qui n'existe pas)
declare @AttrDisplayName varchar(100) -- Nom de l'attribut lié
declare @AttrName varchar(100) -- Nom de la colonne qui contient l'attribut dans la table de l'entité
declare @AttrDomainEntityId int -- Id de l'entité référencée
declare @AttrDomainEntityTableName varchar(100) -- Nom de la table qui contient les données de l'entité liée

declare @LstAttrCursor cursor -- Curseur pour balayer les attributs domaine Based de l'entité

 

Declare @DetailActions varchar(max) -- Message du mail
Declare @TxtDetailActions varchar(max) -- Utlisé pour construire le message du mail

Declare @Recap varchar(max) -- Sujet du mail
Declare @Recap2 varchar(50) -- Complément du sujet (no errors  ou with errors)
 

-- Table temporaire qui contient les messages à envoyer pour tous les traitements

Begin try
  truncate table #result
end try
begin catch
      create table #result (id int IDENTITY(1,1) NOT NULL,DetailActions varchar(max),Recap varchar(max))
end catch

 

/******************************************************/
/* Pour la dernière version de chaque modéle          */
/******************************************************/
Declare LstModels Cursor for select Model_ID,max(id) as VersionId from mdm.tblModelVersion group by Model_ID
Open LstModels
fetch next from LstModels into @IdModel,@IdVersion
while @@FETCH_STATUS =0
BEGIN
      /*******************************************************************/
      /* Pour chaque entité du modèle                                    */
      /*******************************************************************/
      /* La procédure udfEntityGetProcessingSequence renvoie la liste des entités d'un modèle triée en fonction des dépendances (entités liées) */
      Declare LstEntities Cursor for SELECT Entity_ID FROM mdm.udfEntityGetProcessingSequence(@IdModel)
      inner join mdm.tblEntity E on E.ID=Entity_ID  where E.StagingBase is not null ORDER BY [Level] desc

      Open LstEntities
      Fetch next from LstEntities into @IdEntite
      While @@FETCH_STATUS=0
      BEGIN
            -- On récupère les infos de l'entité
            select @NomEntite = E.Name
            ,@BaseStaging= E.StagingBase
            ,@TableMembreConsolide= Isnull(E.HierarchyParentTable,'None')
            ,@NomTableEntite=EntityTable
            from mdm.tblentity E where E.ID = @IdEntite

            -- On récupère les infos de la version du modèle
            select @NomVersion=V.Name
            , @NomModel=M.Name
            from mdm.tblModelVersion V
            inner join mdm.tblModel M on V.Model_ID=M.ID
            where V.ID=@IdVersion

      
            -- Table temporaire qui contient les lignes du message
            Begin try
              truncate table #mess
            end try

            begin catch
                  create table #mess (id int IDENTITY(1,1) NOT NULL,Step int,mess varchar(max))
                  /* Step :
                        0 Entête
                        1 Erreur dans le process Batch
                        2 Erreur de Validation
                  */
            end catch
     
            -- On construit la liste des types de tables de staging à traiter
            IF @TableMembreConsolide <> 'None'
            begin
                  -- Cette entité à des membres consolidés et donc des relations
                  -- Il faut gérer les table Consolidated et RelationShip
                  set @SQL='set @Curseur = Cursor for select TypeTable from (select 1 as ordre,''Leaf'' as TypeTable union select 2, ''Consolidated'' union select 3,''RelationShip'') f order by ordre'
                  set @SQLCompte = 'Select @NbLignes=Sum(NbRows) from (select count(1) as NbRows from stg.['+@BaseStaging+'_Leaf] where ImportStatus_ID = 0'
                                                                                        +' union all select count(1) as NbRows from stg.['+@BaseStaging+'_Consolidated] where ImportStatus_ID = 0'
                                                                                        +' union all select count(1) as NbRows from stg.['+@BaseStaging+'_RelationShip] where ImportStatus_ID = 0'
                                                                                        +') NbRows';
            end
            else
            begin
                  -- Il n'y a pas de hierarchies ==> Seulement la table leaf
                  set @SQL='set @Curseur = Cursor for select ''Leaf'' as TypeTable'
                  set @SQLCompte = 'Select @NbLignes=count(1) from stg.['+@BaseStaging+'_Leaf] where ImportStatus_ID = 0';
            end

            set @SQL = @SQL + ' open @Curseur';
            EXEC sp_executesql @SQLCompte, N'@NbLignes int OUTPUT', @NbLignes OUTPUT

 
            /* est ce qu'il y a au moins une ligne à traiter  ? */
            If @NbLignes=0
            BEGIN
                  -- Il n'y a rien à faire pour cette entité
                  goto VALIDATION
            END

            -- on initialise le recapitulatif
            set @Recap = 'L''entite ' + @NomEntite + ' a été traitée dans le MasterData '
            set @Recap2 = ' - Avec succès'

            -- On comence à construire le message du mail
            insert into #mess (step,mess) select 0,'Traitement de l''entité  ' + @NomEntite +' (Modèle '+@NomModel+')';
            insert into #mess (step,mess) select 0,char(10) + 'Des modifications ont été détectées ';

            EXEC sp_executesql @SQL, N'@Curseur cursor OUTPUT', @TypeTableCurseur OUTPUT

            Fetch next from @TypeTableCurseur into @TypeTable
            while @@FETCH_STATUS=0
            -- Pour chaque table de staging
            Begin
                  set @NbLignes=0
                  /* On compte les lignes en attente dans la table de staging */
                  set @SQL='select @NbLignes=count(1) from stg.['+@BaseStaging+'_'+@TypeTable+'] where ImportStatus_ID = 0';
                  exec sp_executesql @SQL,N'@NbLignes int output', @NbLignes output;
  
                  if @NbLignes<>0
                  BEGIN
                        set @SQL = 'set @Curseur = CURSOR FOR select distinct BatchTag from stg.['+@BaseStaging+'_'+@TypeTable+'] where ImportStatus_ID = 0 Open @Curseur';
                        EXEC sp_executesql @SQL, N'@Curseur cursor OUTPUT', @NomBatchCurseur OUTPUT
                        Fetch next from @NomBatchCurseur into @NomBatch
                        -- Pour chaque BAtchTag de la table de staging
                        while @@FETCH_STATUS = 0
                        Begin
                             set @SQL = 'select @IdBatchPrec = isnull(max(Batch_ID),0) from  stg.['+@BaseStaging+'_'+@TypeTable+'] where ImportStatus_ID <> 0';
                             exec sp_executesql @SQL,N'@IdBatchPrec int output', @IdBatchPrec output;
                             -- LastBatchId permettra d'identifier les données qui viennent d'être chargée (BatchId > @IdBatchPrec)
                             
                             
                             /* ***************** Charge les données dans l'entité ****************** */
                             set @SQL = 'exec stg.[udp_'+@BaseStaging+'_'+@TypeTable+'] @VersionName = N'''+@NomVersion+''',@LogFlag =1,@BatchTag='''+@NomBatch+''''
                             exec sp_executesql @SQL

                             /* ******************************************************** */
                             
                             
                             /* Une fois les données chargées dans l'entité, on récupère le BatchId du chargement pour analyser le résultat */
                             set @SQL = 'select @IdBatch = Batch_ID from  stg.['+@BaseStaging+'_'+@TypeTable+'] where Batch_ID > '+ltrim(str(@IdBatchPrec));
                             exec sp_executesql @SQL,N'@IdBatch int output', @IdBatch output;
                             /* On construit le message récapitalutif*/
                             -- On compte les membres Nouveaux / Mis à Jour / Supprimés (Feuille ou Consolidés)

                             if @TypeTable<>'RelationShip'
                             Begin
                                   /* Nouveaux Membres */
                                   set @SQL='select @NbLignes=count(1) from stg.['+@BaseStaging+'_'+@TypeTable+'] where ImportType = 1 and Batch_ID='+ltrim(str(@IdBatch));
                                   exec sp_executesql @SQL,N'@NbLignes int output', @NbLignes output;
                                   if @NbLignes>0
                                   Begin
                                         insert into #mess (step,mess) select 0,char(10) + char(9)+' * ' + ltrim(str(@NbLignes)) + ' nouveaux codes ('+@TypeTable+') (Batch '+ltrim(str(@IdBatch))+') : ';
                                         set @SQL='insert into #mess (step,mess) select 0,char(10) + char(9)+char(9) + Code +'' - '' + isnull(Name,''--Null Value--'') as NewCode from  stg.['+@BaseStaging+'_'+@TypeTable+'] where ImportType = 1 and Batch_ID = '+ltrim(str(@IdBatch));
                                         exec (@SQL)
                                   End

                                   /* Membres Mis à Jour */
                                   set @SQL='select @NbLignes=count(1) from stg.['+@BaseStaging+'_'+@TypeTable+'] where ImportType in (0,2) and Batch_ID='+ltrim(str(@IdBatch));
                                   exec sp_executesql @SQL,N'@NbLignes int output', @NbLignes output;
                                   if @NbLignes>0
                                   Begin
                                         insert into #mess (step,mess) select 0, char(10) + char(9)+' * ' + ltrim(str(@NbLignes)) + ' modifications d''attributs ('+@TypeTable+') (Batch '+ltrim(str(@IdBatch))+')  : ';
                                         set @SQL='insert into #mess (step,mess) select 0,char(10) + char(9)+char(9) + Code +'' - '' + isnull(Name,''--Null Value--'') as NewCode from  stg.['+@BaseStaging+'_'+@TypeTable+'] where ImportType in (0,2) and Batch_ID = '+ltrim(str(@IdBatch));
                                         exec (@SQL)
                                   End

                                   /* Membres supprimés */
                                   set @SQL='select @NbLignes=count(1) from stg.['+@BaseStaging+'_'+@TypeTable+'] where ImportType > 2 and Batch_ID='+ltrim(str(@IdBatch));
                                   exec sp_executesql @SQL,N'@NbLignes int output', @NbLignes output;
                                   if @NbLignes>0
                                   Begin
                                         insert into #mess (step,mess) select  0,char(10) + char(9)+' * ' + ltrim(str(@NbLignes)) + ' codes supprimés ('+@TypeTable+') (Batch '+ltrim(str(@IdBatch))+')  : ';
                                         set @SQL='insert into #mess (step,mess) select 0,char(10) + char(9)+char(9) + Code +'' - '' + isnull(Name,''--Null Value--'') as NewCode from  stg.['+@BaseStaging+'_'+@TypeTable+'] where ImportType > 2 and Batch_ID = '+ltrim(str(@IdBatch));
                                         exec (@SQL)
                                    End

                                   -- On vérifie si il y a eu des erreurs :
                                   set @SQL='select @NbErreurs=count(1) from stg.['+@BaseStaging+'_'+@TypeTable+'] where ImportStatus_ID = 2 and Batch_Id='+ltrim(str(@IdBatch))
                                   exec sp_executesql @SQL,N'@NbErreurs int output', @NbErreurs output;
                                   if @NbErreurs>0
                                   Begin
                                         --- There are errors in batch processing
                                         set @Recap2 = ' - ** Avec des erreurs **'
                                         set @SQL = 'set @Curseur = cursor for select S.code,S.ErrorCode '
                                               +' from  stg.['+@BaseStaging+'_'+@TypeTable+'] S'
                                               +' where S.ImportStatus_ID = 2 and S.Batch_Id='+ltrim(str(@IdBatch))
                                         set @SQL = @SQL +' open @Curseur'
                                         exec sp_executesql @SQL,N'@Curseur Cursor output',@CodesEnErreur  OUTPUT
                                         fetch next from @CodesEnErreur into @Code,@CodeErreur
                                         while @@FETCH_STATUS=0
                                         BEGIN
                                               set @SQL = 'insert into #mess (step,mess) select 1,char(10) + char(9)+char(9) + S.code+ '' - ''+isnull(S.name,''#Nom Inconnu#'') + '' -> ''+isnull(E.Text,''#CodeErreur Inconnu#'') + '' (''+ ltrim(str(isnull(E.ID,S.ErrorCode)))+'')'''
                                                     +' from  stg.['+@BaseStaging+'_'+@TypeTable+'] S'
                                                     +' left outer join mdm.tblErrorCodesMapping M on S.ErrorCode=M.BitMask'
                                                     +' Left outer join mdm.tblDBErrors E on M.UniqueErrorCode = E.ID '
                                                     +' where S.ImportStatus_ID = 2 and S.Batch_Id='+ltrim(str(@IdBatch))
                                                     +' and S.Code = '''+@Code+''''

                                               exec (@SQL);
												/* Erreur sur un attribut liée qui référence un code qui n'existe pas */
												/* On recherche dans le dictionnaire de MDS le nom de l'attribut en cause */
                                               if @CodeErreur = 4
                                               BEGIN
                                                     -- Curseur sur les attributs de l'entité
                                                     set @SQLAttr = 'set @CurseurAttributs= cursor for select DisplayName,Name,DomainEntity_Id from mdm.TblAttribute where Entity_ID=' + str(@IdEntite)+' and AttributeType_ID = 2 '
                                                     if @TypeTable = 'Leaf'
                                                           set @SQLAttr = @SQLAttr + ' and MemberType_Id =1'
                                                     else
                                                           set @SQLAttr = @SQLAttr + ' and MemberType_Id =3'
                                                     set  @SQLAttr = @SQLAttr + ' open @CurseurAttributs'
                                                     EXEC sp_executesql @SQLAttr, N'@CurseurAttributs cursor OUTPUT', @LstAttrCursor OUTPUT
                                                     fetch next from @LstAttrCursor into  @AttrDisplayName,@AttrName,@AttrDomainEntityId
                                                     while @@FETCH_STATUS = 0
                                                     Begin
                                                           select @AttrDomainEntityTableName = EntityTable from mdm.tblEntity where ID=@IdEntite
                                                           set @SQL = 'insert into #mess (step,mess) select 1,'
                                                                 +'char(10)+ char(9)+char(9)+ char(9)+'''+@AttrDisplayName+'='' +  S.['+@AttrName+']'
                                                                 +' from  stg.['+@BaseStaging+'_'+@TypeTable+'] S'
                                                                 +' left outer join mdm.tblErrorCodesMapping M on S.ErrorCode=M.BitMask'
                                                                 +' Left outer join mdm.tblDBErrors E on M.UniqueErrorCode = E.ID '
                                                                 +' left outer join mdm.['+@AttrDomainEntityTableName+'] A on A.code=S.['+@AttrName+']'
                                                                 +' where S.ImportStatus_ID = 2 and S.Batch_Id='+ltrim(str(@IdBatch))
                                                                 +' and ImportStatus_ID = 2'
                                                                 +' and S.ErrorCode = 4'
                                                                 +' and A.Status_ID = 1'
                                                                 +' and A.code is null and S.['+@AttrName+'] is not null'
                                                                 +' and S.Code = '''+@Code+''''
                                                           exec (@SQL);
                                                           fetch next from @LstAttrCursor into  @AttrDisplayName,@AttrName,@AttrDomainEntityId
                                                     End
                                                     Close @LstAttrCursor
                                                     Deallocate @LstAttrCursor
                                               END
                                               fetch next from @CodesEnErreur into @Code,@CodeErreur                                    
                                         End
                                         close @CodesEnErreur
                                         Deallocate @CodesEnErreur
                                   End
                             End
                             Else -- if @TypeTable<>'RelationShip'
                             Begin
                             /* Contient une Relation nouvelle ou mise à jour (cas des hiérarchies explicites )*/
                                   set @SQL='select @NbLignes=count(1) from stg.['+@BaseStaging+'_'+@TypeTable+'] where Batch_ID='+ltrim(str(@IdBatch));
                                   exec sp_executesql @SQL,N'@NbLignes int output', @NbLignes output;
                                   if @NbLignes>0
                                   Begin
                                         insert into #mess (step,mess) select 0,char(10) + char(9)+' * ' + ltrim(str(@NbLignes)) + ' Relation nouvelle ou mise à jour (Batch '+ltrim(str(@IdBatch))+') : ';
                                         set @SQL='insert into #mess (step,mess) select 0,char(10) + char(9)+char(9) + ChildCode +'' - '' + isnull(C.Name,''--Sans Nom--'') +''  ==Fils de==>  '' + ParentCode +'' - '' + isnull(P.Name,''--Sans Nom--'')'
                                                     +' from  stg.['+@BaseStaging+'_'+@TypeTable+']'
                                                     +' left outer join mdm.['+@NomTableEntite+'] C on C.Code=ChildCode'
                                                     +' left outer join mdm.['+@TableMembreConsolide+'] P on P.Code=ParentCode'
                                                     +' where Batch_ID = '+ltrim(str(@IdBatch));
                                         exec (@SQL)
                                   End
                                   -- Check Errors :
                                   set @SQL='select @NbErreurs=count(1) from stg.['+@BaseStaging+'_'+@TypeTable+'] where ImportStatus_ID = 2 and Batch_Id='+ltrim(str(@IdBatch))
                                   exec sp_executesql @SQL,N'@NbErreurs int output', @NbErreurs output;
                                   if @NbErreurs>0
                                   Begin
                                         --- In y a des erreurs dans le traitement
                                         set @Recap2 = ' - ** Avec des erreurs **'
                                         set @SQL = 'insert into #mess (step,mess) select 1,char(10) + char(9)+char(9) + S.ChildCode+ '' - ''+isnull(C.name,''#Nom Inconnu#'') + '' -> ''+isnull(E.Text,''#CodeErreur Inconnu#'') + '' (''+ ltrim(str(isnull(E.ID,S.ErrorCode)))+'')'''
                                               +' from  stg.['+@BaseStaging+'_'+@TypeTable+'] S'
                                               +' left outer join mdm.['+@NomTableEntite + '] C on S.ChildCode=C.Code'
                                               +' left outer join mdm.tblErrorCodesMapping M on S.ErrorCode=M.BitMask'
                                               +' Left outer join mdm.tblDBErrors E on M.UniqueErrorCode = E.ID '
                                               +' where S.ImportStatus_ID = 2 and S.Batch_Id='+ltrim(str(@IdBatch));
                                          exec (@SQL);
                                   End
                             End -- if @TypeTable<>'RelationShip' Else
                             Fetch next from @NomBatchCurseur into @NomBatch
                        End -- WHILE @NomBatchCurseur
                        close @NomBatchCurseur;
                        deallocate @NomBatchCurseur;
                  END -- if @NbLignes<>0
                  Fetch next from @TypeTableCurseur into @TypeTable
            end -- While @TypeTableCurseur
            close @TypeTableCurseur;
            deallocate @TypeTableCurseur;
 

            VALIDATION:
            ----- On vide les logs de Validation de l'entité
            Delete mdm.tblValidationLog where  Version_ID = @IdVersion  and Entity_ID = @IdEntite
            --- On valide les données de l'entité 
            EXEC mdm.udpValidateEntity @UserId, @IdVersion, @IdEntite
            SET @NbErreurs  = (select count(1) from  mdm.tblValidationLog where Version_ID =@IdVersion  and Entity_ID = @IdEntite)
            if @NbErreurs  > 0
            BEGIN
                  set @Recap2 = ' - ** Avec des erreurs **'  
                  set @SQL = 'insert into #mess (step,mess) select distinct  2,char(10) + char(9)+char(9) + '
                             + ' MemberCode + '' - ''  + ISNULL(Name,''#Name Unknown#'') + '' ---- '' + Description '
                             +' from  mdm.tblValidationLog V,mdm.['+@NomTableEntite +'] '
                             +' where MemberCode = Code and V.Version_ID = ' + str(@IdVersion) + ' and Entity_ID = ' + str(@IdEntite)
                  exec(@SQL)
            END

		    SET @Recap = @Recap + @Recap2

             -- Synchronise les copies de l'entité
            Declare @CopyEntityName varchar(200)
            Declare @CopyEntityTableName varchar(200)
            Declare @CopyStagingTableName varchar(200)
            -- On cherche toutes les entités copy
            Set @CopyEntityName = @NomEntite+'_Copie'

            --Curseur pour balayer toutes les entités copies
            Declare LstCopies CURSOR FOR select StagingBase+'_Leaf',EntityTable from mdm.TblEntity where Name=@CopyEntityName
            OPEN LstCopies
            FETCH NEXT FROM LstCopies INTO @CopyStagingTableName,@CopyEntityTableName
            while @@FETCH_STATUS = 0
            BEGIN
                  --Pour chaque entité Copy   
                  /* On vide la table de staging */
                  set @SQL='truncate table stg.['+@CopyStagingTableName+']'
                  exec (@SQL)
                  /* On crée les nouveaux codes*/
                  set @SQL='Insert into stg.['+@CopyStagingTableName+'] (ImportType,ImportStatus_ID,BatchTag,Code,Name)'
                        +' select 1,0,''Automatic copy'',Source.code,Source.Name from mdm.['+@NomTableEntite+'] Source'
                        +' left outer join mdm.['+@CopyEntityTableName+'] Copy'
                        +' on Source.Code=Copy.Code'
                        +' where Copy.Code is null and Source.Status_Id=1'
                  exec(@SQL)
                  /* On Modifie les noms qui ont changés*/
                  set @SQL='Insert into stg.['+@CopyStagingTableName+'] (ImportType,ImportStatus_ID,BatchTag,Code,Name)'
                        +' select 0,0,''Automatic copy'',Source.code,Source.Name from mdm.['+@NomTableEntite+'] Source'
                        +' inner join mdm.['+@CopyEntityTableName+'] Copy'
                        +' on Source.Code=Copy.Code'
                        +' where Copy.name <> Source.Name and Source.Status_Id=1'
                  exec(@SQL)
                  /* On supprime les codes qui ont disparus */
                  set @SQL='Insert into stg.['+@CopyStagingTableName+'] (ImportType,ImportStatus_ID,BatchTag,Code,Name)'
                        +' select 4,0,''Automatic copy'',Copy.code,Copy.Name from mdm.['+@CopyEntityTableName+'] Copy'
                        +' left outer join mdm.['+@NomTableEntite+'] Source'
                        +' on Source.Code=Copy.Code'
                        +' where Source.Code is null'
                  exec(@SQL)
                  FETCH NEXT FROM LstCopies INTO @CopyStagingTableName,@CopyEntityTableName
            END -- WHILE LstCopies
            close LstCopies
            deallocate LstCopies
            -----------------------------------------------------------------------------------------------------------------------------
            -- Construit les message du mail
            declare @step int,@prevStep int
            set @DetailActions = ''
            set @prevStep=0
            set @step=-1
            declare MessCursor cursor for select step,mess from #mess order by step,id
            open MessCursor
            fetch next from MessCursor into @step,@TxtDetailActions
            While @@FETCH_STATUS = 0
            BEGIN
                  if @step<>@prevStep
                  begin
                        if @step=1
                             set @DetailActions=@DetailActions+char(10)+'******************************      DES ERREURS ONT ETE DETECTEES LORS DU TRAITEMENT PAR LOTS ****************************'
                        else
                             set @DetailActions=@DetailActions+char(10)+char(10)+'******************************    DES ERREURS ONT ETE DETECTEES LORS DE LA VALIDATION  ****************************'
                  end
                  set @DetailActions = @DetailActions + isnull(@TxtDetailActions,'#*@!!')
                  set @prevStep=@step
                  fetch next from MessCursor into @step,@TxtDetailActions
            END
            Close MessCursor
            Deallocate MessCursor
 
            if @DetailActions<>''
            BEGIN
                  insert into #result (DetailActions ,Recap)
                  select @DetailActions as DetailActions, @Recap  as Recap
            END
            /* Entité Suivante*/
            Fetch next from LstEntities into @IdEntite
      END -- While LstEntities
      Close LstEntities
      Deallocate LstEntities
      /* Modèle suivant */
      fetch next from LstModels into @IdModel,@IdVersion
END --While LstModels

Close LstModels
Deallocate LstModels
select isnull(DetailActions,'') as DetailAction ,isnull(Recap,'') as Recap  from #result order by id
END

 

 

GO

 