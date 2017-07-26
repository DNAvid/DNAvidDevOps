 openssl genrsa -out dnavid.key 2048
 openssl req -new -sha256 -key dnavid.key -out dnavid.csr
 ## Use dnavid.csr for obtaining the new certificates
 
