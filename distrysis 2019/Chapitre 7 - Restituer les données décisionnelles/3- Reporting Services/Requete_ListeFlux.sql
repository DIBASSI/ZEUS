SELECT AuditFlux_PK, AuditTraitement_FK, NomFlux, DateDebutFlux1ereExecution, DateFinFlux1ereExecution, DateDebutFluxDerniereExecution, 
DateFinFluxDerniereExecution, DateDebutPlageDonnees, DateFinPlageDonnees, NbErreurTechnique, NbAvertissement, FluxTermineAvecSucces, FluxAreprendre, 
NbExecution
FROM AuditFlux
WHERE (AuditTraitement_FK = @AuditTraitement)