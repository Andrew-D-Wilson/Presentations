

resource st4lg 'Microsoft.Storage/storageAccounts@2025-06-01' = {
  name: 'awversioningexample'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}

