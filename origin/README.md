# origin
## Flag
flag: `filme ab 16 jahren`
## build
`sudo docker build -t origin .`
## run
`sudo docker container run --name origin-c -p 10005:80 origin`
## solution
* navigate to the container with firefox
* open the network tab in firefox
* select 'Play Beta' on the home page
* in the network tab open up the GET request to beta.php and hit 'edit and resend'
* set the `Referer` header to `http://bsides-gaming.io` and send off the request
* the response will disclose the flag
