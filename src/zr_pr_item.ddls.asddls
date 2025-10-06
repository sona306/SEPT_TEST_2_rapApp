@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for pr items'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_PR_ITEM 
as select from ZI_PR_ITEM
association to parent ZR_PR  as _pr
on $projection.PrNumber = _pr.PrNumber and $projection.FiscalYear = _pr.FiscalYear
association to I_BusinessUserBasic as _user on $projection.CreatedBy= _user.UserID
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
    @Semantics.systemDateTime.createdAt: true
    CreatedAt,
    @Semantics.user.createdBy: true
    CreatedBy,
   _pr ,
   _user
}

