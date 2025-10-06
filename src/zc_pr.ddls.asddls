@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for pr'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_PR
provider contract transactional_query
as projection on ZR_PR
{
    key PrNumber,
    key FiscalYear,
    Status,
    Statuscriticality,
    Currency,
    @Semantics.amount.currencyCode : 'Currency'
    TotalValue,
    Explanation,
    CreatedAt,
    _user.PersonFullName as CreatedBy,
    /* Associations */
    _Item : redirected to composition child ZC_PR_ITEM
}
