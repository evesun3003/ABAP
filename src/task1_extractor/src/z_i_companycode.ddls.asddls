@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'S4A Base Company Code Interface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_COMPANYCODE as select from I_CompanyCode {
  key CompanyCode, CompanyCodeName, Country, Currency
}