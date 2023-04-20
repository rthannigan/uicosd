Write-Host  -ForegroundColor Yellow "Starting Brooks' Custom OSDCloud ..."
cls
Write-Host "=================== Ryan Hannigan =====================" -ForegroundColor Yellow
Write-Host "==================== LAS IT OSD =======================" -ForegroundColor Yellow
Write-Host "========= University of Illinois at Chicago ===========" -ForegroundColor Yellow
Write-Host "==================== Main Menu ========================" -ForegroundColor Yellow
Write-Host "3: I'll select it myself"-ForegroundColor Yellow
Write-Host "4: Exit`n"-ForegroundColor Yellow
$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{   
    '1' { Start-OSDCloud	} 
    '2' { Exit		}
}

wpeutil reboot