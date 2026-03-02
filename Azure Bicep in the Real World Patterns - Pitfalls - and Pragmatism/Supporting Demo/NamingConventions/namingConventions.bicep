/***************************************
Bicep Template: Main Deploy
Author: Andrew Wilson
****************************************/

targetScope = 'resourceGroup'

// ** Shared Imports **
// ********************

import { newCoreParams } from '../Library/IaC/Common/types.bicep'
import * as newName from '../Library/IaC/Common/nameConventionFunctions.bicep'

// ** Parameters **
// ****************

@description('Location to deploy resources to')
param location string

@description('Location Short Name for resource naming')
param locationShortName string

@description('Environment to deploy to')
param environment string = 'dev'

@description('Project Prefix for resource naming')
param projectPrefix string = 'myproject'

// ** Variables **
// ***************

var coreParameters = newCoreParams(location, locationShortName, environment, projectPrefix)

// Standard Logic App Resource Names
var logicAppName = newName.basicResource('logic', coreParameters)
var appServicePlanName = newName.csResource('asp', coreParameters, 'lg')
var storageAccountName = newName.storageAccountResource(coreParameters, 'lg')

// ** Generated Names **
// *********************

// Logic App: logic-myproject-dev-ukwest
// App Service Plan: asp-myproject-lg-dev-ukwest
// Storage Account: stmyprojectlgdevukw
