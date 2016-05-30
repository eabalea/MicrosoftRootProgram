#! /bin/bash

#curl -R -o disallowedcertstl.cab http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en/disallowedcertstl.cab
#curl -R -o disallowedcert.sst http://ctldl.windowsupdate.com/msdownload/update/v3/static/trustedr/en/disallowedcert.sst

curl -R -o authrootstl.cab http://www.download.windowsupdate.com/msdownload/update/v3/static/trustedr/en/authrootstl.cab
cabextract authrootstl.cab
# TODO: In theory, we should verify the CMS signature
# I don't use openssl cms/smime/pkcs7 tool because it can't handle
# that kind of object (or I'm stupid). Instead, I'm peeking into it
# like a pig
openssl asn1parse -inform D -in authroot.stl -strparse 63 -out ctl > /dev/null 2>&1
./parsectl.pl ctl

