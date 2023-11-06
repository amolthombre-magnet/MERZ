@isTest 
private class ShipmentControllerTest {
    @isTest static void testGetStatus() {
        string trackingNumber = '123';
        Test.setMock(HttpCalloutMock.class, new MockShippingStatusService());
        string resp = ShipmentController.getStatus(trackingNumber);
        System.assertEquals('Shipped- On Time', 'Shipped- On Time');
    }
    
}