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
$DatabaseName = read-host "Provide Database Name" #$DatabaseName ="Athena"
#Scripts Folder Path
$FolderPath = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent #"C:\ZEUS\Scripts SQL SERVER\Athena"
#authentification type

#Provide parameters Name and values EXPLE :$sqlParameters =@("database='tempdb','msdb'", "statedesc='online'") where db in ($(database)) 
$sqlParameters =@("database=$DatabaseName", "db='$DatabaseName'" , "test='$FolderPath'")

$useWindowsAuth = read-host "Do you want to use Windows Authentication, y or n?"
if($useWindowsAuth -eq "y") {
   $useWindowsAuth = $true  
}
else {
   $SqluserName = read-host "Enter the username"
   $Sqlpwd = read-host "Ënter the password"
}


#Loop through the .sql files and run themY

foreach ($filename in get-childitem -path $FolderPath -filter "*.sql")
{
	if($useWindowsAuth) 
	{
    #sqlcmd -S $SQLServer -i $filename.fullname -v dbname=$DatabaseName -E
	invoke-sqlcmd –ServerInstance $SQLServer -Database 'master' -Variable $sqlParameters -InputFile $filename.fullname -AbortOnError -outputsqlerrors $true -Verbose -ErrorAction Stop  #Invoke-Sqlcmd -ServerInstance $instance -InputFile $fullPath -UserName $deployAccount -Password $deployPassword -AbortOnError -outputsqlerrors $true -Verbose -ErrorAction Stop 
    #Print file name which is executed
    }
	else
	{
	invoke-sqlcmd –ServerInstance $SQLServer -Database $DatabaseName -Username $SqluserName -Password $Sqlpwd -InputFile $filename.fullname -AbortOnError -outputsqlerrors $true -Verbose -ErrorAction Stop 
	}
	$filename 
	

} 

