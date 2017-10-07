FROM microsoft/mssql-server-windows-developer:latest
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

ENV sa_password _

WORKDIR C:\\init
COPY . .

CMD .\initialize-db.ps1 -sa_password $env:sa_password -Verbose
