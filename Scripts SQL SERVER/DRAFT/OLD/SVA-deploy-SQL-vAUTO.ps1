param
(
    [parameter(HelpMessage="Projet � d�ployer ?")]
	$ProjetDeploiement
)


function InitSnapIn()
{

    $loc = Get-Location

	Write-Host
	Write-Host "====> V�rification du module SQL"
    #plus de snapin en 2012
    Import-Module 'SQLPS' �DisableNameChecking 
	Write-Host -foregroundcolor green "OK"

    Set-Location $loc
}

function ExecuteMainSql
{
    $mainfile = ".\00-main.sql"
	$isMainfile = Test-Path $mainfile
	if (-not $isMainfile)
	{
		Write-Host "Fichier 00-main.sql non trouv�" -foregroundcolor red
		return;
	}
	
	InitSnapIn
	
	$fullPath = Convert-path $mainfile
	
	Write-Host
	Write-Host "====> D�ploiement des scripts SQL"
    Write-Host 
    Write-Host " >>  La sortie du script est copi�e dans le fichier .\output.log" -foregroundcolor cyan
    Write-Host 

    $Error.Clear()
	try {
       
        sqlcmd -S $instance -i $fullPath -U $deployAccount -P $deployPassword > output.log
        #Invoke-Sqlcmd -ServerInstance $instance -InputFile $fullPath -UserName $deployAccount -Password $deployPassword -AbortOnError -outputsqlerrors $true -Verbose -ErrorAction Stop 
                
    } 
    catch {
        $err
		Write-Host
		Write-Host "Erreurs d'execution SQL :" -foregroundcolor red

		Foreach ($e in $error)
        {
            Write-Host $e.Exception.Message -foregroundcolor red
        }
		return;
    }

    Write-Host "-------------------------------------// ici la sortie du script SQLCMD //--------------------------------------------"
    type .\output.log
    Write-Host "------------------------------------------// FIN du script SQLCMD //-------------------------------------------------"

	
	Write-Host
    Write-Host "D�ploiement effectu�" -foregroundcolor yellow
	
}

function SearchPattern([string]$pattern, $searchFiles, $excludeFiles)
{
	$found = Select-String -Path $searchFiles -Pattern $pattern -exclude $excludeFiles

	if ($found -ne $null)
	{
		Write-Host "Mot-cl� '$pattern' trouv� " $found.Matches.Length " fois" -foregroundcolor "red"
		Foreach ($match in $found)
		{
			Write-Host "  " $match.Filename " ( ligne " $match.LineNumber ")"
		}
	} 
	
	return $found.Matches.Length
}

function CheckFiles()
{
	[string]$rootFolder = Convert-Path ".\"
	$searchFiles = $rootFolder + "\*.*"
	$excludeFiles = "*SVA-*"

	Write-Host "Scan du r�pertoire $rootFolder en cours"

	## --> appels
	$foundKeyword = 0
	
	trap {write-host "err";$foundKeyword=1;continue;}
	
	$foundKeyword += SearchPattern "sysadmin" $searchFiles  $excludeFiles
	$foundKeyword += SearchPattern "db_owner" $searchFiles  $excludeFiles
	$foundKeyword += SearchPattern "grant\s+control\s+on\s+database" $searchFiles  $excludeFiles
	$foundKeyword += SearchPattern "grant\s+control\s+server" $searchFiles  $excludeFiles
	$foundKeyword += SearchPattern "grant\s+alter\s+server" $searchFiles  $excludeFiles
	$foundKeyword += SearchPattern "grant\s+impersonate" $searchFiles  $excludeFiles
	$foundKeyword += SearchPattern "grant\s+alter\s+" $searchFiles  $excludeFiles
	$foundKeyword += SearchPattern "grant\s+control\s+on\s+login" $searchFiles  $excludeFiles
	$foundKeyword += SearchPattern "grant\s+control\s+on\s+server" $searchFiles  $excludeFiles
	$foundKeyword += SearchPattern "grant\s+take\s+ownership" $searchFiles  $excludeFiles

	if ($foundKeyword -gt 0)
	{
		Write-Host
		Write-Host ">> Mot(s)-cl� interdit(s) trouv�, le process est annul� !" -foregroundcolor red
		Write-Host
		return $false
	}
		
	############################
	# Remplacement ON PRIMARY
	$filesMatch = Select-String "(?mi)on\s+\[?primary]?" $searchFiles -exclude $excludeFiles


	if ($filesMatch -eq $null)
	{
		Write-Host "Pas de cr�ation sur le FILEGROUP PRIMARY : OK" -foregroundcolor "green"
	}
	else
	{
		Foreach ($match in $filesmatch)
		{
			Write-Host $match.Filename -NoNewLine
			
			$originalText = Get-Content  $match.Filename
			$newText = $originalText  -replace "(textimage_)?on\s+\[?primary]?", " "
			Set-Content $newText -path $match.Filename
			
			Write-Host " --> corrig�" -foregroundcolor "green"	}
	}
	
	return $true
}

function ConvertEncoding()
{
	Write-Host
	Write-Host "====> Conversion des fichiers en UTF8 avant appel � SQLCMD"
	Write-Host "Attention: si vous utilisez des fichiers non-UTF8 et sans extension SQL, il risquera d'y avoir un probl�me avec certains caract�res" -foregroundcolor yellow
	Write-Host
	$sqlfiles = (dir *.sql)
	ForEach ($f in $sqlfiles)
	{
		$tempf = $f.ToString() + ".tmp"
		Get-Content $f | Set-Content -encoding UTF8 -path $tempf
		Get-Content $tempf | Set-Content -encoding UTF8 -path  $f
		Remove-Item $tempf
		Write-Host -nonewline "."

	}
	Write-Host " OK" -foregroundcolor green
}

function ReplaceJobProcedures()
{
	#Recherche de fichiers SQL contenant des proc�dures traitant un job SQL Server (MSDB)
	$jobProcs += "sp_add_alert", "sp_add_job", "sp_add_jobserver", "sp_add_jobstep", "sp_add_jobschedule" 
	$jobProcs += "sp_update_alert", "sp_update_job", "sp_update_jobstep", "sp_update_jobschedule" 
	$jobProcs += "sp_delete_alert", "sp_delete_job", "sp_delete_jobserver", "sp_delete_jobstep", "sp_delete_jobschedule"

    #===> TODO : remonter une erreur
}

function main()
{
	Write-Host
	Write-Host
	Write-Host "Utilitaire de d�ploiement automatique SQL 2012"	-foregroundcolor yellow
	
    if ($ProjetDeploiement -eq $null) {
        Write-Host
        $ProjetDeploiement = Read-Host "====> Projet � d�ployer ?" 
        Write-Host
    } else {
        Write-Host
        Write-Host "====> Projet : " $ProjetDeploiement
        Write-Host
    }

	Write-Host
	Write-Host "====> Collecte des credentials"
	Write-Host
	
	$env = "REC"; 
    $machine = "WIRE499A"; 
    $domain = "INTRA-DEV01"; 
    $proj = $ProjetDeploiement; 
    $instance = "WIRE499A\MSBI"
    $deployAccount = $proj + "_deploiement"

	Write-Host 
	Write-Host "Le compte de d�ploiement est bien $deployAccount ? (O/N)"
	Write-Host ">>>" -NoNewLine -foregroundcolor yellow
	$isCustomDeployAccount = Read-Host 
	
	if ($isCustomDeployAccount.ToUpper() -ne "O")
	{
		Write-Host
		Write-Host "Entrez le compte de d�ploiement :"
		Write-Host ">>>" -NoNewLine -foregroundcolor yellow
		$deployAccount = Read-Host 
	}
	
	Write-Host
	Write-Host "Entrez le mot de passe du compte de d�ploiement:"
	Write-Host ">>>" -NoNewLine -foregroundcolor yellow
	$deployPassword = Read-Host
	
	Write-Host

	# V�rification des fichiers SQL
	$filesAreOK = CheckFiles
	if ($filesAreOK)
	{
		#Conversion des fichiers SQL
		ConvertEncoding
		
		#Execution des fichiers SQL
		ExecuteMainSQL
	}
}

main
Write-Host
Write-Host "D�ploiement SQL Termin�. (appuyez sur une touche pour quitter)"
Read-Host 