FROM microsoft/aspnet:latest
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

WORKDIR C:\\init 

COPY ./docker/app/*.ps1 ./
RUN .\enable-iis-management.ps1 -Verbose
RUN .\install-sqlserver-tools.ps1 -Verbose

COPY ./bin/Release/PublishOutput /inetpub/wwwroot

EXPOSE 80 8172
