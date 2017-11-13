docker run -e "ACCEPT_EULA=Y" -e sa_password=mypassword!1 --name sql -d microsoft/mssql-server-windows-express   

   docker inspect --format '{{.NetworkSettings.Networks.nat.IPAddress}}'  sql