unit MSDATASRCXP;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 6/19/2002 4:58:04 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\WINNT\System32\msdatsrc.tlb (1)
// LIBID: {7C0FFAB0-CD84-11D0-949A-00A0C91110ED}
// LCID: 0
// Helpfile: 
// HelpString: Microsoft Data Source Interfaces
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINNT\System32\stdole2.tlb)
// Parent TypeLibrary:
//   (0) v9.0 Access, (h:\typelib\typelib\typelibraries\OfficeXP\msacc.olb)
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  MSDATASRCMajorVersion = 1;
  MSDATASRCMinorVersion = 0;

  LIBID_MSDATASRC: TGUID = '{7C0FFAB0-CD84-11D0-949A-00A0C91110ED}';

  IID_DataSourceListener: TGUID = '{7C0FFAB2-CD84-11D0-949A-00A0C91110ED}';
  IID_DataSource: TGUID = '{7C0FFAB3-CD84-11D0-949A-00A0C91110ED}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  DataSourceListener = interface;
  DataSource = interface;

// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PUserType1 = ^TGUID; {*}

  DataMember = WideString; 

// *********************************************************************//
// Interface: DataSourceListener
// Flags:     (272) Hidden OleAutomation
// GUID:      {7C0FFAB2-CD84-11D0-949A-00A0C91110ED}
// *********************************************************************//
  DataSourceListener = interface(IUnknown)
    ['{7C0FFAB2-CD84-11D0-949A-00A0C91110ED}']
    function dataMemberChanged(const bstrDM: DataMember): HResult; stdcall;
    function dataMemberAdded(const bstrDM: DataMember): HResult; stdcall;
    function dataMemberRemoved(const bstrDM: DataMember): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: DataSource
// Flags:     (256) OleAutomation
// GUID:      {7C0FFAB3-CD84-11D0-949A-00A0C91110ED}
// *********************************************************************//
  DataSource = interface(IUnknown)
    ['{7C0FFAB3-CD84-11D0-949A-00A0C91110ED}']
    function getDataMember(const bstrDM: DataMember; var riid: TGUID; out ppunk: IUnknown): HResult; stdcall;
    function getDataMemberName(lIndex: Integer; out pbstrDM: DataMember): HResult; stdcall;
    function getDataMemberCount(out plCount: Integer): HResult; stdcall;
    function addDataSourceListener(const pDSL: DataSourceListener): HResult; stdcall;
    function removeDataSourceListener(const pDSL: DataSourceListener): HResult; stdcall;
  end;

implementation

uses ComObj;

end.
