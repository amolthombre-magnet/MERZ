/*
*********************************************************
Apex Class Name    : ShipmentService
Created Date       : Nov 4, 2023
@description       : This is a Service Class for order related use cases.
@author            : Amol Thombre
Modification Log:
Ver   Date         Author                               Modification
1.0   11-03-2023   Amol Thombre                      Initial Version
*********************************************************
*/

public with sharing class ShipmentService {
    
    /*
    *********************************************************
    @Method Name    : retrieveShipmentStatus
    @author         : Amol Thombre
    @description    : method is used to retrieve the shipment status by making an external callout
    @param          : tracking number
    @return         : status
    ********************************************************
    */

    public String retrieveShipmentStatus(string trackingNumber){
        string shipmentStatus='';
        string method = 'GET'; 
        string endpoint = 'callout:ShipmentTrackingCallout/mockShipmentStatus?trackingNumber='+trackingNumber;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod(method);
        request.setEndpoint(endpoint);
        HttpResponse response = http.send(request);
        if (response.getStatusCode() == 200) {
            shipmentStatus = response.getBody();
        }
        return shipmentStatus;
    }
}

