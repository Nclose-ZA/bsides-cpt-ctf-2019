#!/bin/bash

set -e

PASSWORD="AXw6gdfy3Q8b"

echo "[i] Starting MySQL & Apache"
service mysql start

echo "[i] Creating bsides database"
mysql --user=root --password=$PASSWORD -e "CREATE DATABASE bsides;"

echo "[i] Creating bsides user"
mysql --user=root --password=$PASSWORD -e "CREATE USER 'bsides'@'localhost' IDENTIFIED BY '??p>xH!!P:4eWjc';"

echo "[i] Granting SELECT permission to bsides user on bsides database and flushing privileges"
mysql --user=root --password=$PASSWORD -e "GRANT SELECT ON bsides.* TO 'bsides'@'localhost'; FLUSH PRIVILEGES;"

echo "[i] Creating bsides table"
mysql --user=root --password=$PASSWORD -e "USE bsides; CREATE TABLE IF NOT EXISTS USERS(id INT NOT NULL AUTO_INCREMENT, username VARCHAR(100) NOT NULL, password VARCHAR(40) NOT NULL, first_name VARCHAR(40) NOT NULL, last_name VARCHAR(40) NOT NULL, PRIMARY KEY ( id));"

echo "[i] Creating database users"
mysql --user=root --password=$PASSWORD -e "USE bsides; INSERT INTO USERS(username,password,first_name, last_name) VALUES ('jakepaul','ksiisbetterthanme','Jake', 'Paul');"
mysql --user=root --password=$PASSWORD -e "USE bsides; INSERT INTO USERS(username,password,first_name, last_name) VALUES ('tyler1','t1alphaasf','Tyler', 'Steinkamp');"
mysql --user=root --password=$PASSWORD -e "USE bsides; INSERT INTO USERS(username,password,first_name, last_name) VALUES ('johnwick','halleberryisasnack','John', 'Wick');"
mysql --user=root --password=$PASSWORD -e "USE bsides; INSERT INTO USERS(username,password,first_name, last_name) VALUES ('nicobellic','romanscousin','Nico', 'Bellic');"
mysql --user=root --password=$PASSWORD -e "USE bsides; INSERT INTO USERS(username,password,first_name, last_name) VALUES ('edwardsnowden','sn0wd3n','Edward', 'Snowden');"

echo "[i] Starting SSH"
service ssh start

echo "[i] Starting Apache"
source /etc/apache2/envvars
/usr/sbin/apache2 -DFOREGROUND
