FROM microsoft/aspnet:latest

COPY ./docker/enable-iis-management.ps1 /setup/
COPY ./bin/Release/PublishOutput /inetpub/wwwroot

RUN powershell.exe -executionpolicy bypass /setup/enable-iis-management.ps1

EXPOSE 80 8172
