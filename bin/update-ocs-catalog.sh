#!/bin/sh

#Find the latest full publish of the product catalog in the last 10 minutes (-mmin 10) and copy to the OCS catalog directory, then unzip
find /opt/tibco/psc-ebx/1.2.0/common/work/publish -name FullPublish_Product*  -mmin -10 -exec unzip -o {} -d ~/af/product \;

