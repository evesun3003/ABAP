@EndUserText.label: 'S4A Company Code Projection View'
@AccessControl.authorizationCheck: #CHECK
define root view entity Z_C_COMPANYCODE provider contract transactional_query as projection on Z_I_COMPANYCODE {
  @EndUserText.label: 'Company Code ID'
  key CompanyCode as CompanyCode,
  CompanyCodeName as CompanyName,
  Country as Country,
  Currency as Currency
}