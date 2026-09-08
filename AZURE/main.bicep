@description('The name of the Azure App Service Plan')
param appServicePlanName string

@description('The location for the resources')
param location string = resourceGroup().location

resource appServicePlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: 'B1'
    tier: 'Basic'
  }
}

output appServicePlanId string = appServicePlan.id
