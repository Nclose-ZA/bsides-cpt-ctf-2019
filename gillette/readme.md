# gilette
## Difficulty Level
Easy
## flag
malwareunicorn
## docker instructions
### build
```
sudo docker build -t gillette .
```
### run container
```
sudo docker container run --name gillette-c -p 10010:80 -d gillette
```
## solution
* Enumeration would point attacker to the changelog.php file which includes a parameter in the URL - this indicates that path traversal is the vulnerability
* Attacker would need to path traversal to `/etc/passwd` to find what the flag is.
