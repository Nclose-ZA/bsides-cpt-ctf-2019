# agent407
## flags
Unique API token: `fh39g4df2f`
## docker instructions
### build
`sudo docker build -t agent407 .`
### run container
`sudo docker container run --name agent407-c -p 10004:80 agent407`
### solution
* download the apk on the index page
* install apktool or use a online decompiler to decompile the apk
* use `apktool d uma-intel-app.apk` to decompile
* `cd uma-intel-app`
* `grep -R "token" .`

