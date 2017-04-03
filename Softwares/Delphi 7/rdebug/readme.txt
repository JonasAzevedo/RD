
DELPHI/C++BUILDER REMOTE DEBUGGING NOTES


============================================================

SECURITY WARNING:

Running the Remote Debugger allows anyone with a copy of
Delphi or C++Builder to access your computer and run
applications or debug or kill processes.

If the Remote Debugger is started from the command line,
intruders can access processes with the same rights as the
user who started the debugger. If started as a service under
Windows NT or Windows 2000, intruders will also have access
to system services.

Note that this security issue applies only to the Remote
Debugger, not the Local Debugger supplied with this product.


============================================================

These notes explain how to use remote debugging with
C++Builder or Delphi. Run this setup program on all systems
where remote programs will be running. The Delphi or
C++Builder IDE is not required on remote machines.

On Windows NT, Windows 2000 or Windows XP, Remote Debugging 
can be run either as a program or as a service. On Windows 
95 or Windows 98, it can only be run as a program.

To run as a program, run "bordbg70.exe -listen" from either
a DOS box or a shortcut. If installed as a service,
communication between the debugger and the remote
application is handled automatically.

To start a remote debugging session, use the IDE on your
local machine and set the following options:

For Delphi only:

* Project|Options|Linker
 Include remote debug symbols box must be checked.

* Project|Options|Directories/Conditionals
 Output directory can be set to a shared directory on the
 remote machine. If you do not set this up, you need to
 copy the .exe and .rsm files onto the   remote machine.

For C++Builder only:

* Project|Options|Directories/Conditionals
 Final output directory can be set to a shared directory on
 the remote machine. If you do not set this up, you need to
 copy the .exe and .tds files onto the remote machine.

For either product:

* Run|Parameters|Remote
 Set the Remote Path to the remote directory and .exe name.
 Example: d:\temp\proj1.exe, where d:\temp is a directory
 on the remote machine. The drive and directory do not have
 to match the   project directory on the local machine.

* Run|Parameters|Remote
 Set the Remote Host to the DNS machine name or to the IP
 address of the machine on which you installed the remote
 debugger server. If you check Debug project on remote
 machine and click OK, all debugger commands start a remote
 debugging session for the current project. If you do not
 check this option, you must click the Load button on this
 dialog to start a remote debugging session. This also lets
 you debug an .exe that is already set up on the remote
 machine without having to open the project associated with
 it.


============================================================

IMPORTANT:

The default installation location for the remote debugging
library file BORDBK70.DLL is:
C:\Program Files\Common Files\Borland Shared\Debugger

The file is installed to this location even if you choose a
different location for the other debugger files during the
installation process. (All other remote debugger files are
installed to a 'bin' directory under the directory you
choose.)

The only case in which BORDBK70.DLL is installed elsewhere
is when the file is already installed and registered to a
different location.


============================================================
Copyright © 2002 Borland Software Corporation.
All rights reserved.

