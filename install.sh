#!/bin/bash
wget -o soln.zip $TEMPLATE_URL
wget -o bmcs_api_key.pem $PRIVATE_KEY_URL
v=$(unzip soln.zip | grep -m1 'creating:' | cut -d' ' -f5-)
v="$v."
cp -r $v .
