## Need to have a alias for each IP added for the network interface that people will be connecting to. You can mannually assign IPs as well.
## sudo ifconfig <interface name e.g. en0 or lo0> alias 192.168.33.11
##

#ifconfig enp4s0:0 192.168.33.10 netmask 255.255.255.0 up
ifconfig enp4s0:0 192.168.33.11 netmask 255.255.255.0 up
docker container run --name giveme-c -p 192.168.33.11:80:80 -d giveme
ifconfig enp4s0:1 192.168.33.12 netmask 255.255.255.0 up
docker container run --name enigma-c -p 192.168.33.12:80:80 -d enigma
ifconfig enp4s0:2 192.168.33.13 netmask 255.255.255.0 up
docker container run --name ebook-c -p 192.168.33.13:80:80 -d ebook
ifconfig enp4s0:3 192.168.33.14 netmask 255.255.255.0 up
docker container run --name agent407-c -p 192.168.33.14:80:80 -d agent407
ifconfig enp4s0:4 192.168.33.15 netmask 255.255.255.0 up
docker container run --name origin-c -p 192.168.33.15:80:80 -d origin
ifconfig enp4s0:5 192.168.33.16 netmask 255.255.255.0 up
docker container run --name whitney-c -p 192.168.33.16:1337:1337 -d whitney
ifconfig enp4s0:6 192.168.33.17 netmask 255.255.255.0 up
docker container run --name diffie-c -p 192.168.33.17:80:80 -d diffie
ifconfig enp4s0:7 192.168.33.18 netmask 255.255.255.0 up
docker container run --name ronrivest-c -p 192.168.33.18:80:80 -d ronrivest
ifconfig enp4s0:8 192.168.33.19 netmask 255.255.255.0 up
docker container run --name darkbins-c -p 192.168.33.19:80:80 -d darkbins
ifconfig enp4s0:9 192.168.33.20 netmask 255.255.255.0 up
docker container run --name gillette-c -p 192.168.33.20:80:80 -d gillette
ifconfig enp4s0:10 192.168.33.21 netmask 255.255.255.0 up
docker container run --name prototype-c -p 192.168.33.21:80:80 -p 192.168.33.21:10012:22 -d prototype
ifconfig enp4s0:11 192.168.33.22 netmask 255.255.255.0 up
docker container run --name ifindzyou-c -p 192.168.33.22:80:80 -d ifindzyou
ifconfig enp4s0:12 192.168.33.23 netmask 255.255.255.0 up
docker container run --name disnmap-c -p 192.168.33.23:55231:80 -d disnmap
ifconfig enp4s0:13 192.168.33.24 netmask 255.255.255.0 up
docker container run --name remindme-c -p 192.168.33.24:80:80 -d remindme
ifconfig enp4s0:14 192.168.33.25 netmask 255.255.255.0 up
docker container run --name risnotforrace-c -p 192.168.33.25:80:80 -d risnotforrace
ifconfig enp4s0:15 192.168.33.212 netmask 255.255.255.0 up
docker container run --name risnotforrace2-c -p 192.168.33.212:80:80 -d risnotforrace2
ifconfig enp4s0:16 192.168.33.10 netmask 255.255.255.0 up
docker container run --name ctfdns-c -p 192.168.33.10:53:53/udp -d ctfdns
