

  
DECLARE @req NVARCHAR(MAX);

SET @req = '';

SELECT @req = @req +
	'
		PRINT ''''
		PRINT ''****************************''
		PRINT '' DENY SELECT ON TABLE '+sys.schemas.name+'.'+sys.tables.NAME+'''
		PRINT ''****************************''
		PRINT ''''
		BEGIN TRY
			IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = '''+sys.schemas.name+''' AND TABLE_NAME ='''+sys.tables.NAME+''')
			BEGIN
				IF @@SERVERNAME = ''WIDV499A\ROSTAMD''
				BEGIN
					DENY SELECT ON '+sys.schemas.name+'.'+sys.tables.NAME+' TO USER_ROSTAM_SAS ;
					PRINT ''OK !'';
				END
				ELSE IF @@SERVERNAME = ''WIRE499A\MSBI''
				BEGIN
					DENY SELECT ON '+sys.schemas.name+'.'+sys.tables.NAME+' TO ROSTAM_SAS ;
					PRINT ''OK !'';
				END
				ELSE IF @@SERVERNAME = ''WIIN534A\MSBI''
				BEGIN
					DENY SELECT ON '+sys.schemas.name+'.'+sys.tables.NAME+' TO INT_ROSTAM ;
					PRINT ''OK !'';
				END
				ELSE IF @@SERVERNAME = ''WIPR534A\MSBI''
				BEGIN
					DENY SELECT ON '+sys.schemas.name+'.'+sys.tables.NAME+' TO USER_ROSTAM_SAS ;
					PRINT ''OK !'';
				END
				ELSE PRINT ''Serveur non reconnu : ''+@@SERVERNAME;
			END
			ELSE PRINT ''La table n''''existe pas'';
		END TRY
		BEGIN CATCH
			PRINT ERROR_MESSAGE();
		END CATCH
		PRINT ''''
	'
FROM sys.tables
JOIN sys.schemas ON sys.tables.schema_id = sys.schemas.schema_id
WHERE sys.schemas.name = 'dmt'

EXEC (@req);
GO
