### ASP.NET MVC 5 Sample Application in Windows Container

The repo contains a dockerised version of ASP.NET MVC [tutorial](https://docs.microsoft.com/en-us/aspnet/mvc/overview/getting-started/introduction/) and includes Docker Compose setup to spin up the web and db components in separrate containers.

#### Features

+ Windows Docker containers (microsoft/aspnet, microsoft/mssql-server-windows-developer)
+ ASP.NET MVC app and MSSQL Server running in separate containers
+ Connect IIS Manager to IIS running inside the container
+ Connect SSMS to MSSQL running inside the container


##### Steps

+ Create a Publish Profile to publish the assets in the folder `bin\Release\PublishOutput` (this directory is copied into the web container during docker build)
+ Inside `docker` directory, run `docker-compose up -d` to start the containers
+ Get the IP address of the `web` container (`docker inspect web`) and navigate to `http://<ip-address>/`, `http://<ip-address>/HelloWorld` or `http://<ip-address>/Movies`

#### TODO

+ Create a custom virtual directory (instead of `/inetpub/wwwroot/`) - this will allow bind-mounting application assets, rather than copying them into the image (see [this](https://blog.sixeyed.com/docker-volumes-on-windows-the-case-of-the-g-drive/))
+ Connect Event Viewer to IIS logs in containers    
