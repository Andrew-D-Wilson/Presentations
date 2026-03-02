/**********************************
Bicep Template: Function Namespaces
Author: Andrew Wilson
***********************************/

targetScope = 'resourceGroup'


// ** Parameters **
// ****************

@description('The environment name used for resource deployments')
param environment string

// ** Variables **
// ***************

var storageAccountName = '${environment}awversioningexample'

// ** Resources **
// ***************

resource storageAccount 'Microsoft.Storage/storageAccounts@2025-06-01' = {
  name: storageAccountName
  location: resourceGroup().location
  tags: {
    environment: environment
  }
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}

// ** Outputs **
// *************
