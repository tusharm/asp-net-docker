
param()

Write-Verbose "Creating custom website..."

# create a new drive
subst G: C:\website

# make the drive mapping permanent
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\DOS Devices' -Name 'G:' -Value '\??\C:\website' -Type String

# add a new website
Remove-Website -Name 'Default Web Site'
New-Website -Name 'Website' -PhysicalPath 'G:' -Port 80 -Force
