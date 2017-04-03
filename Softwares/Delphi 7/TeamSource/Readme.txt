===============================================
TEAMSOURCE RELEASE NOTES
===============================================

This file contains important supplementary and 
late-breaking information that may not appear 
in the main product documentation. We recommend 
that you read this file in its entirety.


CONTENTS
===============================================
-- MINIMUM SYSTEM REQUIREMENTS
-- DOCUMENTATION
-- KNOWN ISSUES
-- UNINSTALLING THE PRODUCT


MINIMUM SYSTEM REQUIREMENTS
===============================================

This release is optimized for Microsoft 
Windows 98, 2000, and Windows NT 4.0. 
A full installation requires approximately 
4MB of hard disk space.

By default, this product is installed into 
\Program Files\Borland\TeamSource.


DOCUMENTATION AND EXAMPLES
===============================================

TeamSource online documentation is available by 
pressing F1 while using the product, or by 
running TeamSource Help from your Start menu or 
from its default installation location at 
\Program Files\Borland\TeamSource\Help.

To build the TeamSource examples (located 
in the \Source directory), you must install the
full Borland development product with which
TeamSource was shipped (either Delphi 6.0 or
C++Builder 5.0 or later). 

These projects have been built for you and all 
resulting files are located in the \Bin directory.


KNOWN ISSUES 
===============================================

PVCS controller and automatic merging
----------------------------------------------- 
The PVCS automatic merge feature does not 
support merging of binary files, including
Delphi and C++Builder forms stored in binary 
format. If you attempt to perform an automatic 
merge on these types of files, the files may 
be corrupted.

The workaround (for DFMs only) is to perform 
a manual merge using the View all changes 
command.

Stream write error
-----------------------------------------------
If you receive a "Stream write error" error when 
creating or reconciling a project, check the 
available disk space on the hard drive where the 
project's archives are located. This error often 
occurs when there is little or no disk space 
available where the project's archives and files 
are stored.
 
Novell NetWare v4.x, PVCS and DNS UNC paths
-----------------------------------------------
If you are using the Intersolv.PVCS controller 
for projects and you wish to specify a path for 
storing projects on a NetWare 4.1 DNS Server 
using the DNS tree notation, make sure that the 
ForceDriveLetters option for the controller is set 
to "No". This is the default setting. To view or 
change the setting, with your project open, 
obtain a lock on the project and select 
Project | Controllers.  Select Intersolv.PVCS 
and view the settings for the ForceDriveLetters 
option.

About ForceDriveLetters:
The ForceDriveLetters setting forces the PVCS
Version Controller interface to convert all UNC
filenames to standard DOS files internally, before
calling the PVCS DLLs. Under normal
circumstances, the PVCS DLLs support UNC path
names without problem. However, some
incompatibilities have been reported when using
some version of PVCS against Novell 4.1 DNS
servers. These incompatibilities manifest as
erratic behavior when checking in files. If you
see any unexplained problems checking in files to
a Novell 4.1 DNS server, try enabling the
ForceDriveLetters option.

PVCS controller and macros
-----------------------------------------------
If you are checking in files that have PVCS 
macros that will be expanded at the time the file 
is checked in, make sure that you have the Update 
local file on each checkin (get after put) option 
set. To view or change the settings for this 
option, select the Options | Preferences menu 
item and view the File Handling section of the 
General tab. This option is Off by default.

View panel icons require newest COMCTL library
-----------------------------------------------
If the icons on the View panel buttons don't
display (and the buttons appear "flat"), you'll
need to update your Windows Common Controls
library to a later version. The library
installation file 40COMUPD.EXE is provided in
the following locations:
-- If you installed TeamSource from the 
   Delphi or C++Builder CD, the installation file 
   is located in the /install directory on the CD.
-- If you installed TeamSource from its own
   CD, the file is on the CD root.
-- If you downloaded TeamSource from the Web,
   40COMUPD.EXE should be available as a
   separate download on the same page on which
   you downloaded the product.


UNINSTALLING THE PRODUCT
===============================================

To remove TeamSource from your computer, open 
the Control Panel folder and double-click the 
Add/Remove Programs icon. Select Borland 
TeamSource from the list, then click the 
Add/Remove button and follow the on-screen 
instructions.


===============================================
Copyright (c) 2001 Borland Software Corporation. 
All rights reserved.


