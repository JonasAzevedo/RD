Readme (Readme.txt)
InterClient 2.50 Final Build
Last modified: Nov 19, 2001
(Windows version)

Contents:
     o Where's the documentation?
     o What is InterClient?
     o Compatibilities
     o How to obtain InterClient updates
     o Configuration
     o Testing your configuration

__________________________________________________________________
Where's the documentation?

The complete HTML documentation can be accessed from the file
index.html in your InterClient docs directory.  On Windows, the
InterClient program group contains an icon for the InterClient
documentation.

__________________________________________________________________
What is InterClient?

InterClient is an all-Java JDBC driver for InterBase.

InterClient is a networked driver, meaning that it incorporates a
JDBC remote protocol for exchanging and caching data between
client and server.  This allows for a browser enabled client with
no preinstalled client libraries (such as ODBC) to access
InterBase data across the net.  This differs from a JDBC bridge
which maps from the JDBC API to some native RDBMS client API or
ODBC.  A JDBC bridge implementation relies on the RDBMS client
library for the actual exchange and caching of data between
server and client.

The advantage of a networked driver over a bridge implementation
is that the client is 100% pure Java, thereby providing for
cross-platform, robust, and secure applets.  Whereas a bridge
implementation requires some binary code to be pre-loaded on each
client machine, contrary to the notion of an applet.

The JDBC remote protocol employed by InterClient is streamlined
for JDBC data access, and is database independent except in cases
where InterBase access can be optimized or proprietary InterBase
features may be leveraged.

__________________________________________________________________
Compatibilities

Neither InterBase nor InterServer need to be installed on
the client machine, nor even InterClient if running applets.

InterClient 2.50 is compatible with the
    Java Development Kit (JDK) 1.3
    InterServer 2.50 and InterBase v5 and v6
    Tested with 
    	Windows NT 4.0, 2000, XP, 98 and ME
	Solaris 2.6 and 7
	Linux

__________________________________________________________________
How to obtain InterClient updates

Periodic revisions and other information are made available on the 
Borland InterBase web site at http://www.borland.com/interbase

__________________________________________________________________
Configuration

   On both Windows and Unix, the following
   entry must appear in the services file.

             interserver 3060/tcp

   The TCP/IP services file was modified as a part of the
   installation.  You can add the above line manually if you
   decided not to have setup make the modifications for you.

   The services file can be located as follows:
    *  Windows NT/2000/XP <WINDOWS_DIR>\system32\drivers\etc\services
    *  Windows 98/ME   <WINDOWS_DIR>\services
    *  Unix               /etc/services or an NIS services map
                
   For Unix only, an entry in the /etc/inetd.conf file is also required:

     interserver stream tcp nowait root /usr/interclient/bin/interserver 
interserver

   The CLASSPATH environment variable should be updated to include
           <INSTALL_DIR>\interclient.jar

   These configurations should be performed automatically by the
   Windows install program.  The class path configuration for
   Unix must be performed manually.

__________________________________________________________________
Testing your configuration

   See the Troubleshooting section of the InterClient Help html for
   detailed instructions on testing your machine configuration for
   running InterClient applications using

     java interbase.interclient.utils.CommDiag

   and for instructions on testing your applet configuration using

     CommDiag.html

__________________________________________________________________
Copyright (c) 2001 Borland Software Corporation
All rights reserved.

