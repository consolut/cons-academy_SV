$.context.SalesOrderItem = {

	"request": {},

	"response": {}
}

var body = {

	"LineItem": $.context.salesOrderDetails.item.lineItem,
	"Material": $.context.salesOrderDetails.item.material,
	"Quantity": $.context.salesOrderDetails.item.quantity

}
$.context.SalesOrderItem.request = body