$.context.SalesOrderHeader = {

   "request" : {},

   "response" : {}

}
var body = {

	"SoldToParty": $.context.salesOrderDetails.shipToParty,

	"SalesOrderType": $.context.salesOrderDetails.salesOrderType,

	"TotalNetAmount": $.context.salesOrderDetails.orderAmount.toString(),

	"SalesOrganization": $.context.salesOrderDetails.salesOrganisation,

	"DistributionChannel": $.context.salesOrderDetails.distributionChannel,

	"OrganizationDivision": $.context.salesOrderDetails.division

}
$.context.SalesOrderHeader.request = body
