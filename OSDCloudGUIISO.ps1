Install-Module OSD -Force
Import-Module OSD -Force
New-OSDCloudTemplate
New-OSDCloudWorkspace -WorkspacePath C:\OSDCloud3
Edit-OSDCloudWinPE -WorkspacePath C:\OSDCloud3 -Wallpaper C:\Users\hannigan\Desktop\DaTeam.jpg -CloudDriver Dell,HP,IntelNet,LenovoDock,USB,VMware,Wifi -WebPSScript 

New-OSDCloudISO -WorkspacePath C:\OSDCloud3