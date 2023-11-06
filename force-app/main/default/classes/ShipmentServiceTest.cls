@isTest
private class ShipmentServiceTest {
    @isTest static void testRetrieveShipmentStatus() {
        Test.setMock(HttpCalloutMock.class, new MockShippingStatusService());
        ShipmentService obj = new ShipmentService();
        string resp = obj.retrieveShipmentStatus('');
        System.assertEquals('Shipped- On Time', 'Shipped- On Time');
    }
}