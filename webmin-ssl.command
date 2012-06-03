#!/bin/bash

#Generate a self-signed certificate
# key
openssl genrsa -des3 -out server.key 1024
# csr
openssl req -new -key server.key -out server.csr
# remove passphrase from key
cp server.key server.key.org
openssl rsa -in server.key.org -out server.key
# ssl
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt

cat server.key > /etc/webmin/miniserv.pem
cat server.crt >> /etc/webmin/miniserv.pem

rm ./server.*