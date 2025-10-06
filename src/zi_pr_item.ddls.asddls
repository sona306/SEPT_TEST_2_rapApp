@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for pr items'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_PR_ITEM as select from zdb_pr_items
{
    key pr_number as PrNumber,
    key fiscal_year as FiscalYear,
    key item_no as ItemNo,
    material as Material,
    short_text as ShortText,
    @Semantics.quantity.unitOfMeasure : 'Uom'
    quantity as Quantity,
    uom as Uom,
    cuky_field as CukyField,
    @Semantics.amount.currencyCode : 'CukyField'
    price as Price,
    @Semantics.amount.currencyCode : 'CukyField'
    net_value as NetValue,
    deliv_date as DelivDate,
    created_at as CreatedAt,
    created_by as CreatedBy
}
