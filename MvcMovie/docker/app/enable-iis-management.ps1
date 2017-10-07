# create admin user for remote connection
net user iisadmin "!!Sadmin*" /add
net localgroup "Administrators" "iisadmin" /add

# install web management features
Import-Module servermanager
Add-WindowsFeature web-mgmt-service

# enable remote management
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WebManagement\Server -Name EnableRemoteManagement -Value 1
Start-Service wmsvc