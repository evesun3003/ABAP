@EndUserText.label: 'S4A Storage Location Projection View'
@AccessControl.authorizationCheck: #CHECK
define root view entity Z_C_STORAGELOCATION provider contract transactional_query as projection on Z_I_STORAGELOCATION {
  @EndUserText.label: 'Plant ID'
  key Plant as PlantId,
  @EndUserText.label: 'Storage Location ID'
  key StorageLocation as StorageLocationId,
  StorageLocationName as StorageLocationName
}