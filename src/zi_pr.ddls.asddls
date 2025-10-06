@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for pr'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_PR as select from zdb_pr
{
    key pr_number as PrNumber,
    key fiscal_year as FiscalYear,
    status as Status,
    currency as Currency,
    @Semantics.amount.currencyCode : 'Currency'
    total_value as TotalValue,
    explanation as Explanation,
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt,
    @Semantics.user.createdBy: true
    created_by as CreatedBy
}
    
  
    
