﻿Write-Host -ForegroundColor Yellow -BackgroundColor Red "EAS Tech. Solutions: Windows Deployment process using OSDCloud."
cls
Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
Write-Host "=================== Ryan Hannigan =====================" -ForegroundColor Yellow
Write-Host "==================== LAS IT OSD =======================" -ForegroundColor Yellow
Write-Host "========== University of Illinois at Chicago ==========" -ForegroundColor Yellow
Write-Host "1: Zero-Touch Win10 22H2 | English | Enterprise"-ForegroundColor Yellow
Write-Host "2: Zero-Touch Win11 22H2 | English | Enterprise" -ForegroundColor Yellow
Write-Host "3: I'll select it myself"-ForegroundColor Yellow
Write-Host "4: Exit`n"-ForegroundColor Yellow
$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage en-us -OSBuild 22H1 -OSEdition Enterprise -ZTI } 
    '2' { Start-OSDCloud -OSLanguage en-us -OSBuild 22H2 -OSEdition Enterprise -ZTI } 
    '3' { Start-OSDCloud	} 
    '4' { Exit		}
}

wpeutil reboot