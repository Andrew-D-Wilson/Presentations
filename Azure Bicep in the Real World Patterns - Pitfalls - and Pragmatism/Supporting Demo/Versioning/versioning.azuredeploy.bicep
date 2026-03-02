/**********************************
Bicep Template: Versioning
Author: Andrew Wilson
***********************************/

targetScope = 'resourceGroup'

// ** Parameters **
// ****************

// ** Variables **
// ***************

// ** Resources **
// ***************

resource storageAccount 'Microsoft.Storage/storageAccounts@2025-06-01' = {
  name: 'awversioningexample'
  location: resourceGroup().location
  kind: 'StorageV2'
  tags: {
    version: deployment().properties.template.contentVersion
  }
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}

// ** Outputs **
// *************
