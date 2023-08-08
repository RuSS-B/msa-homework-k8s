### Installation
`make helm.install`

### Before start 
Make sure to import postman_collection.json and switch it to K8S environment. The environment is configured for arch.homework:2080 host

### Usage

This app emulates a car service. When you leave your car to an operator he/she will enter the VIN code and license plate to the Database and status "open" will be assigned.

When the operator will try to send the request again and IF the car is still in the car service the same request id will be returned.
If the car is done (you may change it with set status endpoint) then you are able to register a new request for the same car