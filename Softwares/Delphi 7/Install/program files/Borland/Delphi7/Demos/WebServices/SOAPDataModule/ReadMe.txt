SOAPDataModule Demo
===================

This demo illustrates basic SOAPDataModule - aka MIDAS over SOAP. The Server
is available in CGI and WebAppDebugger flavors.

Server
======
The Server utilizes the XMLTransformProvider. The Server looks for it's data files
in the directory '..\Data'. If you deploy the CGI flavor, make sure to copy the
Data files to a '..\Data' directory relative to the location of your CGI applications.
Or update the sample's TDataMod.SoapDataModuleCreate [in DataMod_U.pas] to use
a different location for the data files.

The WebAppDebugger flavor of the Server does not require any special setup as long
as it's run from it's original location.


Client
======
The Client illustrates access to the data exposed by the SOAP DataModule WebService
as well as access to custom methods of the Service.




