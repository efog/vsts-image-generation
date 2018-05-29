################################################################################
##  File:  Install-Newman.ps1
##  Team:  CI-Build
##  Desc:  Install Newman.
################################################################################
function Install-Newman
{
    Param
    (
    )

    $exitCode = -1

    try
    {
        npm install newman --global;
    }
    catch
    {
        Write-Host -Object "Failed to install Newman"
        Write-Host -Object $_.Exception.Message
        return -1
    }
}

#Installing VS extension 'Wix Toolset Visual Studio 2017 Extension'
$exitCode = Install-Newman

return $exitCode
