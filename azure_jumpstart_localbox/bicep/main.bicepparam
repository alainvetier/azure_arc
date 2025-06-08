using './main.bicep'

param tenantId = '<your tenant id>'
param spnProviderId = '<your Microsoft.AzureStackHCI resource provider object id>'
param windowsAdminUsername = 'arcdemo'
param windowsAdminPassword = '<your password>'
param logAnalyticsWorkspaceName = 'LocalBox-Workspace'
param natDNS = '8.8.8.8'
param githubAccount = 'alainvetier'
param githubBranch = 'main'
param deployBastion = false
param location = 'indonesiacentral'
param azureLocalInstanceLocation = 'southeastasia'
param rdpPort = '3389'
param autoDeployClusterResource = true
param autoUpgradeClusterResource = false
param vmAutologon = true
param vmSize = 'Standard_E32s_v5'
param enableAzureSpotPricing = true
param governResourceTags = true
param tags = {
  Project: 'jumpstart_LocalBox'
}
