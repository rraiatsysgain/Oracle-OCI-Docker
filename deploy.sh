#!/bin/bash
az group deployment create \
--name "Deployment_$AZ_VAR_deployment_short_id" \
--mode Complete \
--resource-group "RG_$AZ_VAR_deployment_short_id" \
--template-file azuredeploy.json \
--parameters azuredeploy.parameters.json