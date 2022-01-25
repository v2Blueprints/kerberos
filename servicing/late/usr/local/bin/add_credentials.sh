#!/bin/sh

echo addprinc -randkey $prefix/$fqdn@^^kdc_domain^^ | kadmin.local
r=$?
  
 if test $r -ne 0
  then
   echo "Failed to create principle  $prefix/$fqdn@^^kdc_domain^^ "
   exit $r
fi

  echo ktadd -k /etc/krb5kdc/$fqdn $prefix_$fqdn@^^kdc_domain^^  | kadmin.local
  cat /etc/krb5kdc/$prefix_$fqdn@^^kdc_domain^^ 