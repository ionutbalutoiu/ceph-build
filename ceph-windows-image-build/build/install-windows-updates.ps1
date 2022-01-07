$ErrorActionPreference = "Stop"

Write-Output "Installing PSWindowsUpdate PowerShell module"
Install-PackageProvider -Name "NuGet" -Force -Confirm:$false
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Install-Module -Name "PSWindowsUpdate" -Force -Confirm:$false

Write-Output "Installing latest Windows updates"
Install-WindowsUpdate -AcceptAll -IgnoreReboot
