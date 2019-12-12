# enigma
## Flag
flag: `ich will unreal tournament spielen`
## docker instructions
### build
`sudo docker build -t enigma .`
### run
`sudo docker container run --name enigma-c -p 10002:80 enigma`
### solution
* visit the container with a web browser
* download the image from the web page (theres only one)
* view the exif information of the image (using exiftool is an option) and find the comment 'leverage the power of steghide'
* install steghide and use it to extract the embedded flag with `steghide extract -sf enigma-sf.jpg`
* you will extract a file called flag.txt which contains the flag.
