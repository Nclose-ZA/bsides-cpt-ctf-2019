# risnotforrace
## flags
`The flag is nisnotfornightmode`
## docker instructions
### build
`sudo docker build -t risnotforrace .`
`sudo docker build -t risnotforrace2 .`
### run container
`sudo docker container run --name risnotforrace-c -p 192.168.33.25:80:80 risnotforrace`
`sudo docker container run --name risnotforrace2-c -p 192.168.33.212:80:80 risnotforrace2`
`sudo docker container run --name ctfdns-c -p 192.168.33.10:53/udp ctfdns`
