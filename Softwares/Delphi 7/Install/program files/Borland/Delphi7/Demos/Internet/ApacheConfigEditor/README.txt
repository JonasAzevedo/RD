(ACE) Apache Configuration Editor

Adding ACE to the tools menu
============================

From Delphi
  Tools | Configure Tools
  Add
In the "Tools Properties Dialog"
  Title: "Add ModuleEntry to httpd.conf"
  Program: FullPath to ace.exe
  Working Dir: FullPath to of Director for ace.exe
  Params: "-s $NAMEONLY($EXENAME)_module -n $NAMEONLY($EXENAME)_module -f $EXENAME -l $NAMEONLY($EXENAME) -h $NAMEONLY($EXENAME)-handler"

Press OK
Press Close

Try it out.
-----------

  File | new | other | WebServerapplication --> Apache DSO
  Tools | Add ModuleEntry to httpd.conf

  You should now be propted for the location of httpd.conf
  Next you will see a dialog with the suggested entries
  Press OK

  The ApacheConfigEditor will now open
  Goto the DelphiEntry node to see your entry
  File | Save will save the entry to the conf file.
