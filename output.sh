#!/bin/bash

az resource list -g "RG_$AZ_VAR_deployment_short_id" -o table