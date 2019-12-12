# flag
shared key: 202
# docker instruction
## build
`sudo docker build -t diffie .`
## run container
`sudo docker container run --name diffie-c -p 10007:80 diffie`
## solution
* Brooklyn's public key `B` is `470`, Ashley's (`A`) is `61`. The modulus `p` is `541` and base `g` is `10`
* we are going to crack Ashleys pivate key 'a' using following equasion `A = g^a mod p` (this equasion is originally used to generate Ashley's public key)
* we substitute all know values and brute force the private key. `61 = 10^a mod 541` (complexity lies in the discrete logarighm problem)
* brute forcing gives a value of `55` for `a`
* we know have all necessary values to compute the shared secret s. `s = B^a mod p = (470^55) mod 541 = 202`
