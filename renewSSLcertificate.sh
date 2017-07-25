 openssl genrsa -out renewCertificate.key 2048
 openssl req -new -sha256 -key renewCertificate.key -out dnavid.csr
 ## Use dnavid.csr for obtaining the new certificates
 
