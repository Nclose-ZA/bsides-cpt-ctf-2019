# ronrivest
## flags
Colonel Ourumov's private key: 12893

Decrypted Message (missile pin code): 2001
## docker instructions
`sudo docker build -t ronrivest .`

`sudo docker container run --name ronrivest-c -p 10008:80 ronrivest`

## solution
* we are given the public key n = 129653 and e = 5. We are also given the ciphertext 41247
* Compute the Carmichael's totient function of n to get λ(n). λ(n) ends up being 32232. (this is where the prime factorization takes place)
* the private key is the modular multiplicative inverse of e and λ(n). d ends up being 12893
* decrypt the ciphertext by determining c^d mod n = 41247^12893 mod 129653
* cleartext is 2001
