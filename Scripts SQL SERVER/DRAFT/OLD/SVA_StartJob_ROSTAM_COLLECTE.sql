﻿USE [$(v_BaseDeDonnees)]
GO

-------------------------------------------------------------------------------
PRINT 'Debut Start Job'
GO
-------------------------------------------------------------------------------

BEGIN TRY
	EXEC sva.StartJob 'ROSTAM_COLLECTE';
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE();
END CATCH
GO

-------------------------------------------------------------------------------
PRINT 'Fin Start Job'
GO
-------------------------------------------------------------------------------
