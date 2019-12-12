# enigma
## Flag
flag: `geklaute kinder schokolade`
## docker instructions
### build
`sudo docker build -t giveme .`
### run
`sudo docker container run --name giveme-c -p 10001:80 giveme`
### solution
* open up with firefox
* open developer tools and select the sources tab
* open the script.js file where you find a function called 'give_me()'
* open the console tab and enter 'give_me()'
* hit enter
* an alert will pop up with the flag. 
