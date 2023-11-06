# Shipment Tracking Lightning Web Component

Displays the latest status of the Shipment based on the tracking number of the Shipment (Order) record

## LWC

- shipmentStatus

## Apex

- ShipmentController.cls
- ShipmentService.cls

## Solution Notes

- When a Customer Service Representative views a shipment (order) page then the embedded LWC will be loaded 
- LWC will be using Lightning Data Service to fetch the loaded or current record data and then send the tracking number found on it to the external service.
- LWC will be using a controller class "ShipmentController". 
- Controller class will be calling a service class "ShipmentService". This is to follow the Apex Enterprise Patterns. Implementing one of the principles - Sepration Of Concerns. 
- Service Class will be make the REST API callout using external credentials.
