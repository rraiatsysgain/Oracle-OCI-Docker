#!/bin/bash
az login --service-principal -u $AZ_VAR_app_id --password $AZ_VAR_app_secret --tenant $AZ_VAR_tenant_id
