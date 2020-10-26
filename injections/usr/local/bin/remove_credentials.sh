#!/bin/sh

echo delprinc $prefix/$fqdn@^^kdc_domain^^  | kadmin.local 
r=$?

if test $r -eq 0 
 then
  rm -r /etc/krb5kdc/$prefix_$fqdn@^^kdc_domain^^ 
fi

exit $r

