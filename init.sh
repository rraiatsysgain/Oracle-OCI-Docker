#!/bin/bash
app_secret=$(<app_key.pem)
az login --service-principal -u $AZ_VAR_app_id --password $app_secret --tenant $AZ_VAR_tenant_id
