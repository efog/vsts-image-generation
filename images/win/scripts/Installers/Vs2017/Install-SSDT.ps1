################################################################################
##  File:  Install-SSDT.ps1
##  Team:  CI-Platform
##  Desc:  Install SQL Server Data Tools for Windows
################################################################################

Import-Module -Name ImageHelpers -Force

$InstallerURI = 'https://download.microsoft.com/download/9/5/3/9533216D-FEE0-40A7-B351-9B5AAF111FAF/SSDT-Setup-ENU.exe'
$InstallerName = 'SSDT-Setup-ENU.exe'
$logFilePath = "$env:TEMP\ssdtlog.txt"
$ArgumentList = ('/install', 'INSTALLALL', '/passive', '/norestart', "/log `"$logFilePath`"")
$LayoutArgumentList = ('/layout', "/log `"$logFilePath`"")

$exitCode = Install-EXE -Url $InstallerURI -Name $InstallerName -ArgumentList $ArgumentList

if($exitCode -ne 0 -and $exitCode -ne 3010)
{
    Write-Host "******** SSDT SETUP LOG START ********"
    Write-Host $(Get-Content $logFilePath | Out-String)
    Write-Host "******** SSDT SETUP LOG END ********"
}

exit $exitCode