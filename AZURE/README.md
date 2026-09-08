# Azure App Service Plan Infrastructure

This Bicep code provisions an Azure App Service Plan (SKU: B1) to host web applications.

## Prerequisites
- Azure CLI installed and authenticated (`az login`).
- An existing Azure Resource Group.

## How to deploy
1. Preview the changes:
   `az deployment group what-if --resource-group <resource-group-name> --template-file main.bicep --parameters main.bicepparam`
2. Apply the changes:
   `az deployment group create --resource-group <resource-group-name> --template-file main.bicep --parameters main.bicepparam`

## Parameters
- `appServicePlanName`: The name of the App Service Plan.
- `location`: The Azure region to deploy to (defaults to the resource group's location).
