# whitney
## flag
location of the iseo: `25N77W`
## build
`sudo docker build -t whitney .`
## run container
`sudo docker container run --name whitney-c -p 10006:1337 whitney`
## solution (using netcat)
* use a network utility to submit some random data to the container. run `netcat 192.168.33.16 1337` then enter the random data
* you get an indication of what arguments to supply to the service
* run `netcat 192.168.33.16 1337` again and this time enter the folloiwng arguments `iseo location` (iseo is the name of the vessle which is disclosed in the challenge description)
* you are told that you need a security pin
* write a script to enumerate security pins. the pin end up being 77
* connect again and submit the following arguments `iseo location 77`
* the flag is returned to you.
