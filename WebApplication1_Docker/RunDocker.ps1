
#https://docs.microsoft.com/en-us/aspnet/mvc/overview/deployment/docker-aspnetmvc
#docker build -t mvc .
#docker run -d --name randomanswers mvc


docker stop matts
docker rm matts

Set-Location -Path ./WebApplication1_Docker
docker build -t mvc . --no-cache=true


#docker start matts
docker run -d --name matts mvc

## docker run -d --name 989a mvc
 
#docker inspect d54

$ipaddress = docker inspect matts -f '{{.NetworkSettings.Networks.nat.IPAddress}}'
Write-Host $ipaddress

#Start-Process  -Path "http://$ipaddress"

start-process -FilePath 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' -ArgumentList "http://$ipaddress"
