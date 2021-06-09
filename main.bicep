@minLength(3)
@maxLength(24)
param storageName string

resource sto 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageName
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  
}
