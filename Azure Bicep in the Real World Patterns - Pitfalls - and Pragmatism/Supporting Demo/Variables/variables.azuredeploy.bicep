/**********************************
Bicep Template: Variables
Author: Andrew Wilson
***********************************/

targetScope = 'resourceGroup'

// ** Shared Imports **
// ********************

import {keyVaultSecretsUserRoleDefId} from '../Library/IaC/Common/variables.bicep'

// ** Variables **
// ***************

// Multi-Environment Deployments
var environmentConfig = {
  dev: {
    sku: 'Basic'
  }
  staging: {
    sku: 'Standard'
  }
  prod: {
    sku: 'Premium'
  }
}

// Organisational Standards
var mandatoryTags = {
  costCenter: 'IT-001'
  dataClassification: 'internal'
  businessUnit: 'engineering'
  version: deployment().properties.template.contentVersion
}

// Object or Resource Configurations
var subnetConfigurations = [
  {
    name: 'web-subnet'
    addressPrefix: '10.0.1.0/24'
    serviceEndpoints: ['Microsoft.Storage', 'Microsoft.KeyVault']
  }
  {
    name: 'api-subnet'
    addressPrefix: '10.0.2.0/24'
    serviceEndpoints: ['Microsoft.Sql', 'Microsoft.KeyVault']
  }
]

// var keyVaultSecretsUserRoleDefId = '4633458b-17de-408a-b874-0445c86b69e6'

// ** Resources **
// ***************



// ** Outputs **
// *************
