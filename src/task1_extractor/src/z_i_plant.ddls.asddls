@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'S4A Base Plant Interface View'
define root view entity Z_I_PLANT as select from I_Plant {
  key Plant, PlantName, CompanyCode
}