@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'S4A Base Storage Location Interface View'
define root view entity Z_I_STORAGELOCATION as select from I_StorageLocation {
  key Plant, key StorageLocation, StorageLocationName
}