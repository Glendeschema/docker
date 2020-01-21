#cruicial docker commands

#checking IP address of a container after running Docker inspect JSON template
docker container inspect --format '{{ .NetworkSettings.IPAddress}}' containerName

