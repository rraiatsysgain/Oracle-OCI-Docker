#!/bin/bash

az group deployment validate \
--resource-group "RG_$AZ_VAR_deployment_short_id" \
--template-file azuredeploy.json \
--parameters azuredeploy.parameters.json