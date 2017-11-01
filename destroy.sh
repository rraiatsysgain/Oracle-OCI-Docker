#!/bin/bash
az group delete --name "RG_$AZ_VAR_deployment_short_id" --yes -y
