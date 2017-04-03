EchoService Demo
================

This demos illustrates sendings simple types [integers, TDateTime, etc] and
complex types [Remotable classes, arrays] to a Server that echoes
back the value. It also illustrates sending and receiving attachments.


The Demo consists of the EchoService Server in the './server' directory and
the EchoService Client in the './Client' directory.


TOC
=================================
a. Compile
b. Deploy/Configure Servers
   - IIS setup (CGI)
   - Apache Setup (CGI)
   - WebAppDebugger Setup
c. Run Client
   - SimpleTypes
   - ArrayTypes
   - Structure
   - Attachment


a. Compile
===========
To compile this demo open up the EchoService.bpg
Project | Build All Projects

b. Deploy/Configure Servers
============================
This demo has two Server Target types
 * CGI          server/EchoService_CGI.dpr
 * WebAppDbgr   server/EchoService_WAD.dpr

IIS setup
---------
 Goto the IIS ControlPanel.....
  Rt.Click on My computer and select Manage
  Expand the "Servers and applications" node
  Expand the "Internet Information Server" node
  Select "Default WebSite"
  RightClick on "Default WebSite"
    Select New--> Virtual Directory
    Next
    Set Alias to  "EchoService"
    Next
    Set Directory to <DelphiPath>\Demos\WebServices\EchoService\server
    Next
    Check {Read, Run, Execute, Browse}
    Next, Finish
  From a webBrowser
   Go to http://localhost/echoservice/
   You should see the contents of the Server directory
   Click on EchoService_CGI.exe
     Expect: Default webPage
     Click on the IEchoService wsdl link
     (if in IE or NS6) you should now see the WSDL

Apache Setup
------------
  Copy the CGI application, EchoServer_CGI.exe to your <Apache>\cgi-bin directory.
  From a webBrowser
   Go to http://localhost/cgi-bin/EchoServer_CGI.exe
     Expect: Default webPage
     Click on the IEchoService wsdl link
     (if in IE or NS6) you should now see the WSDL

WebAppDebugger Setup
--------------------
  First run the Server to register it
  Goto Windows Explorer and run
    <DelphiPath>\Demos\WebServices\EchoService\server\EchoServer_WAD.exe
  Close the app
  Start the WebAppDebugger
  From the DelphiIDE: Tools| WebAppDebugger
  Press Start
  From a WebBrowser goto http://localhost:1024
  select EchoService_WAD.test_app and press go
    Expect: Default webPage
     Click on the IEchoService wsdl link
     (if in IE) you should now see the WSDL


c. Run Client
==============
  Run the EchoService_Client.exe from delphi
  or Goto Windows Explorer and run
    <DelphiPath>\Demos\WebServices\EchoService\Client\EchoServer_Client.exe
  In the "ServerURL" Combo Box select the service you wish to use
  Press Connect
  When connected the caption should read "Connected to : xxxxx"

SimpleTypes
-----------
  Set Values on the left, press button
  Return Values will be on the right

ArrayTypes
-----------
  Set Send Values
  Press buttons to send/receive

Structure
----------
  Set Values on the left, press button
  Return Values will be on the right

Attachment
-----------
  NOTE: The attachment portion allows the Client to view a list of Files
        available on the Server. The server defaults to a '..\Data' directory
        from its current location. If you deployed the CGI flavor of the server,
        make sure to create a ..\Data directory and move a few image files
        there to exercise this aspect of the sample.

  Press GetList button
        <This will fill the listbox with the files available on the server>
  Select file on Server from "Available Files"
  Press GetAttachement
    Save to desired directory
    Image will load in image viewer
  Press SendAttachemnt
    Select a bmp from your system
    MsgBox will tell you when finished
    Press GetList to view uploaded files













