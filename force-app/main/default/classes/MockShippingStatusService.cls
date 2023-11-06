@isTest
global class MockShippingStatusService implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest request) {
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('Shipped- On Time');
        response.setStatusCode(200);
        return response; 
    }
}