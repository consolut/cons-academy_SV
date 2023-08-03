$.context.SalesOrderHeader = {

   "request" : {},

   "response" : {}

}
var body = {

	"SoldToParty": $.context.shipToParty,

	"SalesOrderType": $.context.salesOrderType,

	"TotalNetAmount": $.context.orderAmount.toString(),

	"SalesOrganization": $.context.salesOrganisation,

	"DistributionChannel": $.context.distributionChannel,

	"OrganizationDivision": $.context.division

}
$.context.SalesOrderHeader.request = body
