@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view for pr'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_PR 
as select from ZI_PR
composition[0..*] of ZR_PR_ITEM as _Item
association to I_BusinessUserBasic as _user on $projection.CreatedBy= _user.UserID
{
    key PrNumber,
    key FiscalYear,
    cast(case Status
      when 'Approved' then 3
      when 'Canceled' then 2
      when 'Rejected' then 1
      when 'Submitted' then 3
      else 0
      end as abap.int4) as Statuscriticality,
    Status,
    Currency,
    @Semantics.amount.currencyCode : 'Currency'
    TotalValue,
    Explanation,
    @Semantics.systemDateTime.createdAt: true
    CreatedAt,
    @Semantics.user.createdBy: true
    CreatedBy,
    _Item ,
    _user
}

