/*
*********************************************************
Apex Class Name    : ShipmentController
Created Date       : Nov 4, 2023
@description       : This is a controller for Shipment Status LWC
@author            : Amol Thombre
Modification Log:
Ver   Date         Author                               Modification
1.0   11-03-2023   Amol Thombre                      Initial Version
*********************************************************
*/

public with sharing class ShipmentController {

    /*
    *********************************************************
    @Method Name    : getStatus
    @author         : Amol Thombre
    @description    : method is used to get the shipment status
    @param          : tracking number
    @return         : status
    ********************************************************
    */
    @AuraEnabled(cacheable=true)
    public static string getStatus(string trackingNumber) {
        ShipmentService obj = new ShipmentService();
        return obj.retrieveShipmentStatus(trackingNumber);
    }
}