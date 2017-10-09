FROM microsoft/aspnet:latest
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

# this is used in creating a mapped drive in configure-website.ps1 script
VOLUME C:\\website

WORKDIR C:\\init 

COPY *.ps1 ./

RUN .\enable-iis-management.ps1 -Verbose
RUN .\configure-website.ps1 -Verbose
RUN .\install-sqlserver-tools.ps1 -Verbose

EXPOSE 80 8172
