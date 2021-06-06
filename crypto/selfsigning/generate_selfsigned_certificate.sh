#!/bin/bash
# Original instructions on : https://linoxide.com/how-to-create-self-signed-ssl-certificate/
sudo apt update && sudo apt install -y openssl
MY_KEY=my_key
MY_CSR=my_csr
MY_CERT=my_cert

echo "\nCreating my private key"
sudo openssl genrsa -out $MY_KEY.key
echo "\nCreate a certificate signing request"
sudo openssl req -new -key $MY_KEY.key -out $MY_CSR.csr -config san.cnf
echo "\nSigning my certificate by myself"
sudo openssl x509 -req -days 365 -in $MY_CSR.csr -signkey $MY_KEY.key -out $MY_CERT.crt
echo "\nVerifying the certificate"
openssl x509 -text -noout -in $MY_CERT.crt
sudo chown $USER $MY_KEY.key
sudo chown $USER $MY_CSR.csr
sudo chown $USER $MY_CERT.crt