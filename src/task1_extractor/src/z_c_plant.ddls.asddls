@EndUserText.label: 'S4A Plant Projection View'
@AccessControl.authorizationCheck: #CHECK
define root view entity Z_C_PLANT provider contract transactional_query as projection on Z_I_PLANT {
  @EndUserText.label: 'Plant ID'
  key Plant as PlantId,
  PlantName as PlantName,
  CompanyCode as CompanyCode
}