#PowerShell: finance.ps1
#################################################################################################
# Change source, destination and environment properties
#################################################################################################
 
# Source
$IspacFilePath = "C:\ZEUS\PSA\PSA-Staging.ispac"
 
# Destination
$SsisServer ="EGT006"
$FolderName = "PSA-Staging"
$ProjectName = ""
 
# Environment
$EnvironmentName = "DEV"
$EnvironmentFolderName = ""
 
#################################################################################################
# Execute generic deployment script
. "$PSScriptRoot\generalDeployment.ps1" $IspacFilePath $SsisServer $FolderName $ProjectName $EnvironmentName $EnvironmentFolderName