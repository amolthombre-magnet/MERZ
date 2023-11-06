import { LightningElement, api , wire } from 'lwc';
import { getRecord,getFieldValue } from 'lightning/uiRecordApi';
import ORDER_TRACKINGNUMBER_FIELD from '@salesforce/schema/Order.TrackingNumber__c';
import getStatus from "@salesforce/apex/ShipmentController.getStatus";

const FIELDS = [ORDER_TRACKINGNUMBER_FIELD];

export default class ShipmentStatus extends LightningElement {
    @api recordId;
    trackingNumber;
    
    @wire(getRecord, { recordId: "$recordId", fields: FIELDS })
    getOrder({ error, data}){
        if (data) {
            this.trackingNumber = getFieldValue(data, ORDER_TRACKINGNUMBER_FIELD);
        }
        if (error) {
            this.error = error;
        }
    };

    @wire(getStatus, { trackingNumber: trackingNumber })
    shipmentStatus;
}