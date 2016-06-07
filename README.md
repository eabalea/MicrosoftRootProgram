# MicrosoftRootProgram

**Information gathered from [Ryan Hurst's blog](https://unmitigatedrisk.com/?p=259). Bookmark it.**

You need:
* cabextract
* perl with Convert::ASN1, JSON, and Text::Iconv modules

Run ./getitall.sh to download the authrootstl.cab file (which contains
all the Root Certificates trusted by Microsoft), and extract its
content.
