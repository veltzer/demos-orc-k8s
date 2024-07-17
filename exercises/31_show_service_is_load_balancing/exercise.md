# Show service is load balancing

* Create an image of a python web server which returns a web page on which it's own IP is written

* Run two of the above and expose them via a service (see the service exercise).

* Show that when accessing the service you get the first pod interleaved with the second. This means that the service is doing load balancing.
