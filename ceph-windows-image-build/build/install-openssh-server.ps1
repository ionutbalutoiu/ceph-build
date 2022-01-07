$ErrorActionPreference = "Stop"

Get-WindowsCapability -Online -Name OpenSSH* | Add-WindowsCapability -Online

Set-Service -Name "sshd" -StartupType Automatic
Start-Service -Name "sshd"

New-NetFirewallRule -Name "sshd" -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
