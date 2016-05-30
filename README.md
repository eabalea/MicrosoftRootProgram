# MicrosoftRootProgram

You need:
* cabextract
* perl with Convert::ASN1, JSON, and Text::Iconv modules

Run ./getitall.sh to download the authrootstl.cab file (which contains
all the Root Certificates trusted by Microsoft), and extract its
content.
