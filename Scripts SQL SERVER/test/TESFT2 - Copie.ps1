<#
#Provide SQLServerName
$SQLServer = read-host "Provide SQLServerName"
#Provide Database Name 
$DatabaseName = read-host "Provide Database Name"
#Scripts Folder Path
$FolderPath = read-host "Scripts Folder Path"
#>
#Provide SQLServerName
$SQLServer ="EGT006"
#Provide Database Name 
$DatabaseName = read-host "Provide Database Name" #$DatabaseName ="ZEUS"
#Scripts Folder Path
$FolderPath ="C:\ZEUS\Scripts SQL SERVER\test\"
#Loop through the .sql files and run them
foreach ($filename in get-childitem -path $FolderPath -filter "*.sql")
{
invoke-sqlcmd –ServerInstance $SQLServer -Database $DatabaseName -InputFile $filename.fullname
#Print file name which is executed
$filename 
} 

