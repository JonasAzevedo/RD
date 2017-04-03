SOAPHeaders
===========

The SOAPHeaders sample illustrates the use of Headers for authentication and
Session Management. It's a very simplified Bank Account service.

The Service is currently configured to timeout sessions in 60 secs. The value
was purposefully set very low to illustrate this aspect. Also, the data in
the Authentication Header was kept simple and is not encrypted.

The Server utilizes an .XML file to keep track of users. If you utilize the
CGI flavor, please make sure that the application has the proper rights to create
and update the XML file.




