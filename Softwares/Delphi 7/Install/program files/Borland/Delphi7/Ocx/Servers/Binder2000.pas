unit Binder2000;

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
// File generated on 6/19/2002 9:57:33 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: d:\source\delphi.latest\typelib\typelib\typelibraries\msbdr9.olb (1)
// LIBID: {D0237635-6A9A-101B-B5A0-00AA004A2F7E}
// LCID: 0
// Helpfile: d:\source\delphi.latest\typelib\typelib\typelibraries\vbabdr8.hlp
// HelpString: Microsoft Binder 9.0 Object Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINNT\System32\stdole2.tlb)
// Errors:
//   Hint: Member 'Object' of 'Section' changed to 'Object_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of Sections.Add changed to 'Type_'
//   Hint: Member 'Object' of 'Section' changed to 'Object_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Error creating palette bitmap of (TBinder) : No Server registered for this CoClass
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

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  OfficeBinderMajorVersion = 9;
  OfficeBinderMinorVersion = 0;

  LIBID_OfficeBinder: TGUID = '{D0237635-6A9A-101B-B5A0-00AA004A2F7E}';

  IID__Binder: TGUID = '{D02375D0-6A9A-101B-B5A0-00AA004A2F7E}';
  IID_Section: TGUID = '{4E3B07C8-7F20-101B-B5BC-00AA004A2F7E}';
  IID_Sections: TGUID = '{E842DBF0-849F-101B-B5CB-00AA004A2F7E}';
  IID_PageSetup: TGUID = '{9F136940-E95C-11CE-9733-00AA00B8CD01}';
  CLASS_Binder: TGUID = '{59850400-6664-101B-B21C-00AA004BA90B}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum BindPrintWhat
type
  BindPrintWhat = TOleEnum;
const
  bindPrintActiveSection = $00000001;
  bindPrintVisibleSections = $00000002;
  bindPrintSelectedSections = $00000003;
  bindPrintSectionSubset = $00000004;

// Constants for enum BindPageSetupPrintWhat
type
  BindPageSetupPrintWhat = TOleEnum;
const
  bindPageSetupVisibleSections = $00000002;
  bindPageSetupSelectedSections = $00000003;

// Constants for enum BindPrintNumbering
type
  BindPrintNumbering = TOleEnum;
const
  bindConsecutivePages = $00000001;
  bindRestartEachSection = $00000002;

// Constants for enum BindSaveOption
type
  BindSaveOption = TOleEnum;
const
  bindFailIfFileExists = $00000001;
  bindOverwriteExisting = $00000002;
  bindDisplayDialog = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _Binder = interface;
  _BinderDisp = dispinterface;
  Section = interface;
  SectionDisp = dispinterface;
  Sections = interface;
  SectionsDisp = dispinterface;
  PageSetup = interface;
  PageSetupDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Binder = _Binder;


// *********************************************************************//
// Interface: _Binder
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D02375D0-6A9A-101B-B5A0-00AA004A2F7E}
// *********************************************************************//
  _Binder = interface(IDispatch)
    ['{D02375D0-6A9A-101B-B5A0-00AA004A2F7E}']
    function Get_Name: WideString; safecall;
    function Get_Path: WideString; safecall;
    function Get_ActiveSection: Section; safecall;
    function Get_Sections: Sections; safecall;
    procedure Open(const FileName: WideString; OpenAsTemplate: OleVariant); safecall;
    procedure Save; safecall;
    function SaveAs(FileName: OleVariant; SaveOption: BindSaveOption): WordBool; safecall;
    procedure PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; FirstPage: OleVariant; 
                       Sections: OleVariant; FileName: OleVariant; PrinterName: OleVariant; 
                       DriverName: OleVariant; NoPrinting: OleVariant); safecall;
    function Get_SelectedSectionNames: OleVariant; safecall;
    procedure Set_SelectedSectionNames(pvarSASectionNames: OleVariant); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pboolVisible: WordBool); safecall;
    function Get_LeftPane: WordBool; safecall;
    procedure Set_LeftPane(pboolLeftPane: WordBool); safecall;
    function Get_BuiltinDocumentProperties: IDispatch; safecall;
    function Get_CustomDocumentProperties: IDispatch; safecall;
    function Get_PageSetup: PageSetup; safecall;
    function Get_DisplayStatusBar: WordBool; safecall;
    procedure Set_DisplayStatusBar(pboolStatusBar: WordBool); safecall;
    function Get_DisplayAlerts: WordBool; safecall;
    procedure Set_DisplayAlerts(pboolAlerts: WordBool); safecall;
    function Get_DisplayLeftPaneAndButton: WordBool; safecall;
    procedure Set_DisplayLeftPaneAndButton(pboolLeftPane: WordBool); safecall;
    function Get_DefaultFilePath: WideString; safecall;
    procedure Set_DefaultFilePath(const pbstrBinderPath: WideString); safecall;
    function Get_SinglePrintJob: WordBool; safecall;
    procedure Set_SinglePrintJob(pboolSinglePrintJobState: WordBool); safecall;
    procedure Close(SaveChanges: OleVariant; FileName: OleVariant); safecall;
    procedure ViewOpenMode; safecall;
    procedure ExitOpenMode; safecall;
    property Name: WideString read Get_Name;
    property Path: WideString read Get_Path;
    property ActiveSection: Section read Get_ActiveSection;
    property Sections: Sections read Get_Sections;
    property SelectedSectionNames: OleVariant read Get_SelectedSectionNames;
    property Visible: WordBool read Get_Visible;
    property LeftPane: WordBool read Get_LeftPane;
    property BuiltinDocumentProperties: IDispatch read Get_BuiltinDocumentProperties;
    property CustomDocumentProperties: IDispatch read Get_CustomDocumentProperties;
    property PageSetup: PageSetup read Get_PageSetup;
    property DisplayStatusBar: WordBool read Get_DisplayStatusBar;
    property DisplayAlerts: WordBool read Get_DisplayAlerts;
    property DisplayLeftPaneAndButton: WordBool read Get_DisplayLeftPaneAndButton;
    property DefaultFilePath: WideString read Get_DefaultFilePath;
    property SinglePrintJob: WordBool read Get_SinglePrintJob;
  end;

// *********************************************************************//
// DispIntf:  _BinderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D02375D0-6A9A-101B-B5A0-00AA004A2F7E}
// *********************************************************************//
  _BinderDisp = dispinterface
    ['{D02375D0-6A9A-101B-B5A0-00AA004A2F7E}']
    property Name: WideString readonly dispid 0;
    property Path: WideString readonly dispid 1610743809;
    property ActiveSection: Section readonly dispid 1610743810;
    property Sections: Sections readonly dispid 1610743811;
    procedure Open(const FileName: WideString; OpenAsTemplate: OleVariant); dispid 1610743812;
    procedure Save; dispid 1610743813;
    function SaveAs(FileName: OleVariant; SaveOption: BindSaveOption): WordBool; dispid 1610743814;
    procedure PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; FirstPage: OleVariant; 
                       Sections: OleVariant; FileName: OleVariant; PrinterName: OleVariant; 
                       DriverName: OleVariant; NoPrinting: OleVariant); dispid 1610743815;
    property SelectedSectionNames: OleVariant readonly dispid 1610743816;
    property Visible: WordBool readonly dispid 1610743818;
    property LeftPane: WordBool readonly dispid 1610743820;
    property BuiltinDocumentProperties: IDispatch readonly dispid 1610743822;
    property CustomDocumentProperties: IDispatch readonly dispid 1610743823;
    property PageSetup: PageSetup readonly dispid 1610743824;
    property DisplayStatusBar: WordBool readonly dispid 1610743825;
    property DisplayAlerts: WordBool readonly dispid 1610743827;
    property DisplayLeftPaneAndButton: WordBool readonly dispid 1610743829;
    property DefaultFilePath: WideString readonly dispid 1610743831;
    property SinglePrintJob: WordBool readonly dispid 1610743833;
    procedure Close(SaveChanges: OleVariant; FileName: OleVariant); dispid 1610743835;
    procedure ViewOpenMode; dispid 1610743836;
    procedure ExitOpenMode; dispid 1610743837;
  end;

// *********************************************************************//
// Interface: Section
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4E3B07C8-7F20-101B-B5BC-00AA004A2F7E}
// *********************************************************************//
  Section = interface(IDispatch)
    ['{4E3B07C8-7F20-101B-B5BC-00AA004A2F7E}']
    procedure PrintOut; safecall;
    function Get_Parent: _Binder; safecall;
    procedure Delete; safecall;
    function Get_Index: SYSINT; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(pboolVisible: WordBool); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Name(const pbstrSectionName: WideString); safecall;
    function Get_Object_: IDispatch; safecall;
    procedure Activate; safecall;
    procedure Move(Before: OleVariant; After: OleVariant); safecall;
    function Copy(Before: OleVariant; After: OleVariant): Section; safecall;
    procedure SaveAs(const FileName: WideString); safecall;
    function Get_type_: WideString; safecall;
    procedure Update; safecall;
    function Get_HasBinderHeaderFooter: WordBool; safecall;
    procedure Set_HasBinderHeaderFooter(pboolHdrFtr: WordBool); safecall;
    function Get_SupportsBinderHeaderFooter: WordBool; safecall;
    property Parent: _Binder read Get_Parent;
    property Index: SYSINT read Get_Index;
    property Visible: WordBool read Get_Visible;
    property Name: WideString read Get_Name write Set_Name;
    property Object_: IDispatch read Get_Object_;
    property type_: WideString read Get_type_;
    property HasBinderHeaderFooter: WordBool read Get_HasBinderHeaderFooter;
    property SupportsBinderHeaderFooter: WordBool read Get_SupportsBinderHeaderFooter;
  end;

// *********************************************************************//
// DispIntf:  SectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4E3B07C8-7F20-101B-B5BC-00AA004A2F7E}
// *********************************************************************//
  SectionDisp = dispinterface
    ['{4E3B07C8-7F20-101B-B5BC-00AA004A2F7E}']
    procedure PrintOut; dispid 1610743808;
    property Parent: _Binder readonly dispid 1610743809;
    procedure Delete; dispid 1610743810;
    property Index: SYSINT readonly dispid 1610743811;
    property Visible: WordBool readonly dispid 1610743812;
    property Name: WideString dispid 0;
    property Object_: IDispatch readonly dispid 1610743816;
    procedure Activate; dispid 1610743817;
    procedure Move(Before: OleVariant; After: OleVariant); dispid 1610743818;
    function Copy(Before: OleVariant; After: OleVariant): Section; dispid 1610743819;
    procedure SaveAs(const FileName: WideString); dispid 1610743820;
    property type_: WideString readonly dispid 1610743821;
    procedure Update; dispid 1610743822;
    property HasBinderHeaderFooter: WordBool readonly dispid 1610743823;
    property SupportsBinderHeaderFooter: WordBool readonly dispid 1610743825;
  end;

// *********************************************************************//
// Interface: Sections
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E842DBF0-849F-101B-B5CB-00AA004A2F7E}
// *********************************************************************//
  Sections = interface(IDispatch)
    ['{E842DBF0-849F-101B-B5CB-00AA004A2F7E}']
    function Get_Count: SYSINT; safecall;
    function Get_Parent: _Binder; safecall;
    function Get_Item(Index: OleVariant): Section; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Add(Type_: OleVariant; FileName: OleVariant; Before: OleVariant; After: OleVariant): Section; safecall;
    property Count: SYSINT read Get_Count;
    property Parent: _Binder read Get_Parent;
    property Item[Index: OleVariant]: Section read Get_Item; default;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

// *********************************************************************//
// DispIntf:  SectionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E842DBF0-849F-101B-B5CB-00AA004A2F7E}
// *********************************************************************//
  SectionsDisp = dispinterface
    ['{E842DBF0-849F-101B-B5CB-00AA004A2F7E}']
    property Count: SYSINT readonly dispid 1610743808;
    property Parent: _Binder readonly dispid 1610743809;
    property Item[Index: OleVariant]: Section readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    function Add(Type_: OleVariant; FileName: OleVariant; Before: OleVariant; After: OleVariant): Section; dispid 1610743812;
  end;

// *********************************************************************//
// Interface: PageSetup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F136940-E95C-11CE-9733-00AA00B8CD01}
// *********************************************************************//
  PageSetup = interface(IDispatch)
    ['{9F136940-E95C-11CE-9733-00AA00B8CD01}']
    function Get_Parent: _Binder; safecall;
    function Get_PrintWhat: BindPageSetupPrintWhat; safecall;
    procedure Set_PrintWhat(pWhat: BindPageSetupPrintWhat); safecall;
    function Get_Numbering: BindPrintNumbering; safecall;
    procedure Set_Numbering(pNumbering: BindPrintNumbering); safecall;
    function Get_FirstPage: Integer; safecall;
    procedure Set_FirstPage(pFirstPage: Integer); safecall;
    function Get_LeftHeader: WideString; safecall;
    procedure Set_LeftHeader(const pbstrHdr: WideString); safecall;
    function Get_CenterHeader: WideString; safecall;
    procedure Set_CenterHeader(const pbstrHdr: WideString); safecall;
    function Get_RightHeader: WideString; safecall;
    procedure Set_RightHeader(const pbstrHdr: WideString); safecall;
    function Get_LeftFooter: WideString; safecall;
    procedure Set_LeftFooter(const pbstrFtr: WideString); safecall;
    function Get_CenterFooter: WideString; safecall;
    procedure Set_CenterFooter(const pbstrFtr: WideString); safecall;
    function Get_RightFooter: WideString; safecall;
    procedure Set_RightFooter(const pbstrFtr: WideString); safecall;
    property Parent: _Binder read Get_Parent;
    property PrintWhat: BindPageSetupPrintWhat read Get_PrintWhat;
    property Numbering: BindPrintNumbering read Get_Numbering;
    property FirstPage: Integer read Get_FirstPage;
    property LeftHeader: WideString read Get_LeftHeader;
    property CenterHeader: WideString read Get_CenterHeader;
    property RightHeader: WideString read Get_RightHeader;
    property LeftFooter: WideString read Get_LeftFooter;
    property CenterFooter: WideString read Get_CenterFooter;
    property RightFooter: WideString read Get_RightFooter;
  end;

// *********************************************************************//
// DispIntf:  PageSetupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F136940-E95C-11CE-9733-00AA00B8CD01}
// *********************************************************************//
  PageSetupDisp = dispinterface
    ['{9F136940-E95C-11CE-9733-00AA00B8CD01}']
    property Parent: _Binder readonly dispid 1610743808;
    property PrintWhat: BindPageSetupPrintWhat readonly dispid 1610743809;
    property Numbering: BindPrintNumbering readonly dispid 1610743811;
    property FirstPage: Integer readonly dispid 1610743813;
    property LeftHeader: WideString readonly dispid 1610743815;
    property CenterHeader: WideString readonly dispid 1610743817;
    property RightHeader: WideString readonly dispid 1610743819;
    property LeftFooter: WideString readonly dispid 1610743821;
    property CenterFooter: WideString readonly dispid 1610743823;
    property RightFooter: WideString readonly dispid 1610743825;
  end;

// *********************************************************************//
// The Class CoBinder provides a Create and CreateRemote method to          
// create instances of the default interface _Binder exposed by              
// the CoClass Binder. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBinder = class
    class function Create: _Binder;
    class function CreateRemote(const MachineName: string): _Binder;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBinder
// Help String      : 
// Default Interface: _Binder
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBinderProperties= class;
{$ENDIF}
  TBinder = class(TOleServer)
  private
    FIntf:        _Binder;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TBinderProperties;
    function      GetServerProperties: TBinderProperties;
{$ENDIF}
    function      GetDefaultInterface: _Binder;
  protected
    procedure InitServerData; override;
    function Get_Name: WideString;
    function Get_Path: WideString;
    function Get_ActiveSection: Section;
    function Get_Sections: Sections;
    function Get_SelectedSectionNames: OleVariant;
    procedure Set_SelectedSectionNames(pvarSASectionNames: OleVariant);
    function Get_Visible: WordBool;
    procedure Set_Visible(pboolVisible: WordBool);
    function Get_LeftPane: WordBool;
    procedure Set_LeftPane(pboolLeftPane: WordBool);
    function Get_BuiltinDocumentProperties: IDispatch;
    function Get_CustomDocumentProperties: IDispatch;
    function Get_PageSetup: PageSetup;
    function Get_DisplayStatusBar: WordBool;
    procedure Set_DisplayStatusBar(pboolStatusBar: WordBool);
    function Get_DisplayAlerts: WordBool;
    procedure Set_DisplayAlerts(pboolAlerts: WordBool);
    function Get_DisplayLeftPaneAndButton: WordBool;
    procedure Set_DisplayLeftPaneAndButton(pboolLeftPane: WordBool);
    function Get_DefaultFilePath: WideString;
    procedure Set_DefaultFilePath(const pbstrBinderPath: WideString);
    function Get_SinglePrintJob: WordBool;
    procedure Set_SinglePrintJob(pboolSinglePrintJobState: WordBool);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Binder);
    procedure Disconnect; override;
    procedure Open(const FileName: WideString); overload;
    procedure Open(const FileName: WideString; OpenAsTemplate: OleVariant); overload;
    procedure Save;
    function SaveAs(FileName: OleVariant; SaveOption: BindSaveOption): WordBool;
    procedure PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering); overload;
    procedure PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; FirstPage: OleVariant); overload;
    procedure PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; FirstPage: OleVariant; 
                       Sections: OleVariant); overload;
    procedure PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; FirstPage: OleVariant; 
                       Sections: OleVariant; FileName: OleVariant); overload;
    procedure PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; FirstPage: OleVariant; 
                       Sections: OleVariant; FileName: OleVariant; PrinterName: OleVariant); overload;
    procedure PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; FirstPage: OleVariant; 
                       Sections: OleVariant; FileName: OleVariant; PrinterName: OleVariant; 
                       DriverName: OleVariant); overload;
    procedure PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; FirstPage: OleVariant; 
                       Sections: OleVariant; FileName: OleVariant; PrinterName: OleVariant; 
                       DriverName: OleVariant; NoPrinting: OleVariant); overload;
    procedure Close; overload;
    procedure Close(SaveChanges: OleVariant); overload;
    procedure Close(SaveChanges: OleVariant; FileName: OleVariant); overload;
    procedure ViewOpenMode;
    procedure ExitOpenMode;
    property DefaultInterface: _Binder read GetDefaultInterface;
    property Name: WideString read Get_Name;
    property Path: WideString read Get_Path;
    property ActiveSection: Section read Get_ActiveSection;
    property Sections: Sections read Get_Sections;
    property SelectedSectionNames: OleVariant read Get_SelectedSectionNames write Set_SelectedSectionNames;
    property BuiltinDocumentProperties: IDispatch read Get_BuiltinDocumentProperties;
    property CustomDocumentProperties: IDispatch read Get_CustomDocumentProperties;
    property PageSetup: PageSetup read Get_PageSetup;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property LeftPane: WordBool read Get_LeftPane write Set_LeftPane;
    property DisplayStatusBar: WordBool read Get_DisplayStatusBar write Set_DisplayStatusBar;
    property DisplayAlerts: WordBool read Get_DisplayAlerts write Set_DisplayAlerts;
    property DisplayLeftPaneAndButton: WordBool read Get_DisplayLeftPaneAndButton write Set_DisplayLeftPaneAndButton;
    property DefaultFilePath: WideString read Get_DefaultFilePath write Set_DefaultFilePath;
    property SinglePrintJob: WordBool read Get_SinglePrintJob write Set_SinglePrintJob;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBinderProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBinder
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBinderProperties = class(TPersistent)
  private
    FServer:    TBinder;
    function    GetDefaultInterface: _Binder;
    constructor Create(AServer: TBinder);
  protected
    function Get_Name: WideString;
    function Get_Path: WideString;
    function Get_ActiveSection: Section;
    function Get_Sections: Sections;
    function Get_SelectedSectionNames: OleVariant;
    procedure Set_SelectedSectionNames(pvarSASectionNames: OleVariant);
    function Get_Visible: WordBool;
    procedure Set_Visible(pboolVisible: WordBool);
    function Get_LeftPane: WordBool;
    procedure Set_LeftPane(pboolLeftPane: WordBool);
    function Get_BuiltinDocumentProperties: IDispatch;
    function Get_CustomDocumentProperties: IDispatch;
    function Get_PageSetup: PageSetup;
    function Get_DisplayStatusBar: WordBool;
    procedure Set_DisplayStatusBar(pboolStatusBar: WordBool);
    function Get_DisplayAlerts: WordBool;
    procedure Set_DisplayAlerts(pboolAlerts: WordBool);
    function Get_DisplayLeftPaneAndButton: WordBool;
    procedure Set_DisplayLeftPaneAndButton(pboolLeftPane: WordBool);
    function Get_DefaultFilePath: WideString;
    procedure Set_DefaultFilePath(const pbstrBinderPath: WideString);
    function Get_SinglePrintJob: WordBool;
    procedure Set_SinglePrintJob(pboolSinglePrintJobState: WordBool);
  public
    property DefaultInterface: _Binder read GetDefaultInterface;
  published
    property Visible: WordBool read Get_Visible write Set_Visible;
    property LeftPane: WordBool read Get_LeftPane write Set_LeftPane;
    property DisplayStatusBar: WordBool read Get_DisplayStatusBar write Set_DisplayStatusBar;
    property DisplayAlerts: WordBool read Get_DisplayAlerts write Set_DisplayAlerts;
    property DisplayLeftPaneAndButton: WordBool read Get_DisplayLeftPaneAndButton write Set_DisplayLeftPaneAndButton;
    property DefaultFilePath: WideString read Get_DefaultFilePath write Set_DefaultFilePath;
    property SinglePrintJob: WordBool read Get_SinglePrintJob write Set_SinglePrintJob;
  end;
{$ENDIF}


implementation

uses ComObj;

class function CoBinder.Create: _Binder;
begin
  Result := CreateComObject(CLASS_Binder) as _Binder;
end;

class function CoBinder.CreateRemote(const MachineName: string): _Binder;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Binder) as _Binder;
end;

procedure TBinder.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{59850400-6664-101B-B21C-00AA004BA90B}';
    IntfIID:   '{D02375D0-6A9A-101B-B5A0-00AA004A2F7E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBinder.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _Binder;
  end;
end;

procedure TBinder.ConnectTo(svrIntf: _Binder);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBinder.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBinder.GetDefaultInterface: _Binder;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TBinder.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBinderProperties.Create(Self);
{$ENDIF}
end;

destructor TBinder.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBinder.GetServerProperties: TBinderProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBinder.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TBinder.Get_Path: WideString;
begin
    Result := DefaultInterface.Path;
end;

function TBinder.Get_ActiveSection: Section;
begin
    Result := DefaultInterface.ActiveSection;
end;

function TBinder.Get_Sections: Sections;
begin
    Result := DefaultInterface.Sections;
end;

function TBinder.Get_SelectedSectionNames: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.SelectedSectionNames;
end;

procedure TBinder.Set_SelectedSectionNames(pvarSASectionNames: OleVariant);
begin
  DefaultInterface.Set_SelectedSectionNames(pvarSASectionNames);
end;

function TBinder.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

procedure TBinder.Set_Visible(pboolVisible: WordBool);
begin
  DefaultInterface.Set_Visible(pboolVisible);
end;

function TBinder.Get_LeftPane: WordBool;
begin
    Result := DefaultInterface.LeftPane;
end;

procedure TBinder.Set_LeftPane(pboolLeftPane: WordBool);
begin
  DefaultInterface.Set_LeftPane(pboolLeftPane);
end;

function TBinder.Get_BuiltinDocumentProperties: IDispatch;
begin
    Result := DefaultInterface.BuiltinDocumentProperties;
end;

function TBinder.Get_CustomDocumentProperties: IDispatch;
begin
    Result := DefaultInterface.CustomDocumentProperties;
end;

function TBinder.Get_PageSetup: PageSetup;
begin
    Result := DefaultInterface.PageSetup;
end;

function TBinder.Get_DisplayStatusBar: WordBool;
begin
    Result := DefaultInterface.DisplayStatusBar;
end;

procedure TBinder.Set_DisplayStatusBar(pboolStatusBar: WordBool);
begin
  DefaultInterface.Set_DisplayStatusBar(pboolStatusBar);
end;

function TBinder.Get_DisplayAlerts: WordBool;
begin
    Result := DefaultInterface.DisplayAlerts;
end;

procedure TBinder.Set_DisplayAlerts(pboolAlerts: WordBool);
begin
  DefaultInterface.Set_DisplayAlerts(pboolAlerts);
end;

function TBinder.Get_DisplayLeftPaneAndButton: WordBool;
begin
    Result := DefaultInterface.DisplayLeftPaneAndButton;
end;

procedure TBinder.Set_DisplayLeftPaneAndButton(pboolLeftPane: WordBool);
begin
  DefaultInterface.Set_DisplayLeftPaneAndButton(pboolLeftPane);
end;

function TBinder.Get_DefaultFilePath: WideString;
begin
    Result := DefaultInterface.DefaultFilePath;
end;

procedure TBinder.Set_DefaultFilePath(const pbstrBinderPath: WideString);
  { Warning: The property DefaultFilePath has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DefaultFilePath := pbstrBinderPath;
end;

function TBinder.Get_SinglePrintJob: WordBool;
begin
    Result := DefaultInterface.SinglePrintJob;
end;

procedure TBinder.Set_SinglePrintJob(pboolSinglePrintJobState: WordBool);
begin
  DefaultInterface.Set_SinglePrintJob(pboolSinglePrintJobState);
end;

procedure TBinder.Open(const FileName: WideString);
begin
  DefaultInterface.Open(FileName, EmptyParam);
end;

procedure TBinder.Open(const FileName: WideString; OpenAsTemplate: OleVariant);
begin
  DefaultInterface.Open(FileName, OpenAsTemplate);
end;

procedure TBinder.Save;
begin
  DefaultInterface.Save;
end;

function TBinder.SaveAs(FileName: OleVariant; SaveOption: BindSaveOption): WordBool;
begin
  Result := DefaultInterface.SaveAs(FileName, SaveOption);
end;

procedure TBinder.PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering);
begin
  DefaultInterface.PrintOut(What, Numbering, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                            EmptyParam, EmptyParam);
end;

procedure TBinder.PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; FirstPage: OleVariant);
begin
  DefaultInterface.PrintOut(What, Numbering, FirstPage, EmptyParam, EmptyParam, EmptyParam, 
                            EmptyParam, EmptyParam);
end;

procedure TBinder.PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; 
                           FirstPage: OleVariant; Sections: OleVariant);
begin
  DefaultInterface.PrintOut(What, Numbering, FirstPage, Sections, EmptyParam, EmptyParam, 
                            EmptyParam, EmptyParam);
end;

procedure TBinder.PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; 
                           FirstPage: OleVariant; Sections: OleVariant; FileName: OleVariant);
begin
  DefaultInterface.PrintOut(What, Numbering, FirstPage, Sections, FileName, EmptyParam, EmptyParam, 
                            EmptyParam);
end;

procedure TBinder.PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; 
                           FirstPage: OleVariant; Sections: OleVariant; FileName: OleVariant; 
                           PrinterName: OleVariant);
begin
  DefaultInterface.PrintOut(What, Numbering, FirstPage, Sections, FileName, PrinterName, 
                            EmptyParam, EmptyParam);
end;

procedure TBinder.PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; 
                           FirstPage: OleVariant; Sections: OleVariant; FileName: OleVariant; 
                           PrinterName: OleVariant; DriverName: OleVariant);
begin
  DefaultInterface.PrintOut(What, Numbering, FirstPage, Sections, FileName, PrinterName, 
                            DriverName, EmptyParam);
end;

procedure TBinder.PrintOut(What: BindPrintWhat; Numbering: BindPrintNumbering; 
                           FirstPage: OleVariant; Sections: OleVariant; FileName: OleVariant; 
                           PrinterName: OleVariant; DriverName: OleVariant; NoPrinting: OleVariant);
begin
  DefaultInterface.PrintOut(What, Numbering, FirstPage, Sections, FileName, PrinterName, 
                            DriverName, NoPrinting);
end;

procedure TBinder.Close;
begin
  DefaultInterface.Close(EmptyParam, EmptyParam);
end;

procedure TBinder.Close(SaveChanges: OleVariant);
begin
  DefaultInterface.Close(SaveChanges, EmptyParam);
end;

procedure TBinder.Close(SaveChanges: OleVariant; FileName: OleVariant);
begin
  DefaultInterface.Close(SaveChanges, FileName);
end;

procedure TBinder.ViewOpenMode;
begin
  DefaultInterface.ViewOpenMode;
end;

procedure TBinder.ExitOpenMode;
begin
  DefaultInterface.ExitOpenMode;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBinderProperties.Create(AServer: TBinder);
begin
  inherited Create;
  FServer := AServer;
end;

function TBinderProperties.GetDefaultInterface: _Binder;
begin
  Result := FServer.DefaultInterface;
end;

function TBinderProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TBinderProperties.Get_Path: WideString;
begin
    Result := DefaultInterface.Path;
end;

function TBinderProperties.Get_ActiveSection: Section;
begin
    Result := DefaultInterface.ActiveSection;
end;

function TBinderProperties.Get_Sections: Sections;
begin
    Result := DefaultInterface.Sections;
end;

function TBinderProperties.Get_SelectedSectionNames: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.SelectedSectionNames;
end;

procedure TBinderProperties.Set_SelectedSectionNames(pvarSASectionNames: OleVariant);
begin
  DefaultInterface.Set_SelectedSectionNames(pvarSASectionNames);
end;

function TBinderProperties.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

procedure TBinderProperties.Set_Visible(pboolVisible: WordBool);
begin
  DefaultInterface.Set_Visible(pboolVisible);
end;

function TBinderProperties.Get_LeftPane: WordBool;
begin
    Result := DefaultInterface.LeftPane;
end;

procedure TBinderProperties.Set_LeftPane(pboolLeftPane: WordBool);
begin
  DefaultInterface.Set_LeftPane(pboolLeftPane);
end;

function TBinderProperties.Get_BuiltinDocumentProperties: IDispatch;
begin
    Result := DefaultInterface.BuiltinDocumentProperties;
end;

function TBinderProperties.Get_CustomDocumentProperties: IDispatch;
begin
    Result := DefaultInterface.CustomDocumentProperties;
end;

function TBinderProperties.Get_PageSetup: PageSetup;
begin
    Result := DefaultInterface.PageSetup;
end;

function TBinderProperties.Get_DisplayStatusBar: WordBool;
begin
    Result := DefaultInterface.DisplayStatusBar;
end;

procedure TBinderProperties.Set_DisplayStatusBar(pboolStatusBar: WordBool);
begin
  DefaultInterface.Set_DisplayStatusBar(pboolStatusBar);
end;

function TBinderProperties.Get_DisplayAlerts: WordBool;
begin
    Result := DefaultInterface.DisplayAlerts;
end;

procedure TBinderProperties.Set_DisplayAlerts(pboolAlerts: WordBool);
begin
  DefaultInterface.Set_DisplayAlerts(pboolAlerts);
end;

function TBinderProperties.Get_DisplayLeftPaneAndButton: WordBool;
begin
    Result := DefaultInterface.DisplayLeftPaneAndButton;
end;

procedure TBinderProperties.Set_DisplayLeftPaneAndButton(pboolLeftPane: WordBool);
begin
  DefaultInterface.Set_DisplayLeftPaneAndButton(pboolLeftPane);
end;

function TBinderProperties.Get_DefaultFilePath: WideString;
begin
    Result := DefaultInterface.DefaultFilePath;
end;

procedure TBinderProperties.Set_DefaultFilePath(const pbstrBinderPath: WideString);
  { Warning: The property DefaultFilePath has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DefaultFilePath := pbstrBinderPath;
end;

function TBinderProperties.Get_SinglePrintJob: WordBool;
begin
    Result := DefaultInterface.SinglePrintJob;
end;

procedure TBinderProperties.Set_SinglePrintJob(pboolSinglePrintJobState: WordBool);
begin
  DefaultInterface.Set_SinglePrintJob(pboolSinglePrintJobState);
end;

{$ENDIF}

end.
