=======================================================
              README FOR INTERBASE 6.5
=======================================================

________________________________
Documentation and Release Notes

For a description of new features, supported operating
systems and changes in InterBase 6.5, use Acrobat
Reader 4.x to view the ReleaseNotes.pdf file.

This version of Reader is included on your InterBase
6.5 CD-ROM. You can also download it from
http://www.adobe.com/prodindex/acrobat/readstep.html
If you go directly to this Adobe site, be sure to
download the version "With Search", not the plain
version.

_____________________________
***Install***

Before you install, read the install.txt files for your
respective operating systems.

_____________________________
Known issues in InterBase 6.5


I.  Install Issue with Windows 2000

  If you have a previous version of InterBase 6.5 on your
  computer, you will need to follow these steps before
  you install:

  1.  Go to Services and shut down InterBase Guardian 
      and Server.
  2.  CLOSE THE SERVICES APPLICATION.  This looks like
      a Win2k bug, if you do not close this the install
      will fail until you reboot.
  3.  Go to Control Panel and Launch "Add-Remove Programs"
  4.  Remove InterBase.
  5.  Delete the full InterBase directory.
  6.  Delete gds32.dll from c:\winnt\system32
  7.  Now install InterBase.

II.  Performance Issue with Windows ME/XP

  Microsoft has implemented a backup and restore utility
  called System Restore.  Unfortunalty they have decide
  to backup the default InterBase file extension 'GDB'.
  This is causing Performance problems on these systems
  because these every time a *.gdb file is attached to and
  modified it is automatically getting backed up.

  We have developed the following workarounds for this issue:

  1.  Turn off system restore.
    a.  Go to "Start"
    b.  Right click on "My Computer"
    c.  Select "Properties"
    d.  Select the "Restore" tab
    e.  Check the "Turn off System Restore on all drives" box
  2.  Install InterBase on it's own hard drive or partition and turn
      off Restore on the drive.
    a.  Go to "Start"
    b.  Right click on "My Computer"
    c.  Select "Properties"
    d.  Select the "Restore" tab
    e.  In "Drive settings" area select the drive you installed InterBase.
    f.  Select the "Settings..." button
    g.  Check "Turn off System Restore on this drive"
  3.  Make isc4.gdb read only and don't use new *.gdb files.
    a.  Run "gfix -mode read_only"
    b.  Please note:  This will disable gsec and other utilities
        from making security changes.  You will have to use 
        "gfix -mode read_write" to modify isc4.gdb.
  4.  Our open source community has found a possible 
      workaround by editing its FileList.xml file that lists file
      extension to be restored.  This file is located in 
      c:\windows\system\restore on most systems.  However this
      workaround is not recommended and may infringe on licensing 
      issues on your operating system.

For Bugs Fixed, future updates, and current information
on issues for InterBase 6.5, please go to our Community site:
http://community.borland.com/interbase

___________________________
Uninstalling InterBase 6.5

The Windows InterBase install/uninstall allows you to choose
between performing a complete install/uninstall or selecting
individual components. If you install a subset of the
components, you can run the install again later to add
more components.

__________________________
Migration

If you have a previous version of InterBase (5.6 and older)
YOU MUST BACKUP YOUR OLD DATABASE FILES!  There are no known
cases of data corruption, but you should always backup
your files before you install InterBase 6.5.

InterBase 6 used a new On-Disk Structure (ODS), ODS 10,
databases created with InterBase 5 used ODS 9.1.  To 
take advantage of new InterBase 6 features, YOU MUST
use gbak to back up any databases that you intend to use
with the Version 6 software.  V5 databases can be backed
up using V5 gbak. Once a database has been converted to
ODS 10, it cannot be converted back to earlier versions
of the ODS.

InterBase 6.5 uses ODS 10.1 and will automatically upgrade any
InterBase 6.0 (ODS 10.0) database to the current ODS 10.1.  
Though this 'automatic' migration as been thoroughly tested we 
still strongly recommend you backup your database before you
install InterBase 6.5.  

__________________________
Tutorial

Because of popular demand, we have included tutorial.pdf
in this release.  This file contains valuable lessons on
InterBase.  The document was written for InterBase 5 
and doesn't mention InterBase 6.5, however the information
is still true for 6.5 and customers will find it valuable.


-------------------------------------
Copyright (c) 2001 Borland Software Corporation
All rights reserved.

