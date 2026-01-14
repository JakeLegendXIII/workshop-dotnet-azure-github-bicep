@allowed(['dev', 'prod'])
param environment string

targetScope = 'resourceGroup'

var location = 'centralus'

var myName = 'JakeLegendXIII'
var appNameWithEnvironment = 'workshop-dnazghbicep-${myName}-${environment}'

module appService 'appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: appNameWithEnvironment
    location: location
    environment: environment
  }
}