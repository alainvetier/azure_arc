@description('Name for your log analytics workspace')
param workspaceName string

@description('Azure Region to deploy the Log Analytics Workspace')
param location string = resourceGroup().location

@description('Specific Azure Region to deploy the Log Analytics Workspace, overrides the general location if specified')
param logAnalyticsLocation string = 'southeastasia'

@description('SKU, leave default pergb2018')
param sku string = 'pergb2018'

param resourceTags object

var workspaceLocation = empty(logAnalyticsLocation) ? location : logAnalyticsLocation

resource workspace 'Microsoft.OperationalInsights/workspaces@2021-06-01' = {
  name: workspaceName
  location: workspaceLocation
  properties: {
    sku: {
      name: sku
    }
  }
  tags: resourceTags
}
