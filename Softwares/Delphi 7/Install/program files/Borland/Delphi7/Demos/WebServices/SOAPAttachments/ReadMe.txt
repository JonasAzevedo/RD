This program provides a simple example of a soap application 
with attachments.  There are two projects, a server project
(DBAttachServer.dpr) and a Client project (SoapDBAttachClient.dpr).

The server has a simple interface with two methods:
1.  function GetCommonNames() which returns all of the names of 
	fishes in the BIOLIFE sample (an interbase gdb file).
2.  function GetSpeciesInfo(), which returns a .bmp for the any 
	common name passed to.  This function also fills the 
	TSpeciesInfo object, an out param.
The server needs to be built and deployed (typically to c:\inetpub\scripts).

Next, the client needs to be rebuilt.  
1.  The file "IDBAttachments1.pas" was obtained by importing the service
using the WSDLImporter, and it assumes that the server is deployed at
"http://localhost/scripts/".  If this is not the case you can either
change the const values in the function:
   GetIDBAttachments(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IDBAttachments;
to reflect the location of the server you have deployed.  Alternatively,
you can:
  a.  Project/Remove, "IBAttachments.pas"
  b.  Use the WSDLImporter (File/New/Other/WebServices/WSDL-Importer),
  type in the http location of your server:
   http://YourMachineName/scripts/DBAttachServer.exe/wsdl/IDBAttachments
   Hit <next>, then <finish>
  c.  File/Save-As "IDBAttachments1.pas".
2.  You are now ready to build and run your client.  The Listbox will be filled
with common names of fish by calling IDBAttachments.GetCommonNames,
and when you double click on a fishname, you'll get an image returned
as an attachment and more inforation on the fish.

Heads Up!
1.  The server needs to use the BIOLIFE.CDS included with this demo.
	Other versions of BIOLIFE store the picture data in a 
	format not usable by a TImage.  
2.  Use the SoapAttachDemo.ini to specify the location of the 
	BIOLIFE.CDS.  This .ini file must be in the same location 
	as the deployed server (typically in c:\inetpub\scripts) 
	on a Windows machine.).
