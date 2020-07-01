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
#authentification type
$useWindowsAuth = read-host "Do you want to use Windows Authentication, y or n?"
if($useWindowsAuth -eq "y") {
   $useWindowsAuth = $true  
}
else {
   $SqluserName = read-host "Enter the username"
   $Sqlpwd = read-host "Ënter the password"
}


#Loop through the .sql files and run them

foreach ($filename in get-childitem -path $FolderPath -filter "*.sql")
{
	if($useWindowsAuth) 
	{
	invoke-sqlcmd –ServerInstance $SQLServer -Database $DatabaseName -InputFile $filename.fullname -AbortOnError -outputsqlerrors $true -Verbose -ErrorAction Stop  #Invoke-Sqlcmd -ServerInstance $instance -InputFile $fullPath -UserName $deployAccount -Password $deployPassword -AbortOnError -outputsqlerrors $true -Verbose -ErrorAction Stop 
	#Print file name which is executed
    }
	else
	{
	invoke-sqlcmd –ServerInstance $SQLServer -Database $DatabaseName -Username $SqluserName -Password $Sqlpwd -InputFile $filename.fullname -AbortOnError -outputsqlerrors $true -Verbose -ErrorAction Stop 
	}
	$filename 
	

} 

