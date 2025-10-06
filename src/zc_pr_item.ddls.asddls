@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for pr item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_PR_ITEM
as projection on ZR_PR_ITEM
{
    key PrNumber,
    key FiscalYear,
    key ItemNo,
    Material,
    ShortText,
    @Semantics.quantity.unitOfMeasure : 'Uom'
    Quantity,
    Uom,
    CukyField,
    @Semantics.amount.currencyCode : 'CukyField'
    Price,
    @Semantics.amount.currencyCode : 'CukyField'
    NetValue,
    DelivDate,
    CreatedAt,
    _user.PersonFullName as CreatedBy,
    _pr : redirected to parent ZC_PR
}
