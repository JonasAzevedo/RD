Windows XP Application Wizard:
------------------------------

This wizard enables you to create projects that will participate in the new XP Themes look.

It creates a manifest file for your project and adds it to the executable as a resource.

To install the wizard follow these steps:

1. Open XPAppWiz.dpk

2. Click Compile and then Install in the Package dialog (click OK to confirm).

5. Save and close all.

That's it. 

To create a new XP Application just click: File | New | Other and in the New page select "XP Application".

If you need to modify the manifest file with your company's details you will have to recompile the resource file that come with this wizard.

You can recompile the resources using Borland's resource compiler. For example: typying "brcc32 DelphiXP.rc -r -32" at the command line prompt. Remember to recompile DelphiXp.rc first or your manifest changes will not be included inside XPAPPRES.res. 


