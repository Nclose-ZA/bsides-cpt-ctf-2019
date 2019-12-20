# prototype
## Difficulty Level
Easy
## flag
cyb3rpunk
## docker instructions
### build
```
sudo docker build -t prototype .
```
### run container
```
sudo docker container run --name prototype-c -p 10011:80 -p 10012:22 -d prototype
```
## solution
* User will automatically be redirected to insecure PHP page containing code vunerable to SQL injection. User would need to enumerate through a list of DB users by altering the URL parameter. SQLMap could work here.
* Hints on the web page would indicate that John Wick is the target.
* Once attacker has John Wicks creds, a hint would indicate that the attacker must further enumerate and SSH to the webserver using the obtained creds.
* The flag is in John's home directory `/home/johnwick`
