unit Chartfx3;

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

// PASTLWTR : 1.1
// File generated on 1/10/00 8:07:31 PM from Type Library described below.

// ************************************************************************ //
// Type Lib: c:\winnt\system32\cfx32.ocx (1)
// IID\LCID: {8996B0A4-D7BE-101B-8650-00AA003A5593}\0
// Helpfile: C:\WINNT\System32\CFX2OCX.HLP
// DepndLst: 
//   (1) v1.0 stdole, (C:\WINNT\System32\stdole32.tlb)
//   (2) v1.0 StdVCL, (C:\WINNT\System32\STDVCL32.DLL)
//   (3) v2.0 StdType, (C:\WINNT\System32\olepro32.dll)
// Errors:
//   Hint: Member 'Type' of '_DChartfx' changed to 'Type_'
//   Hint: Member 'Const' of '_DChartfx' changed to 'Const_'
//   Hint: Member 'Type' of '_DChartfx' changed to 'Type_'
//   Hint: Member 'Const' of '_DChartfx' changed to 'Const_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WRITEABLECONST ON}
{$WARN SYMBOL_PLATFORM OFF}

interface

uses Windows, ActiveX, Classes, Graphics, OleServer, OleCtrls, StdVCL;

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  ChartfxLibMajorVersion = 2;
  ChartfxLibMinorVersion = 0;

  LIBID_ChartfxLib: TGUID = '{8996B0A4-D7BE-101B-8650-00AA003A5593}';

  DIID__DChartfx: TGUID = '{2DC488B0-D891-101B-8652-00AA003A5593}';
  DIID__DChartfxEvents: TGUID = '{2DC488B1-D891-101B-8652-00AA003A5593}';
  CLASS_Chartfx: TGUID = '{8996B0A1-D7BE-101B-8650-00AA003A5593}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum PointTypeConstants
type
  PointTypeConstants = TOleEnum;
const
  CHART_NONEMK = $00000000;
  CHART_RECTMK = $00000001;
  CHART_CIRCLEMK = $00000002;
  CHART_TRIANGLEMK = $00000003;
  CHART_MARBLEMK = $00000004;
  CHART_CUBEMK = $00000005;
  CHART_MANYMK = $00000006;

// Constants for enum SchemeConstants
type
  SchemeConstants = TOleEnum;
const
  CHART_CSSOLID = $00000000;
  CHART_CSBWPATTERN = $00000001;
  CHART_CSPATTERN = $00000002;

// Constants for enum StackedConstants
type
  StackedConstants = TOleEnum;
const
  CHART_NOSTACKED = $00000000;
  CHART_STACKED = $00000001;
  CHART_STACKED100 = $00000002;

// Constants for enum GridConstants
type
  GridConstants = TOleEnum;
const
  CHART_NOGRID = $00000000;
  CHART_HORZGRID = $00000001;
  CHART_VERTGRID = $00000002;
  CHART_BOTHGRID = $00000003;
  CHART_GRIDY2 = $00000004;

// Constants for enum GalleryConstants
type
  GalleryConstants = TOleEnum;
const
  LINES = $00000001;
  BAR = $00000002;
  SPLINE = $00000003;
  MARK = $00000004;
  PIE = $00000005;
  AREA = $00000006;
  PARETO = $00000007;
  SCATTER = $00000008;
  HILOW = $00000009;

// Constants for enum ConstTypeConstants
type
  ConstTypeConstants = TOleEnum;
const
  CC_HIDETEXT = $00000001;
  CC_HIDE = $00000002;

// Constants for enum LegendStyleConstants
type
  LegendStyleConstants = TOleEnum;
const
  CL_NOTCLIPPED = $00000001;
  CL_NOTCHANGECOLOR = $00000002;
  CL_HIDE = $00000004;
  CL_HIDEXLEG = $00000004;
  CL_FORCESERLEG = $00000008;
  CL_GETLEGEND = $00000010;
  CL_HIDEYLEG = $00000020;

// Constants for enum OpenDataConstants
type
  OpenDataConstants = TOleEnum;
const
  COD_VALUES = $00000001;
  COD_CONSTANTS = $00000002;
  COD_COLORS = $00000003;
  COD_STRIPES = $00000004;
  COD_INIVALUES = $00000005;
  COD_XVALUES = $00000006;
  COD_STATUSITEMS = $00000007;
  COD_UNKNOWN = $FFFFFFFF;
  COD_UNCHANGE = $00000000;

// Constants for enum ClickConstants
type
  ClickConstants = TOleEnum;
const
  CHART_BALLOONCLK = $00000000;
  CHART_DIALOGCLK = $00000001;
  CHART_NONECLK = $00000002;
  CHART_MENUCLK = $00000003;

// Constants for enum DialogConstants
type
  DialogConstants = TOleEnum;
const
  CDIALOG_EXPORTFILE = $0000000E;
  CDIALOG_IMPORTFILE = $0000000F;
  CDIALOG_WRITETEMPLATE = $00000008;
  CDIALOG_READTEMPLATE = $00000009;
  CDIALOG_PAGESETUP = $00000004;
  CDIALOG_ABOUT = $0000000B;
  CDIALOG_OPTIONS = $0000000C;
  CDIALOG_EDITTITLES = $00000023;
  CDIALOG_FONTS = $00000027;
  CDIALOG_ROTATE = $00000034;

// Constants for enum AdmConstants
type
  AdmConstants = TOleEnum;
const
  CSA_MIN = $00000000;
  CSA_MAX = $00000001;
  CSA_GAP = $00000002;
  CSA_SCALE = $00000003;
  CSA_YLEGGAP = $00000004;
  CSA_PIXXVALUE = $00000005;
  CSA_XMIN = $00000006;
  CSA_XMAX = $00000007;
  CSA_XGAP = $00000008;
  CSA_LOGBASE = $00000009;

// Constants for enum TitleConstants
type
  TitleConstants = TOleEnum;
const
  CHART_LEFTTIT = $00000000;
  CHART_RIGHTTIT = $00000001;
  CHART_TOPTIT = $00000002;
  CHART_BOTTOMTIT = $00000003;

// Constants for enum FontConstants
type
  FontConstants = TOleEnum;
const
  CHART_LEFTFT = $00000000;
  CHART_RIGHTFT = $00000001;
  CHART_TOPFT = $00000002;
  CHART_BOTTOMFT = $00000003;
  CHART_XLEGFT = $00000004;
  CHART_YLEGFT = $00000005;
  CHART_FIXEDFT = $00000006;
  CHART_LEGENDFT = $00000007;

// Constants for enum ItemConstants
type
  ItemConstants = TOleEnum;
const
  CI_HORZGRID = $00000000;
  CI_VERTGRID = $00000001;

// Constants for enum DecimalConstants
type
  DecimalConstants = TOleEnum;
const
  CD_ALL = $00000000;
  CD_VALUES = $00000001;
  CD_YLEG = $00000002;
  CD_XLEG = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _DChartfx = dispinterface;
  _DChartfxEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Chartfx = _DChartfx;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PSmallint1 = ^Smallint; {*}


// *********************************************************************//
// DispIntf:  _DChartfx
// Flags:     (4096) Dispatchable
// GUID:      {2DC488B0-D891-101B-8652-00AA003A5593}
// *********************************************************************//
  _DChartfx = dispinterface
    ['{2DC488B0-D891-101B-8652-00AA003A5593}']
    property DesignDraw: Smallint dispid 4;
    property ThisSerie: Smallint dispid 1;
    property ThisPoint: Smallint dispid 2;
    property AutoInvalidate: WordBool dispid 3;
    property Type_: Integer dispid 5;
    property Style: Integer dispid 6;
    property NSeries: Smallint dispid 7;
    property NValues: Smallint dispid 8;
    property ThisColor: OLE_COLOR dispid 9;
    property ThisBkColor: OLE_COLOR dispid 10;
    property LeftGap: Smallint dispid 11;
    property RightGap: Smallint dispid 12;
    property TopGap: Smallint dispid 13;
    property BottomGap: Smallint dispid 14;
    property Decimals: Smallint dispid 15;
    property PointType: Smallint dispid 16;
    property Scheme: Smallint dispid 17;
    property Stacked: Smallint dispid 18;
    property Grid: Smallint dispid 19;
    property WallWidth: Smallint dispid 20;
    property BarHorzGap: Smallint dispid 21;
    property View3D: WordBool dispid 22;
    property Angles3D: Integer dispid 23;
    property PixFactor: Smallint dispid 24;
    property LineWidth: Smallint dispid 25;
    property LineStyle: Smallint dispid 26;
    property LineColor: OLE_COLOR dispid 27;
    property LineBkColor: OLE_COLOR dispid 28;
    property FixedWidth: Smallint dispid 29;
    property FixedStyle: Smallint dispid 30;
    property FixedColor: OLE_COLOR dispid 31;
    property FixedBkColor: OLE_COLOR dispid 32;
    property FixedGap: Smallint dispid 33;
    property RGBBarHorz: OLE_COLOR dispid 34;
    property RGBBk: OLE_COLOR dispid 35;
    property RGB2DBk: OLE_COLOR dispid 36;
    property RGB3DBk: OLE_COLOR dispid 37;
    property ShowStatus: WordBool dispid 38;
    property HText: WideString dispid 39;
    property ChartStatus: Smallint dispid 40;
    property Edit: Smallint dispid 41;
    property ChartType: Smallint dispid 42;
    property Chart3D: WordBool dispid 43;
    property ToolBar: WordBool dispid 44;
    property PaletteBar: WordBool dispid 45;
    property PatternBar: WordBool dispid 46;
    property CustTool: Integer dispid 47;
    property ReturnValue: Integer dispid 48;
    property AutoIncrement: WordBool dispid 49;
    property ThisValue: Double dispid 50;
    property VertGridGap: Smallint dispid 51;
    property XLegType: Smallint dispid 52;
    property ConstType: Smallint dispid 53;
    property LeftFont: IFontDisp dispid 54;
    property RightFont: IFontDisp dispid 55;
    property TopFont: IFontDisp dispid 56;
    property BottomFont: IFontDisp dispid 57;
    property XLegFont: IFontDisp dispid 58;
    property YLegFont: IFontDisp dispid 59;
    property FixedFont: IFontDisp dispid 60;
    property LegendFont: IFontDisp dispid 61;
    property LegendWidth: Smallint dispid 62;
    property Enabled: WordBool dispid -514;
    property hWnd: OLE_HANDLE dispid -515;
    property BorderStyle: Smallint dispid -504;
    property hCtlWnd: Integer dispid 63;
    property Value[index: Smallint]: Double dispid 82;
    property XValue[index: Smallint]: Double dispid 83;
    property IniValue[index: Smallint]: Double dispid 84;
    property Const_[index: Smallint]: Double dispid 85;
    property Color[index: Smallint]: OLE_COLOR dispid 86;
    property BkColor[index: Smallint]: OLE_COLOR dispid 87;
    property Adm[index: Smallint]: Double dispid 88;
    property Pattern[index: Smallint]: Smallint dispid 89;
    property Fonts[index: Smallint]: Integer dispid 90;
    property Title[index: Smallint]: WideString dispid 91;
    property Legend[index: Smallint]: WideString dispid 92;
    property SerLeg[index: Smallint]: WideString dispid 93;
    property KeyLeg[index: Smallint]: WideString dispid 94;
    property FixLeg[index: Smallint]: WideString dispid 95;
    property YLeg[index: Smallint]: WideString dispid 96;
    property KeySer[index: Smallint]: WideString dispid 97;
    property StatusText[index: Smallint]: WideString dispid 98;
    property RGBFont[index: Smallint]: OLE_COLOR dispid 99;
    property HFont[index: Smallint]: Smallint dispid 100;
    property ItemWidth[index: Smallint]: Smallint dispid 101;
    property ItemStyle[index: Smallint]: Smallint dispid 102;
    property ItemColor[index: Smallint]: OLE_COLOR dispid 103;
    property DecimalsNum[index: Smallint]: Smallint dispid 104;
    function  OpenDataEx(nType: Smallint; n1: Integer; n2: Integer): Integer; dispid 64;
    function  CloseData(nType: Smallint): WordBool; dispid 65;
    function  DblClk(nType: Smallint; lExtra: Integer): Integer; dispid 66;
    function  RigClk(nType: Smallint; lExtra: Integer): Integer; dispid 67;
    function  Status(nItems: Smallint; lpStatus: Integer): Integer; dispid 68;
    function  ShowDialog(nDialog: Smallint; lExtra: Integer): Integer; dispid 69;
    function  PrintIt: Integer; dispid 70;
    function  Scroll(wParam: Integer; lParam: Integer): Integer; dispid 71;
    function  SetStatusItem(index: Smallint; bText: WordBool; nID: Smallint; bFrame: WordBool; 
                            nWidth: Smallint; nMin: Smallint; nDesp: Smallint; dwStyle: Integer): Integer; dispid 72;
    function  Paint(hDC: Integer; nLeft: Smallint; nTop: Smallint; nRight: Smallint; 
                    nBottom: Smallint; wAction: Smallint; lps: Integer): Integer; dispid 73;
    function  SetStripe(index: Smallint; dMin: Double; dMax: Double; rgb: OLE_COLOR): Integer; dispid 74;
    function  Language(const sResource: WideString): Integer; dispid 75;
    function  ExportFile(const lpszNewValue: WideString): Integer; dispid 76;
    function  ImportFile(const lpszNewValue: WideString): Integer; dispid 77;
    function  WriteTemplate(const lpszNewValue: WideString): Integer; dispid 78;
    function  ReadTemplate(const lpszNewValue: WideString): Integer; dispid 79;
    function  CopyData: Integer; dispid 80;
    function  CopyBitmap: Integer; dispid 81;
    procedure Refresh; dispid -550;
    procedure AboutBox; dispid -552;
  end;

// *********************************************************************//
// DispIntf:  _DChartfxEvents
// Flags:     (4096) Dispatchable
// GUID:      {2DC488B1-D891-101B-8652-00AA003A5593}
// *********************************************************************//
  _DChartfxEvents = dispinterface
    ['{2DC488B1-D891-101B-8652-00AA003A5593}']
    procedure LButtonDblClk(x: Smallint; y: Smallint; nSerie: Smallint; nPoint: Integer; 
                            var nRes: Smallint); dispid 1;
    procedure RButtonDown(x: Smallint; y: Smallint; nSerie: Smallint; nPoint: Integer; 
                          var nRes: Smallint); dispid 2;
    procedure ChangeValue(dValue: Double; nSerie: Smallint; nPoint: Integer; var nRes: Smallint); dispid 3;
    procedure ChangeString(nType: Smallint; nIndex: Integer; var nRes: Smallint); dispid 4;
    procedure ChangeColor(nType: Smallint; nIndex: Smallint; var nRes: Smallint); dispid 5;
    procedure Destroy; dispid 6;
    procedure ReadFile; dispid 7;
    procedure ChangePalette(nIndex: Smallint; var nRes: Smallint); dispid 8;
    procedure ChangeFont(nIndex: Smallint; var nRes: Smallint); dispid 9;
    procedure ReadTemplate; dispid 10;
    procedure ChangePattern(nType: Smallint; nIndex: Smallint; var nRes: Smallint); dispid 11;
    procedure ChangePattPal(nIndex: Smallint; var nRes: Smallint); dispid 12;
    procedure Menu(wParam: Integer; nSerie: Smallint; nPoint: Integer; var nRes: Smallint); dispid 13;
    procedure ChangeType(nType: Smallint; var nRes: Smallint); dispid 14;
    procedure UserScroll(wScrollMsg: Integer; wScrollParam: Integer; var nRes: Smallint); dispid 15;
    procedure GetLegend(nType: Smallint; var nRes: Smallint); dispid 16;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TChartfx
// Help String      : ChartFX Control
// Default Interface: _DChartfx
// Def. Intf. DISP? : Yes
// Event   Interface: _DChartfxEvents
// TypeFlags        : (6) CanCreate Licensed
// *********************************************************************//
  TChartfxLButtonDblClk = procedure(Sender: TObject; x: Smallint; y: Smallint; nSerie: Smallint; 
                                                     nPoint: Integer; var nRes: Smallint) of object;
  TChartfxRButtonDown = procedure(Sender: TObject; x: Smallint; y: Smallint; nSerie: Smallint; 
                                                   nPoint: Integer; var nRes: Smallint) of object;
  TChartfxChangeValue = procedure(Sender: TObject; dValue: Double; nSerie: Smallint; 
                                                   nPoint: Integer; var nRes: Smallint) of object;
  TChartfxChangeString = procedure(Sender: TObject; nType: Smallint; nIndex: Integer; 
                                                    var nRes: Smallint) of object;
  TChartfxChangeColor = procedure(Sender: TObject; nType: Smallint; nIndex: Smallint; 
                                                   var nRes: Smallint) of object;
  TChartfxChangePalette = procedure(Sender: TObject; nIndex: Smallint; var nRes: Smallint) of object;
  TChartfxChangeFont = procedure(Sender: TObject; nIndex: Smallint; var nRes: Smallint) of object;
  TChartfxChangePattern = procedure(Sender: TObject; nType: Smallint; nIndex: Smallint; 
                                                     var nRes: Smallint) of object;
  TChartfxChangePattPal = procedure(Sender: TObject; nIndex: Smallint; var nRes: Smallint) of object;
  TChartfxMenu = procedure(Sender: TObject; wParam: Integer; nSerie: Smallint; nPoint: Integer; 
                                            var nRes: Smallint) of object;
  TChartfxChangeType = procedure(Sender: TObject; nType: Smallint; var nRes: Smallint) of object;
  TChartfxUserScroll = procedure(Sender: TObject; wScrollMsg: Integer; wScrollParam: Integer; 
                                                  var nRes: Smallint) of object;
  TChartfxGetLegend = procedure(Sender: TObject; nType: Smallint; var nRes: Smallint) of object;

  TChartfx = class(TOleControl)
  private
    FOnLButtonDblClk: TChartfxLButtonDblClk;
    FOnRButtonDown: TChartfxRButtonDown;
    FOnChangeValue: TChartfxChangeValue;
    FOnChangeString: TChartfxChangeString;
    FOnChangeColor: TChartfxChangeColor;
    FOnDestroy: TNotifyEvent;
    FOnReadFile: TNotifyEvent;
    FOnChangePalette: TChartfxChangePalette;
    FOnChangeFont: TChartfxChangeFont;
    FOnReadTemplate: TNotifyEvent;
    FOnChangePattern: TChartfxChangePattern;
    FOnChangePattPal: TChartfxChangePattPal;
    FOnMenu: TChartfxMenu;
    FOnChangeType: TChartfxChangeType;
    FOnUserScroll: TChartfxUserScroll;
    FOnGetLegend: TChartfxGetLegend;
    FIntf: _DChartfx;
    function  GetControlInterface: _DChartfx;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function  Get_Value(index: Smallint): Double;
    procedure Set_Value(index: Smallint; Param2: Double);
    function  Get_XValue(index: Smallint): Double;
    procedure Set_XValue(index: Smallint; Param2: Double);
    function  Get_IniValue(index: Smallint): Double;
    procedure Set_IniValue(index: Smallint; Param2: Double);
    function  Get_Const_(index: Smallint): Double;
    procedure Set_Const_(index: Smallint; Param2: Double);
    function  Get_Color(index: Smallint): OLE_COLOR;
    procedure Set_Color(index: Smallint; Param2: OLE_COLOR);
    function  Get_BkColor(index: Smallint): OLE_COLOR;
    procedure Set_BkColor(index: Smallint; Param2: OLE_COLOR);
    function  Get_Adm(index: Smallint): Double;
    procedure Set_Adm(index: Smallint; Param2: Double);
    function  Get_Pattern(index: Smallint): Smallint;
    procedure Set_Pattern(index: Smallint; Param2: Smallint);
    function  Get_Fonts(index: Smallint): Integer;
    procedure Set_Fonts(index: Smallint; Param2: Integer);
    function  Get_Title(index: Smallint): WideString;
    procedure Set_Title(index: Smallint; const Param2: WideString);
    function  Get_Legend(index: Smallint): WideString;
    procedure Set_Legend(index: Smallint; const Param2: WideString);
    function  Get_SerLeg(index: Smallint): WideString;
    procedure Set_SerLeg(index: Smallint; const Param2: WideString);
    function  Get_KeyLeg(index: Smallint): WideString;
    procedure Set_KeyLeg(index: Smallint; const Param2: WideString);
    function  Get_FixLeg(index: Smallint): WideString;
    procedure Set_FixLeg(index: Smallint; const Param2: WideString);
    function  Get_YLeg(index: Smallint): WideString;
    procedure Set_YLeg(index: Smallint; const Param2: WideString);
    function  Get_KeySer(index: Smallint): WideString;
    procedure Set_KeySer(index: Smallint; const Param2: WideString);
    function  Get_StatusText(index: Smallint): WideString;
    procedure Set_StatusText(index: Smallint; const Param2: WideString);
    function  Get_RGBFont(index: Smallint): OLE_COLOR;
    procedure Set_RGBFont(index: Smallint; Param2: OLE_COLOR);
    function  Get_HFont(index: Smallint): Smallint;
    procedure Set_HFont(index: Smallint; Param2: Smallint);
    function  Get_ItemWidth(index: Smallint): Smallint;
    procedure Set_ItemWidth(index: Smallint; Param2: Smallint);
    function  Get_ItemStyle(index: Smallint): Smallint;
    procedure Set_ItemStyle(index: Smallint; Param2: Smallint);
    function  Get_ItemColor(index: Smallint): OLE_COLOR;
    procedure Set_ItemColor(index: Smallint; Param2: OLE_COLOR);
    function  Get_DecimalsNum(index: Smallint): Smallint;
    procedure Set_DecimalsNum(index: Smallint; Param2: Smallint);
  public
    function  OpenDataEx(nType: Smallint; n1: Integer; n2: Integer): Integer;
    function  CloseData(nType: Smallint): WordBool;
    function  DblClk(nType: Smallint; lExtra: Integer): Integer;
    function  RigClk(nType: Smallint; lExtra: Integer): Integer;
    function  Status(nItems: Smallint; lpStatus: Integer): Integer;
    function  ShowDialog(nDialog: Smallint; lExtra: Integer): Integer;
    function  PrintIt: Integer;
    function  Scroll(wParam: Integer; lParam: Integer): Integer;
    function  SetStatusItem(index: Smallint; bText: WordBool; nID: Smallint; bFrame: WordBool; 
                            nWidth: Smallint; nMin: Smallint; nDesp: Smallint; dwStyle: Integer): Integer;
    function  Paint(hDC: Integer; nLeft: Smallint; nTop: Smallint; nRight: Smallint; 
                    nBottom: Smallint; wAction: Smallint; lps: Integer): Integer;
    function  SetStripe(index: Smallint; dMin: Double; dMax: Double; rgb: OLE_COLOR): Integer;
    function  Language(const sResource: WideString): Integer;
    function  ExportFile(const lpszNewValue: WideString): Integer;
    function  ImportFile(const lpszNewValue: WideString): Integer;
    function  WriteTemplate(const lpszNewValue: WideString): Integer;
    function  ReadTemplate(const lpszNewValue: WideString): Integer;
    function  CopyData: Integer;
    function  CopyBitmap: Integer;
    procedure Refresh;
    procedure AboutBox;
    property  ControlInterface: _DChartfx read GetControlInterface;
    property  DefaultInterface: _DChartfx read GetControlInterface;
    property Value[index: Smallint]: Double read Get_Value write Set_Value;
    property XValue[index: Smallint]: Double read Get_XValue write Set_XValue;
    property IniValue[index: Smallint]: Double read Get_IniValue write Set_IniValue;
    property Const_[index: Smallint]: Double read Get_Const_ write Set_Const_;
    property Color[index: Smallint]: OLE_COLOR read Get_Color write Set_Color;
    property BkColor[index: Smallint]: OLE_COLOR read Get_BkColor write Set_BkColor;
    property Adm[index: Smallint]: Double read Get_Adm write Set_Adm;
    property Pattern[index: Smallint]: Smallint read Get_Pattern write Set_Pattern;
    property Fonts[index: Smallint]: Integer read Get_Fonts write Set_Fonts;
    property Title[index: Smallint]: WideString read Get_Title write Set_Title;
    property Legend[index: Smallint]: WideString read Get_Legend write Set_Legend;
    property SerLeg[index: Smallint]: WideString read Get_SerLeg write Set_SerLeg;
    property KeyLeg[index: Smallint]: WideString read Get_KeyLeg write Set_KeyLeg;
    property FixLeg[index: Smallint]: WideString read Get_FixLeg write Set_FixLeg;
    property YLeg[index: Smallint]: WideString read Get_YLeg write Set_YLeg;
    property KeySer[index: Smallint]: WideString read Get_KeySer write Set_KeySer;
    property StatusText[index: Smallint]: WideString read Get_StatusText write Set_StatusText;
    property RGBFont[index: Smallint]: OLE_COLOR read Get_RGBFont write Set_RGBFont;
    property HFont[index: Smallint]: Smallint read Get_HFont write Set_HFont;
    property ItemWidth[index: Smallint]: Smallint read Get_ItemWidth write Set_ItemWidth;
    property ItemStyle[index: Smallint]: Smallint read Get_ItemStyle write Set_ItemStyle;
    property ItemColor[index: Smallint]: OLE_COLOR read Get_ItemColor write Set_ItemColor;
    property DecimalsNum[index: Smallint]: Smallint read Get_DecimalsNum write Set_DecimalsNum;
  published
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property DesignDraw: Smallint index 4 read GetSmallintProp write SetSmallintProp stored False;
    property ThisSerie: Smallint index 1 read GetSmallintProp write SetSmallintProp stored False;
    property ThisPoint: Smallint index 2 read GetSmallintProp write SetSmallintProp stored False;
    property AutoInvalidate: WordBool index 3 read GetWordBoolProp write SetWordBoolProp stored False;
    property Type_: Integer index 5 read GetIntegerProp write SetIntegerProp stored False;
    property Style: Integer index 6 read GetIntegerProp write SetIntegerProp stored False;
    property NSeries: Smallint index 7 read GetSmallintProp write SetSmallintProp stored False;
    property NValues: Smallint index 8 read GetSmallintProp write SetSmallintProp stored False;
    property ThisColor: TColor index 9 read GetTColorProp write SetTColorProp stored False;
    property ThisBkColor: TColor index 10 read GetTColorProp write SetTColorProp stored False;
    property LeftGap: Smallint index 11 read GetSmallintProp write SetSmallintProp stored False;
    property RightGap: Smallint index 12 read GetSmallintProp write SetSmallintProp stored False;
    property TopGap: Smallint index 13 read GetSmallintProp write SetSmallintProp stored False;
    property BottomGap: Smallint index 14 read GetSmallintProp write SetSmallintProp stored False;
    property Decimals: Smallint index 15 read GetSmallintProp write SetSmallintProp stored False;
    property PointType: Smallint index 16 read GetSmallintProp write SetSmallintProp stored False;
    property Scheme: Smallint index 17 read GetSmallintProp write SetSmallintProp stored False;
    property Stacked: Smallint index 18 read GetSmallintProp write SetSmallintProp stored False;
    property Grid: Smallint index 19 read GetSmallintProp write SetSmallintProp stored False;
    property WallWidth: Smallint index 20 read GetSmallintProp write SetSmallintProp stored False;
    property BarHorzGap: Smallint index 21 read GetSmallintProp write SetSmallintProp stored False;
    property View3D: WordBool index 22 read GetWordBoolProp write SetWordBoolProp stored False;
    property Angles3D: Integer index 23 read GetIntegerProp write SetIntegerProp stored False;
    property PixFactor: Smallint index 24 read GetSmallintProp write SetSmallintProp stored False;
    property LineWidth: Smallint index 25 read GetSmallintProp write SetSmallintProp stored False;
    property LineStyle: Smallint index 26 read GetSmallintProp write SetSmallintProp stored False;
    property LineColor: TColor index 27 read GetTColorProp write SetTColorProp stored False;
    property LineBkColor: TColor index 28 read GetTColorProp write SetTColorProp stored False;
    property FixedWidth: Smallint index 29 read GetSmallintProp write SetSmallintProp stored False;
    property FixedStyle: Smallint index 30 read GetSmallintProp write SetSmallintProp stored False;
    property FixedColor: TColor index 31 read GetTColorProp write SetTColorProp stored False;
    property FixedBkColor: TColor index 32 read GetTColorProp write SetTColorProp stored False;
    property FixedGap: Smallint index 33 read GetSmallintProp write SetSmallintProp stored False;
    property RGBBarHorz: TColor index 34 read GetTColorProp write SetTColorProp stored False;
    property RGBBk: TColor index 35 read GetTColorProp write SetTColorProp stored False;
    property RGB2DBk: TColor index 36 read GetTColorProp write SetTColorProp stored False;
    property RGB3DBk: TColor index 37 read GetTColorProp write SetTColorProp stored False;
    property ShowStatus: WordBool index 38 read GetWordBoolProp write SetWordBoolProp stored False;
    property HText: WideString index 39 read GetWideStringProp write SetWideStringProp stored False;
    property ChartStatus: Smallint index 40 read GetSmallintProp write SetSmallintProp stored False;
    property Edit: Smallint index 41 read GetSmallintProp write SetSmallintProp stored False;
    property ChartType: Smallint index 42 read GetSmallintProp write SetSmallintProp stored False;
    property Chart3D: WordBool index 43 read GetWordBoolProp write SetWordBoolProp stored False;
    property ToolBar: WordBool index 44 read GetWordBoolProp write SetWordBoolProp stored False;
    property PaletteBar: WordBool index 45 read GetWordBoolProp write SetWordBoolProp stored False;
    property PatternBar: WordBool index 46 read GetWordBoolProp write SetWordBoolProp stored False;
    property CustTool: Integer index 47 read GetIntegerProp write SetIntegerProp stored False;
    property ReturnValue: Integer index 48 read GetIntegerProp write SetIntegerProp stored False;
    property AutoIncrement: WordBool index 49 read GetWordBoolProp write SetWordBoolProp stored False;
    property ThisValue: Double index 50 read GetDoubleProp write SetDoubleProp stored False;
    property VertGridGap: Smallint index 51 read GetSmallintProp write SetSmallintProp stored False;
    property XLegType: Smallint index 52 read GetSmallintProp write SetSmallintProp stored False;
    property ConstType: Smallint index 53 read GetSmallintProp write SetSmallintProp stored False;
    property LeftFont: TFont index 54 read GetTFontProp write SetTFontProp stored False;
    property RightFont: TFont index 55 read GetTFontProp write SetTFontProp stored False;
    property TopFont: TFont index 56 read GetTFontProp write SetTFontProp stored False;
    property BottomFont: TFont index 57 read GetTFontProp write SetTFontProp stored False;
    property XLegFont: TFont index 58 read GetTFontProp write SetTFontProp stored False;
    property YLegFont: TFont index 59 read GetTFontProp write SetTFontProp stored False;
    property FixedFont: TFont index 60 read GetTFontProp write SetTFontProp stored False;
    property LegendFont: TFont index 61 read GetTFontProp write SetTFontProp stored False;
    property LegendWidth: Smallint index 62 read GetSmallintProp write SetSmallintProp stored False;
    property Enabled: WordBool index -514 read GetWordBoolProp write SetWordBoolProp stored False;
    property hWnd: Integer index -515 read GetIntegerProp write SetIntegerProp stored False;
    property BorderStyle: Smallint index -504 read GetSmallintProp write SetSmallintProp stored False;
    property hCtlWnd: Integer index 63 read GetIntegerProp write SetIntegerProp stored False;
    property OnLButtonDblClk: TChartfxLButtonDblClk read FOnLButtonDblClk write FOnLButtonDblClk;
    property OnRButtonDown: TChartfxRButtonDown read FOnRButtonDown write FOnRButtonDown;
    property OnChangeValue: TChartfxChangeValue read FOnChangeValue write FOnChangeValue;
    property OnChangeString: TChartfxChangeString read FOnChangeString write FOnChangeString;
    property OnChangeColor: TChartfxChangeColor read FOnChangeColor write FOnChangeColor;
    property OnDestroy: TNotifyEvent read FOnDestroy write FOnDestroy;
    property OnReadFile: TNotifyEvent read FOnReadFile write FOnReadFile;
    property OnChangePalette: TChartfxChangePalette read FOnChangePalette write FOnChangePalette;
    property OnChangeFont: TChartfxChangeFont read FOnChangeFont write FOnChangeFont;
    property OnReadTemplate: TNotifyEvent read FOnReadTemplate write FOnReadTemplate;
    property OnChangePattern: TChartfxChangePattern read FOnChangePattern write FOnChangePattern;
    property OnChangePattPal: TChartfxChangePattPal read FOnChangePattPal write FOnChangePattPal;
    property OnMenu: TChartfxMenu read FOnMenu write FOnMenu;
    property OnChangeType: TChartfxChangeType read FOnChangeType write FOnChangeType;
    property OnUserScroll: TChartfxUserScroll read FOnUserScroll write FOnUserScroll;
    property OnGetLegend: TChartfxGetLegend read FOnGetLegend write FOnGetLegend;
  end;

procedure Register;

implementation

uses ComObj;

procedure TChartfx.InitControlData;
const
  CEventDispIDs: array [0..15] of DWORD = (
    $00000001, $00000002, $00000003, $00000004, $00000005, $00000006,
    $00000007, $00000008, $00000009, $0000000A, $0000000B, $0000000C,
    $0000000D, $0000000E, $0000000F, $00000010);
  CLicenseKey: array[0..71] of Word = ( $0043, $0068, $0061, $0072, $0074, $0020, $0046, $0058, $0020, $0032, $002E
    , $0030, $0020, $004F, $0043, $0058, $0033, $0032, $0020, $0028, $0033
    , $0032, $0020, $0042, $0069, $0074, $0073, $0029, $002E, $0020, $0043
    , $006F, $0070, $0079, $0072, $0069, $0067, $0068, $0074, $0020, $0028
    , $0063, $0029, $0020, $0031, $0039, $0039, $0034, $0020, $0053, $006F
    , $0066, $0074, $0077, $0061, $0072, $0065, $0020, $0046, $0058, $002C
    , $0020, $0049, $006E, $0063, $002E, $002D, $0031, $0039, $0039, $0035
    , $0000);
  CTFontIDs: array [0..7] of DWORD = (
    $00000036, $00000037, $00000038, $00000039, $0000003A, $0000003B,
    $0000003C, $0000003D);
  CControlData: TControlData2 = (
    ClassID: '{8996B0A1-D7BE-101B-8650-00AA003A5593}';
    EventIID: '{2DC488B1-D891-101B-8652-00AA003A5593}';
    EventCount: 16;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000008;
    Version: 401;
    FontCount: 8;
    FontIDs: @CTFontIDs);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnLButtonDblClk) - Cardinal(Self);
end;

procedure TChartfx.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as _DChartfx;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TChartfx.GetControlInterface: _DChartfx;
begin
  CreateControl;
  Result := FIntf;
end;

function  TChartfx.Get_Value(index: Smallint): Double;
begin
  Result := DefaultInterface.Value[index];
end;

procedure TChartfx.Set_Value(index: Smallint; Param2: Double);
begin
  DefaultInterface.Value[index] := Param2;
end;

function  TChartfx.Get_XValue(index: Smallint): Double;
begin
  Result := DefaultInterface.XValue[index];
end;

procedure TChartfx.Set_XValue(index: Smallint; Param2: Double);
begin
  DefaultInterface.XValue[index] := Param2;
end;

function  TChartfx.Get_IniValue(index: Smallint): Double;
begin
  Result := DefaultInterface.IniValue[index];
end;

procedure TChartfx.Set_IniValue(index: Smallint; Param2: Double);
begin
  DefaultInterface.IniValue[index] := Param2;
end;

function  TChartfx.Get_Const_(index: Smallint): Double;
begin
  Result := DefaultInterface.Const_[index];
end;

procedure TChartfx.Set_Const_(index: Smallint; Param2: Double);
begin
  DefaultInterface.Const_[index] := Param2;
end;

function  TChartfx.Get_Color(index: Smallint): OLE_COLOR;
begin
  Result := DefaultInterface.Color[index];
end;

procedure TChartfx.Set_Color(index: Smallint; Param2: OLE_COLOR);
begin
  DefaultInterface.Color[index] := Param2;
end;

function  TChartfx.Get_BkColor(index: Smallint): OLE_COLOR;
begin
  Result := DefaultInterface.BkColor[index];
end;

procedure TChartfx.Set_BkColor(index: Smallint; Param2: OLE_COLOR);
begin
  DefaultInterface.BkColor[index] := Param2;
end;

function  TChartfx.Get_Adm(index: Smallint): Double;
begin
  Result := DefaultInterface.Adm[index];
end;

procedure TChartfx.Set_Adm(index: Smallint; Param2: Double);
begin
  DefaultInterface.Adm[index] := Param2;
end;

function  TChartfx.Get_Pattern(index: Smallint): Smallint;
begin
  Result := DefaultInterface.Pattern[index];
end;

procedure TChartfx.Set_Pattern(index: Smallint; Param2: Smallint);
begin
  DefaultInterface.Pattern[index] := Param2;
end;

function  TChartfx.Get_Fonts(index: Smallint): Integer;
begin
  Result := DefaultInterface.Fonts[index];
end;

procedure TChartfx.Set_Fonts(index: Smallint; Param2: Integer);
begin
  DefaultInterface.Fonts[index] := Param2;
end;

function  TChartfx.Get_Title(index: Smallint): WideString;
begin
  Result := DefaultInterface.Title[index];
end;

procedure TChartfx.Set_Title(index: Smallint; const Param2: WideString);
begin
  DefaultInterface.Title[index] := Param2;
end;

function  TChartfx.Get_Legend(index: Smallint): WideString;
begin
  Result := DefaultInterface.Legend[index];
end;

procedure TChartfx.Set_Legend(index: Smallint; const Param2: WideString);
begin
  DefaultInterface.Legend[index] := Param2;
end;

function  TChartfx.Get_SerLeg(index: Smallint): WideString;
begin
  Result := DefaultInterface.SerLeg[index];
end;

procedure TChartfx.Set_SerLeg(index: Smallint; const Param2: WideString);
begin
  DefaultInterface.SerLeg[index] := Param2;
end;

function  TChartfx.Get_KeyLeg(index: Smallint): WideString;
begin
  Result := DefaultInterface.KeyLeg[index];
end;

procedure TChartfx.Set_KeyLeg(index: Smallint; const Param2: WideString);
begin
  DefaultInterface.KeyLeg[index] := Param2;
end;

function  TChartfx.Get_FixLeg(index: Smallint): WideString;
begin
  Result := DefaultInterface.FixLeg[index];
end;

procedure TChartfx.Set_FixLeg(index: Smallint; const Param2: WideString);
begin
  DefaultInterface.FixLeg[index] := Param2;
end;

function  TChartfx.Get_YLeg(index: Smallint): WideString;
begin
  Result := DefaultInterface.YLeg[index];
end;

procedure TChartfx.Set_YLeg(index: Smallint; const Param2: WideString);
begin
  DefaultInterface.YLeg[index] := Param2;
end;

function  TChartfx.Get_KeySer(index: Smallint): WideString;
begin
  Result := DefaultInterface.KeySer[index];
end;

procedure TChartfx.Set_KeySer(index: Smallint; const Param2: WideString);
begin
  DefaultInterface.KeySer[index] := Param2;
end;

function  TChartfx.Get_StatusText(index: Smallint): WideString;
begin
  Result := DefaultInterface.StatusText[index];
end;

procedure TChartfx.Set_StatusText(index: Smallint; const Param2: WideString);
begin
  DefaultInterface.StatusText[index] := Param2;
end;

function  TChartfx.Get_RGBFont(index: Smallint): OLE_COLOR;
begin
  Result := DefaultInterface.RGBFont[index];
end;

procedure TChartfx.Set_RGBFont(index: Smallint; Param2: OLE_COLOR);
begin
  DefaultInterface.RGBFont[index] := Param2;
end;

function  TChartfx.Get_HFont(index: Smallint): Smallint;
begin
  Result := DefaultInterface.HFont[index];
end;

procedure TChartfx.Set_HFont(index: Smallint; Param2: Smallint);
begin
  DefaultInterface.HFont[index] := Param2;
end;

function  TChartfx.Get_ItemWidth(index: Smallint): Smallint;
begin
  Result := DefaultInterface.ItemWidth[index];
end;

procedure TChartfx.Set_ItemWidth(index: Smallint; Param2: Smallint);
begin
  DefaultInterface.ItemWidth[index] := Param2;
end;

function  TChartfx.Get_ItemStyle(index: Smallint): Smallint;
begin
  Result := DefaultInterface.ItemStyle[index];
end;

procedure TChartfx.Set_ItemStyle(index: Smallint; Param2: Smallint);
begin
  DefaultInterface.ItemStyle[index] := Param2;
end;

function  TChartfx.Get_ItemColor(index: Smallint): OLE_COLOR;
begin
  Result := DefaultInterface.ItemColor[index];
end;

procedure TChartfx.Set_ItemColor(index: Smallint; Param2: OLE_COLOR);
begin
  DefaultInterface.ItemColor[index] := Param2;
end;

function  TChartfx.Get_DecimalsNum(index: Smallint): Smallint;
begin
  Result := DefaultInterface.DecimalsNum[index];
end;

procedure TChartfx.Set_DecimalsNum(index: Smallint; Param2: Smallint);
begin
  DefaultInterface.DecimalsNum[index] := Param2;
end;

function  TChartfx.OpenDataEx(nType: Smallint; n1: Integer; n2: Integer): Integer;
begin
  Result := DefaultInterface.OpenDataEx(nType, n1, n2);
end;

function  TChartfx.CloseData(nType: Smallint): WordBool;
begin
  Result := DefaultInterface.CloseData(nType);
end;

function  TChartfx.DblClk(nType: Smallint; lExtra: Integer): Integer;
begin
  Result := DefaultInterface.DblClk(nType, lExtra);
end;

function  TChartfx.RigClk(nType: Smallint; lExtra: Integer): Integer;
begin
  Result := DefaultInterface.RigClk(nType, lExtra);
end;

function  TChartfx.Status(nItems: Smallint; lpStatus: Integer): Integer;
begin
  Result := DefaultInterface.Status(nItems, lpStatus);
end;

function  TChartfx.ShowDialog(nDialog: Smallint; lExtra: Integer): Integer;
begin
  Result := DefaultInterface.ShowDialog(nDialog, lExtra);
end;

function  TChartfx.PrintIt: Integer;
begin
  Result := DefaultInterface.PrintIt;
end;

function  TChartfx.Scroll(wParam: Integer; lParam: Integer): Integer;
begin
  Result := DefaultInterface.Scroll(wParam, lParam);
end;

function  TChartfx.SetStatusItem(index: Smallint; bText: WordBool; nID: Smallint; bFrame: WordBool; 
                                 nWidth: Smallint; nMin: Smallint; nDesp: Smallint; dwStyle: Integer): Integer;
begin
  Result := DefaultInterface.SetStatusItem(index, bText, nID, bFrame, nWidth, nMin, nDesp, dwStyle);
end;

function  TChartfx.Paint(hDC: Integer; nLeft: Smallint; nTop: Smallint; nRight: Smallint; 
                         nBottom: Smallint; wAction: Smallint; lps: Integer): Integer;
begin
  Result := DefaultInterface.Paint(hDC, nLeft, nTop, nRight, nBottom, wAction, lps);
end;

function  TChartfx.SetStripe(index: Smallint; dMin: Double; dMax: Double; rgb: OLE_COLOR): Integer;
begin
  Result := DefaultInterface.SetStripe(index, dMin, dMax, rgb);
end;

function  TChartfx.Language(const sResource: WideString): Integer;
begin
  Result := DefaultInterface.Language(sResource);
end;

function  TChartfx.ExportFile(const lpszNewValue: WideString): Integer;
begin
  Result := DefaultInterface.ExportFile(lpszNewValue);
end;

function  TChartfx.ImportFile(const lpszNewValue: WideString): Integer;
begin
  Result := DefaultInterface.ImportFile(lpszNewValue);
end;

function  TChartfx.WriteTemplate(const lpszNewValue: WideString): Integer;
begin
  Result := DefaultInterface.WriteTemplate(lpszNewValue);
end;

function  TChartfx.ReadTemplate(const lpszNewValue: WideString): Integer;
begin
  Result := DefaultInterface.ReadTemplate(lpszNewValue);
end;

function  TChartfx.CopyData: Integer;
begin
  Result := DefaultInterface.CopyData;
end;

function  TChartfx.CopyBitmap: Integer;
begin
  Result := DefaultInterface.CopyBitmap;
end;

procedure TChartfx.Refresh;
begin
  DefaultInterface.Refresh;
end;

procedure TChartfx.AboutBox;
begin
  DefaultInterface.AboutBox;
end;

procedure Register;
begin
  RegisterComponents('ActiveX',[TChartfx]);
end;

end.
