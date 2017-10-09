
param()

Write-Verbose "Creating admin user for remote management.."
net user iisadmin "!!Sadmin*" /add
net localgroup "Administrators" "iisadmin" /add

Write-Verbose "Enabling remote management.."

Import-Module servermanager
Add-WindowsFeature web-mgmt-service

Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WebManagement\Server -Name EnableRemoteManagement -Value 1
Set-Service -Name wmsvc -StartupType automatic