Write-Host  -ForegroundColor Yellow "Starting Ryans' Custom OSDCloud ..."

Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "================= LAS IT OSDeployment =================" -ForegroundColor Yellow
Write-Host "========= University of Illinois at Chicago ===========" -ForegroundColor Yellow
Write-Host "============== Written by Ryan Hannigan ===============" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Zero-Touch Win10 22H2 | English | Enterprise" -ForegroundColor Yellow 
Write-Host "1: I'll select it myself"-ForegroundColor Yellow
Write-Host "2: Exit`n"-ForegroundColor Yellow
$input = Read-Host "Please make a selection"-ForegroundColor Yellow
Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{   
    '1' { Start-OSDCloud -OSLanguage en-us -OSBuild 22H2 -OSEdition Enterprise -ZTI } 
    '2' { Start-OSDCloud	} 
    '3' { Exit		}
}



#Restart from WinPE

wpeutil reboot