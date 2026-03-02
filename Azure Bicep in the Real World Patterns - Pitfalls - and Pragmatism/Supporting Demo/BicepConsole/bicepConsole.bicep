// Setup

var aiConnectionString = 'InstrumentationKey=<key>;IngestionEndpoint=https://<region>.in.applicationinsights.azure.com/;LiveEndpoint=https://<region>.livediagnostics.monitor.azure.com/;ApplicationId=<ID>'

var aiIngestionURL =  '${split(filter(split(aiConnectionString, ';'), val => contains(val, 'IngestionEndpoint='))[0], '=')[1]}v2/track'
