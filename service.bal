import ballerina/log;
import ballerina/http;

const port = 9090;

service /users on new http:Listener(port) {

    resource function get all() returns json|error {
        // Send a response back to the caller.

        log:printInfo("START - get all users");
        http:Client httpEndpoint = check new ("https://gorest.co.in");
        json|error getResponse = check httpEndpoint->get("/public/v2/users");
        log:printInfo("END - get all users");
        return getResponse;
    }
}
