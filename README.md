# Azure Storage Account Infrastructure

This Bicep code provisions a standard Azure Storage Account with LRS redundancy.

## Prerequisites
- Azure CLI installed and authenticated (`az login`).
- An existing Azure Resource Group.

## How to deploy
1. Preview the changes:
   `az deployment group what-if --resource-group <resource-group-name> --template-file main.bicep --parameters main.bicepparam`
2. Apply the changes:
   `az deployment group create --resource-group <resource-group-name> --template-file main.bicep --parameters main.bicepparam`

## Variables
- `storageAccountName`: The globally unique name for the Azure Storage account.
- `location`: The Azure region to deploy to (defaults to the resource group's location).
