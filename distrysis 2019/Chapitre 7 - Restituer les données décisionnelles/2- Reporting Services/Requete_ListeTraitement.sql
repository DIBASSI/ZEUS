SELECT     AuditTraitement_PK, NomFlux, CAST(DateDebutTraitement AS date) AS DateExecution, DateDebutTraitement, DateFinTraitement, NbErreurTechnique, NbAvertissement,
                       FluxTermineAvecSucces, FluxAreprendre, NbFluxExecute
FROM         AuditTraitement
ORDER BY DateExecution DESC, DateDebutTraitement DESC