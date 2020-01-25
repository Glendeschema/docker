#creating a loop of multiple containers
$no = 1..2
foreach($i in $no){
    $nu = Get-Random -Minimum 8089 -Maximum 8094
    $port = 80
   docker run -d --name c$i --network app_net -p $nu.ToString():$port nginx
    #docker stop c$i
    #docker rm  c$i
}
for i in {1..20} ;
    do docker run -d --name c$i --network app_net -p :80 nginx ;
    done;
    #listing specific colums on output in table format---
    docker container ls --format "table {{.Names}}\t{{.Ports}}"

# to stop and remove all containers the neat way!
docker stop $(docker ps -aq)
docker rm -f  $(docker ps -aq)
#Creating docker Contianer with attached volume great!!!!!
#Then you can create your index.html and put it inside the html folder.
#Use the above code to automate the creation of multiple containers
docker run -d --name webapp7 -p 8086:80 --volume /Users/glen/Desktop/Demo01:/usr/share/nginx/html  nginx