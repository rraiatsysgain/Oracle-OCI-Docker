#!/bin/bash
wget $TEMPLATE_URL -O soln.zip

unzip soln.zip
#wget $PRIVATE_KEY_URL -O bmcs_api_key.pem
#v=$(unzip soln.zip | grep -m1 'creating:' | cut -d' ' -f5-)
#v="$v."
#cp -r $v .
