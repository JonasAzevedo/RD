unit Isp3;

{$IFDEF InvisibleInk}    { internal comments, not to appear in shipping code }

{ To correct problems in the NetManage OCX type library interface definitions,
  the following changes **MUST** be made to the auto-generated interfaces
  whenever the ISP wrappers are regenerated:

  1) Merge all the NetManage OCX declarations into one unit. Each NM OCX
     typelib declares same-named base interfaces, like INMOleControl and
     INMOleClientControl.  If we left the separate NM OCX controls in
     separate units, you'd run into mysterious type mismatch problems when two
     such units were used in another unit.

  2) Edit the INMWinsockControl base interface to inherit from IDispatch
     instead of INMOleControl, and insert procedure AboutBox; safecall; at
     the top of the interface declaration.  The TCP/UDP typelib declares the
     INMWinsockControl interface as inheriting from INMOleControl, but that
     typelib defines INMOleControl as having only one method.  All the other
     NM typelibs define INMOleControl (same type name, same GUID)
     with 6 methods, 3 properties.

  3) Edit the IHTTPCT interface to inherit from INMOleControl instead of
     INMOleClientControl, copy all the methods and properties from
     INMOleClientControl to the top of IHTTPCT, and delete the Connect method
     from IHTTPCT.  The INMOleClientControl declaration in the HTTP OCX typelib
     (same type name, same GUID) is missing the Connect procedure, which throws
     all the vtable methods in IHTTPCT off by one if the interface were to
     inherit from the definition of INMOleClientControl that all the other
     NM OCXs use.
}
{$ENDIF}
{ NetManage Internet Controls }
{ Version 1.0 }

interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL;

const
  LIBID_NMOCODObjects: TGUID = '{B7FC35A4-8CE7-11CF-9754-00AA00C00908}';

const

{ DocStateConstants }

  icDocNone = 0;
  icDocBegin = 1;
  icDocHeaders = 2;
  icDocData = 3;
  icDocError = 4;
  icDocEnd = 5;

const

{ Component class GUIDs }
  Class_DocHeaderCls: TGUID = '{B7FC3591-8CE7-11CF-9754-00AA00C00908}';
  Class_DocHeadersCls: TGUID = '{B7FC3593-8CE7-11CF-9754-00AA00C00908}';
  Class_DocInputCls: TGUID = '{B7FC3596-8CE7-11CF-9754-00AA00C00908}';
  Class_DocOutputCls: TGUID = '{B7FC3598-8CE7-11CF-9754-00AA00C00908}';
  Class_icErrorCls: TGUID = '{B7FC35A1-8CE7-11CF-9754-00AA00C00908}';
  Class_icErrorsCls: TGUID = '{B7FC35A3-8CE7-11CF-9754-00AA00C00908}';

type

{ Forward declarations }
{ Forward declarations: Interfaces }
  DocHeader = interface;
  DocHeaderDisp = dispinterface;
  DocHeaders = interface;
  DocHeadersDisp = dispinterface;
  DocInput = interface;
  DocInputDisp = dispinterface;
  DocOutput = interface;
  DocOutputDisp = dispinterface;
  icError = interface;
  icErrorDisp = dispinterface;
  icErrors = interface;
  icErrorsDisp = dispinterface;

{ Forward declarations: CoClasses }
  DocHeaderCls = DocHeader;
  DocHeadersCls = DocHeaders;
  DocInputCls = DocInput;
  DocOutputCls = DocOutput;
  icErrorCls = icError;
  icErrorsCls = icErrors;

{ Forward declarations: Enums }
  DocStateConstants = TOleEnum;

{ Internet DocHeader object properties and methods }

  DocHeader = interface(IDispatch)
    ['{B7FC3590-8CE7-11CF-9754-00AA00C00908}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const Value: WideString); safecall;
    function Get_Value: WideString; safecall;
    procedure Set_Value(const Value: WideString); safecall;
    procedure SetThisObject(var ThisObject: SYSINT); safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Value: WideString read Get_Value write Set_Value;
  end;

{ DispInterface declaration for Dual Interface DocHeader }

  DocHeaderDisp = dispinterface
    ['{B7FC3590-8CE7-11CF-9754-00AA00C00908}']
    property Name: WideString dispid 0;
    property Value: WideString dispid 2;
    procedure SetThisObject(var ThisObject: SYSINT); dispid 3;
  end;

{ Internet DocHeaders collection properties and methods }

  DocHeaders = interface(IDispatch)
    ['{B7FC3592-8CE7-11CF-9754-00AA00C00908}']
    function Get_Count: Integer; safecall;
    function Get_Text: WideString; safecall;
    procedure Set_Text(const Value: WideString); safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Item(Index: OleVariant): DocHeader; safecall;
    function Add(const Name, Value: WideString): DocHeader; safecall;
    procedure Remove(Index: OleVariant); safecall;
    procedure Clear; safecall;
    procedure SetThisObject(var ThisObject: SYSINT); safecall;
    property Count: Integer read Get_Count;
    property Text: WideString read Get_Text write Set_Text;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

{ DispInterface declaration for Dual Interface DocHeaders }

  DocHeadersDisp = dispinterface
    ['{B7FC3592-8CE7-11CF-9754-00AA00C00908}']
    property Count: Integer readonly dispid 1;
    property Text: WideString dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    function Item(Index: OleVariant): DocHeader; dispid 0;
    function Add(const Name, Value: WideString): DocHeader; dispid 4;
    procedure Remove(Index: OleVariant); dispid 5;
    procedure Clear; dispid 6;
    procedure SetThisObject(var ThisObject: SYSINT); dispid 7;
  end;

{ Internet DocInput object properties and methods }

  DocInput = interface(IDispatch)
    ['{B7FC3595-8CE7-11CF-9754-00AA00C00908}']
    function Get_Headers: DocHeaders; safecall;
    function Get_State: DocStateConstants; safecall;
    function Get_BytesTotal: Integer; safecall;
    function Get_BytesTransferred: Integer; safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const Value: WideString); safecall;
    function Get_DocLink: IUnknown; safecall;
    procedure Set_DocLink(Value: IUnknown); safecall;
    function Get_Suspended: WordBool; safecall;
    function Get_PushStreamMode: WordBool; safecall;
    procedure Set_PushStreamMode(Value: WordBool); safecall;
    procedure GetData(out Data: OleVariant; Type_: OleVariant); safecall;
    procedure SetData(Data: OleVariant); safecall;
    procedure Suspend(Suspend: WordBool); safecall;
    function Get_CPPObject: SYSINT; safecall;
    procedure Set_CPPObject(Value: SYSINT); safecall;
    procedure PushStream; safecall;
    function Get_Tag: OleVariant; safecall;
    procedure Set_Tag(Value: OleVariant); safecall;
    function Get_Errors: icErrors; safecall;
    function Get_URL: WideString; safecall;
    property Headers: DocHeaders read Get_Headers;
    property State: DocStateConstants read Get_State;
    property BytesTotal: Integer read Get_BytesTotal;
    property BytesTransferred: Integer read Get_BytesTransferred;
    property FileName: WideString read Get_FileName write Set_FileName;
    property DocLink: IUnknown read Get_DocLink write Set_DocLink;
    property Suspended: WordBool read Get_Suspended;
    property PushStreamMode: WordBool read Get_PushStreamMode write Set_PushStreamMode;
    property CPPObject: SYSINT read Get_CPPObject write Set_CPPObject;
    property Tag: OleVariant read Get_Tag write Set_Tag;
    property Errors: icErrors read Get_Errors;
    property URL: WideString read Get_URL;
  end;

{ DispInterface declaration for Dual Interface DocInput }

  DocInputDisp = dispinterface
    ['{B7FC3595-8CE7-11CF-9754-00AA00C00908}']
    property Headers: DocHeaders readonly dispid 2;
    property State: DocStateConstants readonly dispid 3;
    property BytesTotal: Integer readonly dispid 4;
    property BytesTransferred: Integer readonly dispid 5;
    property FileName: WideString dispid 6;
    property DocLink: IUnknown dispid 7;
    property Suspended: WordBool readonly dispid 11;
    property PushStreamMode: WordBool dispid 12;
    procedure GetData(out Data: OleVariant; Type_: OleVariant); dispid 9;
    procedure SetData(Data: OleVariant); dispid 8;
    procedure Suspend(Suspend: WordBool); dispid 10;
    property CPPObject: SYSINT dispid 14;
    procedure PushStream; dispid 13;
    property Tag: OleVariant dispid 16;
    property Errors: icErrors readonly dispid 17;
    property URL: WideString readonly dispid 1;
  end;

{ Internet DocOutput object properties and methods }

  DocOutput = interface(IDispatch)
    ['{B7FC3597-8CE7-11CF-9754-00AA00C00908}']
    function Get_Headers: DocHeaders; safecall;
    function Get_State: DocStateConstants; safecall;
    function Get_BytesTotal: Integer; safecall;
    function Get_BytesTransferred: Integer; safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const Value: WideString); safecall;
    function Get_DocLink: IUnknown; safecall;
    function Get_Suspended: WordBool; safecall;
    function Get_PushStreamMode: WordBool; safecall;
    function Get_DataString: WideString; safecall;
    function Get_DataBlock: OleVariant; safecall;
    procedure GetData(out Data: OleVariant; Type_: OleVariant); safecall;
    procedure SetData(Data: OleVariant); safecall;
    procedure Suspend(Suspend: WordBool); safecall;
    function Get_CPPObject: SYSINT; safecall;
    procedure Set_CPPObject(Value: SYSINT); safecall;
    function Get_AppendToFile: WordBool; safecall;
    procedure Set_AppendToFile(Value: WordBool); safecall;
    function Get_Tag: OleVariant; safecall;
    procedure Set_Tag(Value: OleVariant); safecall;
    function Get_Errors: icErrors; safecall;
    function Get_URL: WideString; safecall;
    property Headers: DocHeaders read Get_Headers;
    property State: DocStateConstants read Get_State;
    property BytesTotal: Integer read Get_BytesTotal;
    property BytesTransferred: Integer read Get_BytesTransferred;
    property FileName: WideString read Get_FileName write Set_FileName;
    property DocLink: IUnknown read Get_DocLink;
    property Suspended: WordBool read Get_Suspended;
    property PushStreamMode: WordBool read Get_PushStreamMode;
    property DataString: WideString read Get_DataString;
    property DataBlock: OleVariant read Get_DataBlock;
    property CPPObject: SYSINT read Get_CPPObject write Set_CPPObject;
    property AppendToFile: WordBool read Get_AppendToFile write Set_AppendToFile;
    property Tag: OleVariant read Get_Tag write Set_Tag;
    property Errors: icErrors read Get_Errors;
    property URL: WideString read Get_URL;
  end;

{ DispInterface declaration for Dual Interface DocOutput }

  DocOutputDisp = dispinterface
    ['{B7FC3597-8CE7-11CF-9754-00AA00C00908}']
    property Headers: DocHeaders readonly dispid 2;
    property State: DocStateConstants readonly dispid 3;
    property BytesTotal: Integer readonly dispid 4;
    property BytesTransferred: Integer readonly dispid 5;
    property FileName: WideString dispid 6;
    property DocLink: IUnknown readonly dispid 7;
    property Suspended: WordBool readonly dispid 11;
    property PushStreamMode: WordBool readonly dispid 12;
    property DataString: WideString readonly dispid 19;
    property DataBlock: OleVariant readonly dispid 18;
    procedure GetData(out Data: OleVariant; Type_: OleVariant); dispid 9;
    procedure SetData(Data: OleVariant); dispid 8;
    procedure Suspend(Suspend: WordBool); dispid 10;
    property CPPObject: SYSINT dispid 14;
    property AppendToFile: WordBool dispid 15;
    property Tag: OleVariant dispid 16;
    property Errors: icErrors readonly dispid 17;
    property URL: WideString readonly dispid 1;
  end;

{ Internet error object properties and methods }

  icError = interface(IDispatch)
    ['{B7FC35A0-8CE7-11CF-9754-00AA00C00908}']
    function Get_Type_: WideString; safecall;
    function Get_Code: Integer; safecall;
    function Get_Description: WideString; safecall;
    procedure SetThisObject(var ThisObject: SYSINT); safecall;
    procedure InitProperties(var ErrorType, ErrorDesc: WideString; var ErrorCode: Integer); safecall;
    property Type_: WideString read Get_Type_;
    property Code: Integer read Get_Code;
    property Description: WideString read Get_Description;
  end;

{ DispInterface declaration for Dual Interface icError }

  icErrorDisp = dispinterface
    ['{B7FC35A0-8CE7-11CF-9754-00AA00C00908}']
    property Type_: WideString readonly dispid 0;
    property Code: Integer readonly dispid 151;
    property Description: WideString readonly dispid 152;
    procedure SetThisObject(var ThisObject: SYSINT); dispid 154;
    procedure InitProperties(var ErrorType, ErrorDesc: WideString; var ErrorCode: Integer); dispid 155;
  end;

{ Internet errors collection properties and methods }

  icErrors = interface(IDispatch)
    ['{B7FC35A2-8CE7-11CF-9754-00AA00C00908}']
    function Get_Count: Integer; safecall;
    function Get_Source: OleVariant; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Item(Index: OleVariant): icError; safecall;
    procedure Clear; safecall;
    procedure SetItem(var ErrCode: Integer; var ErrType, ErrDesc: WideString); safecall;
    procedure SetThisObject(var ThisObject: SYSINT); safecall;
    procedure SetCollection(var initString: WideString); safecall;
    property Count: Integer read Get_Count;
    property Source: OleVariant read Get_Source;
    property _NewEnum: IUnknown read Get__NewEnum;
  end;

{ DispInterface declaration for Dual Interface icErrors }

  icErrorsDisp = dispinterface
    ['{B7FC35A2-8CE7-11CF-9754-00AA00C00908}']
    property Count: Integer readonly dispid 100;
    property Source: OleVariant readonly dispid 102;
    property _NewEnum: IUnknown readonly dispid -4;
    function Item(Index: OleVariant): icError; dispid 0;
    procedure Clear; dispid 103;
    procedure SetItem(var ErrCode: Integer; var ErrType, ErrDesc: WideString); dispid 153;
    procedure SetThisObject(var ThisObject: SYSINT); dispid 104;
    procedure SetCollection(var initString: WideString); dispid 105;
  end;

{ Internet DocHeader object }

  CoDocHeaderCls = class
    class function Create: DocHeader;
    class function CreateRemote(const MachineName: string): DocHeader;
  end;

{ Internet DocHeaders object }

  CoDocHeadersCls = class
    class function Create: DocHeaders;
    class function CreateRemote(const MachineName: string): DocHeaders;
  end;

{ Internet DocInput object }

  CoDocInputCls = class
    class function Create: DocInput;
    class function CreateRemote(const MachineName: string): DocInput;
  end;

{ Internet DocOutput object }

  CoDocOutputCls = class
    class function Create: DocOutput;
    class function CreateRemote(const MachineName: string): DocOutput;
  end;

{ Internet error object }

  CoicErrorCls = class
    class function Create: icError;
    class function CreateRemote(const MachineName: string): icError;
  end;

{ Internet errors collection }

  CoicErrorsCls = class
    class function Create: icErrors;
    class function CreateRemote(const MachineName: string): icErrors;
  end;

const
  LIBID_FTPCTLib: TGUID = '{B7FC3542-8CE7-11CF-9754-00AA00C00908}';

const

{ FTPFirewallModeConstants }

  ftpFirewallOff = 0;
  ftpFirewallSite = 1;
  ftpFirewallOpen = 2;
  ftpFirewallUserLogin = 3;
  ftpFirewallUserNoLogin = 4;
  ftpFirewallManual = 5;

{ FTPFirewallStateConstants }

  ftpFirewallBase = 1300;
  ftpFirewallConnected = 1301;
  ftpFirewallConnected_Msg = 1302;
  ftpFirewallUser_OK = 1303;
  ftpFirewallAuthorized = 1304;
  ftpFirewallRemoteConnected = 1305;
  ftpFirewallDisconnecting = 1306;

{ NotificationModeConstants }

  icCompleteMode = 0;
  icContinousMode = 1;

{ BlockResultConstants }

  icBlockOK = 0;
  icTimedOut = 1;
  icErrorExit = 2;
  icBlockCancel = 3;
  icUserQuit = 4;

{ StateConstants }

  prcConnecting = 1;
  prcResolvingHost = 2;
  prcHostResolved = 3;
  prcConnected = 4;
  prcDisconnecting = 5;
  prcDisconnected = 6;

{ TimeoutConstants }

  prcConnectTimeout = 1;
  prcReceiveTimeout = 2;
  prcUserTimeout = 65;

{ FTPTypeConstants }

  ftpAscii = 0;
  ftpEBCDIC = 1;
  ftpImage = 2;
  ftpBinary = 3;

{ FTPModeConstants }

  ftpStream = 0;
  ftpBlock = 1;
  ftpCompressed = 2;

{ FTPOperationConstants }

  ftpFile = 0;
  ftpList = 1;
  ftpNameList = 2;

{ FTPProtocolStateConstants }

  ftpBase = 0;
  ftpAuthentication = 1;
  ftpTransaction = 2;

const

{ Component class GUIDs }
  Class_FTPDirItemCls: TGUID = '{B7FC3544-8CE7-11CF-9754-00AA00C00908}';
  Class_Firewall: TGUID = '{71A0C640-E157-11CF-A306-00A0243B6C29}';
  Class_FTP: TGUID = '{B7FC354C-8CE7-11CF-9754-00AA00C00908}';

type

{ Forward declarations }
{ Forward declarations: Interfaces }
  FTPDirItem = interface;
  FTPDirItemDisp = dispinterface;
  IFirewall = interface;
  IFirewallDisp = dispinterface;
  INMOleControl = interface;
  INMOleControlDisp = dispinterface;
  DNMOleControlEvents = dispinterface;
  INMOleClientControl = interface;
  INMOleClientControlDisp = dispinterface;
  DNMOleClientControlEvents = dispinterface;
  INMOleAuthClientControl = interface;
  INMOleAuthClientControlDisp = dispinterface;
  DNMOleAuthClientControlEvents = dispinterface;
  Iftpct = interface;
  IftpctDisp = dispinterface;
  DftpctEvents = dispinterface;

{ Forward declarations: CoClasses }
  FTPDirItemCls = FTPDirItem;
  Firewall = IFirewall;
  FTP = Iftpct;

{ Forward declarations: Enums }
  FTPFirewallModeConstants = TOleEnum;
  FTPFirewallStateConstants = TOleEnum;
  NotificationModeConstants = TOleEnum;
  BlockResultConstants = TOleEnum;
  StateConstants = TOleEnum;
  TimeoutConstants = TOleEnum;
  FTPTypeConstants = TOleEnum;
  FTPModeConstants = TOleEnum;
  FTPOperationConstants = TOleEnum;
  FTPProtocolStateConstants = TOleEnum;

{ FTP directory item properties and methods }

  FTPDirItem = interface(IDispatch)
    ['{B7FC3543-8CE7-11CF-9754-00AA00C00908}']
    function Get_Date: WideString; safecall;
    function Get_Size: Integer; safecall;
    function Get_Attributes: SYSINT; safecall;
    function Get_Detail: WideString; safecall;
    function Get_FileName: WideString; safecall;
    property Date: WideString read Get_Date;
    property Size: Integer read Get_Size;
    property Attributes: SYSINT read Get_Attributes;
    property Detail: WideString read Get_Detail;
    property FileName: WideString read Get_FileName;
  end;

{ DispInterface declaration for Dual Interface FTPDirItem }

  FTPDirItemDisp = dispinterface
    ['{B7FC3543-8CE7-11CF-9754-00AA00C00908}']
    property Date: WideString readonly dispid 70;
    property Size: Integer readonly dispid 71;
    property Attributes: SYSINT readonly dispid 72;
    property Detail: WideString readonly dispid 73;
    property FileName: WideString readonly dispid 74;
  end;

{ FirewallObject }

  IFirewall = interface(IDispatch)
    ['{7061DDA0-E157-11CF-A306-00A0243B6C29}']
    function Get_Mode: Smallint; safecall;
    procedure Set_Mode(Value: Smallint); safecall;
    function Get_State: Smallint; safecall;
    function Get_StateString: WideString; safecall;
    function Get_Host: WideString; safecall;
    procedure Set_Host(const Value: WideString); safecall;
    function Get_Port: Integer; safecall;
    procedure Set_Port(Value: Integer); safecall;
    function Get_UserId: WideString; safecall;
    procedure Set_UserId(const Value: WideString); safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const Value: WideString); safecall;
    property Mode: Smallint read Get_Mode write Set_Mode;
    property State: Smallint read Get_State;
    property StateString: WideString read Get_StateString;
    property Host: WideString read Get_Host write Set_Host;
    property Port: Integer read Get_Port write Set_Port;
    property UserId: WideString read Get_UserId write Set_UserId;
    property Password: WideString read Get_Password write Set_Password;
  end;

{ DispInterface declaration for Dual Interface IFirewall }

  IFirewallDisp = dispinterface
    ['{7061DDA0-E157-11CF-A306-00A0243B6C29}']
    property Mode: Smallint dispid 80;
    property State: Smallint readonly dispid 81;
    property StateString: WideString readonly dispid 92;
    property Host: WideString dispid 82;
    property Port: Integer dispid 83;
    property UserId: WideString dispid 84;
    property Password: WideString dispid 85;
  end;

{ NetManage Internet Control }

  INMOleControl = interface(IDispatch)
    ['{B7FC35B6-8CE7-11CF-9754-00AA00C00908}']
    function Get_Blocking: WordBool; safecall;
    procedure Set_Blocking(Value: WordBool); safecall;
    function Get_SleepTime: Integer; safecall;
    procedure Set_SleepTime(Value: Integer); safecall;
    function Get_BlockResult: Smallint; safecall;
    procedure AboutBox; safecall;
    property Blocking: WordBool read Get_Blocking write Set_Blocking;
    property SleepTime: Integer read Get_SleepTime write Set_SleepTime;
    property BlockResult: Smallint read Get_BlockResult;
  end;

{ DispInterface declaration for Dual Interface INMOleControl }

  INMOleControlDisp = dispinterface
    ['{B7FC35B6-8CE7-11CF-9754-00AA00C00908}']
    property Blocking: WordBool dispid 515;
    property SleepTime: Integer dispid 516;
    property BlockResult: Smallint readonly dispid 519;
    procedure AboutBox; dispid -552;
  end;

{ NetManage Internet Control events }

  DNMOleControlEvents = dispinterface
    ['{B7FC35B7-8CE7-11CF-9754-00AA00C00908}']
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool); dispid -608;
  end;

{ NetManage internet client control }

  INMOleClientControl = interface(INMOleControl)
    ['{B7FC35B4-8CE7-11CF-9754-00AA00C00908}']
    function Get_RemoteHost: WideString; safecall;
    procedure Set_RemoteHost(const Value: WideString); safecall;
    function Get_RemotePort: Integer; safecall;
    procedure Set_RemotePort(Value: Integer); safecall;
    function Get_State: Smallint; safecall;
    function Get_ProtocolState: Smallint; safecall;
    function Get_ReplyString: WideString; safecall;
    function Get_ReplyCode: Integer; safecall;
    function Get_Timeout(event: Smallint): Integer; safecall;
    procedure Set_Timeout(event: Smallint; Value: Integer); safecall;
    procedure Set_EnableTimer(event: Smallint; Value: WordBool); safecall;
    function Get_Errors: icErrors; safecall;
    function Get_Busy: WordBool; safecall;
    function Get_NotificationMode: Smallint; safecall;
    procedure Set_NotificationMode(Value: Smallint); safecall;
    function Get_StateString: WideString; safecall;
    function Get_ProtocolStateString: WideString; safecall;
    function Get_Logging: WordBool; safecall;
    procedure Set_Logging(Value: WordBool); safecall;
    function Get_LocalPort: Integer; safecall;
    procedure Set_LocalPort(Value: Integer); safecall;
    function Get_SocketHandle: Integer; safecall;
    procedure Cancel; safecall;
    procedure Connect(RemoteHost, RemotePort: OleVariant); safecall;
    property RemoteHost: WideString read Get_RemoteHost write Set_RemoteHost;
    property RemotePort: Integer read Get_RemotePort write Set_RemotePort;
    property State: Smallint read Get_State;
    property ProtocolState: Smallint read Get_ProtocolState;
    property ReplyString: WideString read Get_ReplyString;
    property ReplyCode: Integer read Get_ReplyCode;
    property Timeout[event: Smallint]: Integer read Get_Timeout write Set_Timeout;
    property EnableTimer[event: Smallint]: WordBool write Set_EnableTimer;
    property Errors: icErrors read Get_Errors;
    property Busy: WordBool read Get_Busy;
    property NotificationMode: Smallint read Get_NotificationMode write Set_NotificationMode;
    property StateString: WideString read Get_StateString;
    property ProtocolStateString: WideString read Get_ProtocolStateString;
    property Logging: WordBool read Get_Logging write Set_Logging;
    property LocalPort: Integer read Get_LocalPort write Set_LocalPort;
    property SocketHandle: Integer read Get_SocketHandle;
  end;

{ DispInterface declaration for Dual Interface INMOleClientControl }

  INMOleClientControlDisp = dispinterface
    ['{B7FC35B4-8CE7-11CF-9754-00AA00C00908}']
    property RemoteHost: WideString dispid 0;
    property RemotePort: Integer dispid 502;
    property State: Smallint readonly dispid 503;
    property ProtocolState: Smallint readonly dispid 504;
    property ReplyString: WideString readonly dispid 505;
    property ReplyCode: Integer readonly dispid 506;
    property Timeout[event: Smallint]: Integer dispid 507;
    property EnableTimer[event: Smallint]: WordBool writeonly dispid 513;
    property Errors: icErrors readonly dispid 508;
    property Busy: WordBool readonly dispid 509;
    property NotificationMode: Smallint dispid 510;
    property StateString: WideString readonly dispid 511;
    property ProtocolStateString: WideString readonly dispid 512;
    property Logging: WordBool dispid 514;
    property LocalPort: Integer dispid 517;
    property SocketHandle: Integer readonly dispid 518;
    procedure Cancel; dispid 520;
    procedure Connect(RemoteHost, RemotePort: OleVariant); dispid 521;
  end;

{ NetManage Internet Client control events }

  DNMOleClientControlEvents = dispinterface
    ['{B7FC35B5-8CE7-11CF-9754-00AA00C00908}']
    procedure Timeout(event: Smallint); dispid 551;
    procedure Cancel; dispid 552;
    procedure StateChanged(State: Smallint); dispid 553;
    procedure ProtocolStateChanged(ProtocolState: Smallint); dispid 554;
    procedure Busy(isBusy: WordBool); dispid 555;
    procedure Log; dispid 556;
  end;

{ NetManage Authenticated Client Control }

  INMOleAuthClientControl = interface(INMOleClientControl)
    ['{B7FC35B0-8CE7-11CF-9754-00AA00C00908}']
    function Get_UserId: WideString; safecall;
    procedure Set_UserId(const Value: WideString); safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const Value: WideString); safecall;
    procedure Authenticate(UserId, Password: OleVariant); safecall;
    property UserId: WideString read Get_UserId write Set_UserId;
    property Password: WideString read Get_Password write Set_Password;
  end;

{ DispInterface declaration for Dual Interface INMOleAuthClientControl }

  INMOleAuthClientControlDisp = dispinterface
    ['{B7FC35B0-8CE7-11CF-9754-00AA00C00908}']
    property UserId: WideString dispid 601;
    property Password: WideString dispid 602;
    procedure Authenticate(UserId, Password: OleVariant); dispid 610;
  end;

{ Event interface for NetManage Authenticated Client Control }

  DNMOleAuthClientControlEvents = dispinterface
    ['{B7FC35B1-8CE7-11CF-9754-00AA00C00908}']
  end;

{ Properties/Methods for NetManage FTP Client Control }

  Iftpct = interface(INMOleAuthClientControl)
    ['{B7FC354A-8CE7-11CF-9754-00AA00C00908}']
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_DocInput: DocInput; safecall;
    function Get_DocOutput: DocOutput; safecall;
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant); safecall;
    procedure GetDoc(URL, Headers, OutputFile: OleVariant); safecall;
    function Get_AppendToFile: WordBool; safecall;
    procedure Set_AppendToFile(Value: WordBool); safecall;
    function Get_ListItemNotify: WordBool; safecall;
    procedure Set_ListItemNotify(Value: WordBool); safecall;
    function Get_RemoteFile: WideString; safecall;
    procedure Set_RemoteFile(const Value: WideString); safecall;
    function Get_Operation: FTPOperationConstants; safecall;
    function Get_PassiveMode: WordBool; safecall;
    procedure Set_PassiveMode(Value: WordBool); safecall;
    function Get_Firewall: IFirewall; safecall;
    procedure Abort; safecall;
    procedure Account(const Account: WideString); safecall;
    procedure ChangeDir(const directory: WideString); safecall;
    procedure CreateDir(const directory: WideString); safecall;
    procedure DeleteDir(const directory: WideString); safecall;
    procedure DeleteFile(const FileName: WideString); safecall;
    procedure Quit; safecall;
    procedure Help(const Help: WideString); safecall;
    procedure Noop; safecall;
    procedure Mode(ftpMode: FTPModeConstants); safecall;
    procedure Type_(ftpType: FTPTypeConstants); safecall;
    procedure List(const List: WideString); safecall;
    procedure NameList(const NameList: WideString); safecall;
    procedure ParentDir; safecall;
    procedure PrintDir; safecall;
    procedure Execute(const Execute: WideString); safecall;
    procedure Status(const Status: WideString); safecall;
    procedure PutFile(const srcFileName, destFileName: WideString); safecall;
    procedure Reinitialize; safecall;
    procedure System; safecall;
    procedure GetFile(const srcFileName, destFileName: WideString); safecall;
    procedure PutFileUnique(const FileName: WideString); safecall;
    procedure Site(const Site: WideString); safecall;
    property URL: WideString read Get_URL write Set_URL;
    property DocInput: DocInput read Get_DocInput;
    property DocOutput: DocOutput read Get_DocOutput;
    property AppendToFile: WordBool read Get_AppendToFile write Set_AppendToFile;
    property ListItemNotify: WordBool read Get_ListItemNotify write Set_ListItemNotify;
    property RemoteFile: WideString read Get_RemoteFile write Set_RemoteFile;
    property Operation: FTPOperationConstants read Get_Operation;
    property PassiveMode: WordBool read Get_PassiveMode write Set_PassiveMode;
    property Firewall: IFirewall read Get_Firewall;
  end;

{ DispInterface declaration for Dual Interface Iftpct }

  IftpctDisp = dispinterface
    ['{B7FC354A-8CE7-11CF-9754-00AA00C00908}']
    property URL: WideString dispid 1001;
    property DocInput: DocInput readonly dispid 1002;
    property DocOutput: DocOutput readonly dispid 1003;
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant); dispid 1005;
    procedure GetDoc(URL, Headers, OutputFile: OleVariant); dispid 1004;
    property AppendToFile: WordBool dispid 1;
    property ListItemNotify: WordBool dispid 2;
    property RemoteFile: WideString dispid 3;
    property Operation: FTPOperationConstants readonly dispid 5;
    property PassiveMode: WordBool dispid 6;
    property Firewall: IFirewall readonly dispid 86;
    procedure Abort; dispid 8;
    procedure Account(const Account: WideString); dispid 9;
    procedure ChangeDir(const directory: WideString); dispid 10;
    procedure CreateDir(const directory: WideString); dispid 11;
    procedure DeleteDir(const directory: WideString); dispid 12;
    procedure DeleteFile(const FileName: WideString); dispid 13;
    procedure Quit; dispid 14;
    procedure Help(const Help: WideString); dispid 16;
    procedure Noop; dispid 18;
    procedure Mode(ftpMode: FTPModeConstants); dispid 19;
    procedure Type_(ftpType: FTPTypeConstants); dispid 20;
    procedure List(const List: WideString); dispid 21;
    procedure NameList(const NameList: WideString); dispid 22;
    procedure ParentDir; dispid 23;
    procedure PrintDir; dispid 24;
    procedure Execute(const Execute: WideString); dispid 25;
    procedure Status(const Status: WideString); dispid 26;
    procedure PutFile(const srcFileName, destFileName: WideString); dispid 27;
    procedure Reinitialize; dispid 28;
    procedure System; dispid 29;
    procedure GetFile(const srcFileName, destFileName: WideString); dispid 30;
    procedure PutFileUnique(const FileName: WideString); dispid 31;
    procedure Site(const Site: WideString); dispid 32;
  end;

{ FTP client control events }

  DftpctEvents = dispinterface
    ['{B7FC354B-8CE7-11CF-9754-00AA00C00908}']
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool); dispid -608;
    procedure Timeout(event: Smallint; var Continue: WordBool); dispid 551;
    procedure Cancel; dispid 552;
    procedure StateChanged(State: Smallint); dispid 553;
    procedure ProtocolStateChanged(ProtocolState: Smallint); dispid 554;
    procedure Busy(isBusy: WordBool); dispid 555;
    procedure Log; dispid 556;
    procedure DocInput(const DocInput: DocInput); dispid 1016;
    procedure DocOutput(const DocOutput: DocOutput); dispid 1017;
    procedure Abort; dispid 43;
    procedure Account; dispid 44;
    procedure ChangeDir; dispid 45;
    procedure CreateDir; dispid 47;
    procedure DeleteDir; dispid 48;
    procedure DelFile; dispid 49;
    procedure Help; dispid 54;
    procedure Mode; dispid 55;
    procedure Noop; dispid 56;
    procedure ParentDir; dispid 57;
    procedure PrintDir; dispid 58;
    procedure Execute; dispid 60;
    procedure Status; dispid 62;
    procedure Reinitialize; dispid 63;
    procedure System; dispid 64;
    procedure Site; dispid 66;
    procedure Type_; dispid 68;
    procedure ListItem(const Item: FTPDirItem); dispid 67;
    procedure FirewallStateChanged(sFirewallState: Smallint); dispid 90;
  end;

{ FTP directory item object }

  CoFTPDirItemCls = class
    class function Create: FTPDirItem;
    class function CreateRemote(const MachineName: string): FTPDirItem;
  end;

{ Firewall Object }

  CoFirewall = class
    class function Create: IFirewall;
    class function CreateRemote(const MachineName: string): IFirewall;
  end;

{ NetManage FTP Client Control }

  TFTPError = procedure(Sender: TObject; Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool) of object;
  TFTPTimeout = procedure(Sender: TObject; event: Smallint; var Continue: WordBool) of object;
  TFTPStateChanged = procedure(Sender: TObject; State: Smallint) of object;
  TFTPProtocolStateChanged = procedure(Sender: TObject; ProtocolState: Smallint) of object;
  TFTPBusy = procedure(Sender: TObject; isBusy: WordBool) of object;
  TFTPDocInput = procedure(Sender: TObject; const DocInput: DocInput) of object;
  TFTPDocOutput = procedure(Sender: TObject; const DocOutput: DocOutput) of object;
  TFTPListItem = procedure(Sender: TObject; const Item: FTPDirItem) of object;
  TFTPFirewallStateChanged = procedure(Sender: TObject; sFirewallState: Smallint) of object;

  TFTP = class(TOleControl)
  private
    FOnError: TFTPError;
    FOnTimeout: TFTPTimeout;
    FOnCancel: TNotifyEvent;
    FOnStateChanged: TFTPStateChanged;
    FOnProtocolStateChanged: TFTPProtocolStateChanged;
    FOnBusy: TFTPBusy;
    FOnLog: TNotifyEvent;
    FOnDocInput: TFTPDocInput;
    FOnDocOutput: TFTPDocOutput;
    FOnAbort: TNotifyEvent;
    FOnAccount: TNotifyEvent;
    FOnChangeDir: TNotifyEvent;
    FOnCreateDir: TNotifyEvent;
    FOnDeleteDir: TNotifyEvent;
    FOnDelFile: TNotifyEvent;
    FOnHelp: TNotifyEvent;
    FOnMode: TNotifyEvent;
    FOnNoop: TNotifyEvent;
    FOnParentDir: TNotifyEvent;
    FOnPrintDir: TNotifyEvent;
    FOnExecute: TNotifyEvent;
    FOnStatus: TNotifyEvent;
    FOnReinitialize: TNotifyEvent;
    FOnSystem: TNotifyEvent;
    FOnSite: TNotifyEvent;
    FOnType_: TNotifyEvent;
    FOnListItem: TFTPListItem;
    FOnFirewallStateChanged: TFTPFirewallStateChanged;
    FIntf: Iftpct;
    function Get_Timeout(event: Smallint): Integer;
    procedure Set_Timeout(event: Smallint; Value: Integer);
    procedure Set_EnableTimer(event: Smallint; Value: WordBool);
    function Get_Errors: icErrors;
    function Get_DocInput: DocInput;
    function Get_DocOutput: DocOutput;
    function Get_Firewall: IFirewall;
  protected
    procedure InitControlData; override;
    procedure InitControlInterface(const Obj: IUnknown); override;
  public
    procedure AboutBox;
    procedure Cancel;
    procedure Connect(RemoteHost, RemotePort: OleVariant);
    procedure Authenticate(UserId, Password: OleVariant);
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant);
    procedure GetDoc(URL, Headers, OutputFile: OleVariant);
    procedure Abort;
    procedure Account(const Account: WideString);
    procedure ChangeDir(const directory: WideString);
    procedure CreateDir(const directory: WideString);
    procedure DeleteDir(const directory: WideString);
    procedure DeleteFile(const FileName: WideString);
    procedure Quit;
    procedure Help(const Help: WideString);
    procedure Noop;
    procedure Mode(ftpMode: FTPModeConstants);
    procedure Type_(ftpType: FTPTypeConstants);
    procedure List(const List: WideString);
    procedure NameList(const NameList: WideString);
    procedure ParentDir;
    procedure PrintDir;
    procedure Execute(const Execute: WideString);
    procedure Status(const Status: WideString);
    procedure PutFile(const srcFileName, destFileName: WideString);
    procedure Reinitialize;
    procedure System;
    procedure GetFile(const srcFileName, destFileName: WideString);
    procedure PutFileUnique(const FileName: WideString);
    procedure Site(const Site: WideString);
    property ControlInterface: Iftpct read FIntf;
    property BlockResult: Smallint index 519 read GetSmallintProp;
    property State: Smallint index 503 read GetSmallintProp;
    property ProtocolState: Smallint index 504 read GetSmallintProp;
    property ReplyString: WideString index 505 read GetWideStringProp;
    property ReplyCode: Integer index 506 read GetIntegerProp;
    property Timeout[event: Smallint]: Integer read Get_Timeout write Set_Timeout;
    property EnableTimer[event: Smallint]: WordBool write Set_EnableTimer;
    property Errors: icErrors read Get_Errors;
    property Busy: WordBool index 509 read GetWordBoolProp;
    property StateString: WideString index 511 read GetWideStringProp;
    property ProtocolStateString: WideString index 512 read GetWideStringProp;
    property SocketHandle: Integer index 518 read GetIntegerProp;
    property DocInput: DocInput read Get_DocInput;
    property DocOutput: DocOutput read Get_DocOutput;
    property Operation: FTPOperationConstants index 5 read GetTOleEnumProp;
    property Firewall: IFirewall read Get_Firewall;
  published
    property Blocking: WordBool index 515 read GetWordBoolProp write SetWordBoolProp stored False;
    property SleepTime: Integer index 516 read GetIntegerProp write SetIntegerProp stored False;
    property RemoteHost: WideString index 0 read GetWideStringProp write SetWideStringProp stored False;
    property RemotePort: Integer index 502 read GetIntegerProp write SetIntegerProp stored False;
    property NotificationMode: Smallint index 510 read GetSmallintProp write SetSmallintProp stored False;
    property Logging: WordBool index 514 read GetWordBoolProp write SetWordBoolProp stored False;
    property LocalPort: Integer index 517 read GetIntegerProp write SetIntegerProp stored False;
    property UserId: WideString index 601 read GetWideStringProp write SetWideStringProp stored False;
    property Password: WideString index 602 read GetWideStringProp write SetWideStringProp stored False;
    property URL: WideString index 1001 read GetWideStringProp write SetWideStringProp stored False;
    property AppendToFile: WordBool index 1 read GetWordBoolProp write SetWordBoolProp stored False;
    property ListItemNotify: WordBool index 2 read GetWordBoolProp write SetWordBoolProp stored False;
    property RemoteFile: WideString index 3 read GetWideStringProp write SetWideStringProp stored False;
    property PassiveMode: WordBool index 6 read GetWordBoolProp write SetWordBoolProp stored False;
    property OnError: TFTPError read FOnError write FOnError;
    property OnTimeout: TFTPTimeout read FOnTimeout write FOnTimeout;
    property OnCancel: TNotifyEvent read FOnCancel write FOnCancel;
    property OnStateChanged: TFTPStateChanged read FOnStateChanged write FOnStateChanged;
    property OnProtocolStateChanged: TFTPProtocolStateChanged read FOnProtocolStateChanged write FOnProtocolStateChanged;
    property OnBusy: TFTPBusy read FOnBusy write FOnBusy;
    property OnLog: TNotifyEvent read FOnLog write FOnLog;
    property OnDocInput: TFTPDocInput read FOnDocInput write FOnDocInput;
    property OnDocOutput: TFTPDocOutput read FOnDocOutput write FOnDocOutput;
    property OnAbort: TNotifyEvent read FOnAbort write FOnAbort;
    property OnAccount: TNotifyEvent read FOnAccount write FOnAccount;
    property OnChangeDir: TNotifyEvent read FOnChangeDir write FOnChangeDir;
    property OnCreateDir: TNotifyEvent read FOnCreateDir write FOnCreateDir;
    property OnDeleteDir: TNotifyEvent read FOnDeleteDir write FOnDeleteDir;
    property OnDelFile: TNotifyEvent read FOnDelFile write FOnDelFile;
    property OnHelp: TNotifyEvent read FOnHelp write FOnHelp;
    property OnMode: TNotifyEvent read FOnMode write FOnMode;
    property OnNoop: TNotifyEvent read FOnNoop write FOnNoop;
    property OnParentDir: TNotifyEvent read FOnParentDir write FOnParentDir;
    property OnPrintDir: TNotifyEvent read FOnPrintDir write FOnPrintDir;
    property OnExecute: TNotifyEvent read FOnExecute write FOnExecute;
    property OnStatus: TNotifyEvent read FOnStatus write FOnStatus;
    property OnReinitialize: TNotifyEvent read FOnReinitialize write FOnReinitialize;
    property OnSystem: TNotifyEvent read FOnSystem write FOnSystem;
    property OnSite: TNotifyEvent read FOnSite write FOnSite;
    property OnType_: TNotifyEvent read FOnType_ write FOnType_;
    property OnListItem: TFTPListItem read FOnListItem write FOnListItem;
    property OnFirewallStateChanged: TFTPFirewallStateChanged read FOnFirewallStateChanged write FOnFirewallStateChanged;
  end;

const
  LIBID_HTTPCTLib: TGUID = '{B7FC355F-8CE7-11CF-9754-00AA00C00908}';

const

{ MethodConstants }

  prcGet = 1;
  prcHead = 2;
  prcPost = 3;
  prcPut = 4;

{ HTTPProtocolStateConstants }

  httpBase = 0;
  httpTransferring = 1;

const

{ Component class GUIDs }
  Class_Proxy: TGUID = '{70F78900-F452-11CF-A306-00A0243B6C29}';
  Class_HTTP: TGUID = '{B7FC3563-8CE7-11CF-9754-00AA00C00908}';

type

{ Forward declarations }
{ Forward declarations: Interfaces }
  IHttpProxy = interface;
  IHttpProxyDisp = dispinterface;
  IHTTPCT = interface;
  IHTTPCTDisp = dispinterface;
  DHTTPCTEvents = dispinterface;

{ Forward declarations: CoClasses }
  Proxy = IHttpProxy;
  HTTP = IHTTPCT;

{ Forward declarations: Enums }
  MethodConstants = TOleEnum;
  HTTPProtocolStateConstants = TOleEnum;

{ Proxy Object }

  IHttpProxy = interface(IDispatch)
    ['{6FB8A060-F452-11CF-A306-00A0243B6C29}']
    function Get_Mode: WordBool; safecall;
    procedure Set_Mode(Value: WordBool); safecall;
    function Get_Host: WideString; safecall;
    procedure Set_Host(const Value: WideString); safecall;
    function Get_Port: Integer; safecall;
    procedure Set_Port(Value: Integer); safecall;
    property Mode: WordBool read Get_Mode write Set_Mode;
    property Host: WideString read Get_Host write Set_Host;
    property Port: Integer read Get_Port write Set_Port;
  end;

{ DispInterface declaration for Dual Interface IHttpProxy }

  IHttpProxyDisp = dispinterface
    ['{6FB8A060-F452-11CF-A306-00A0243B6C29}']
    property Mode: WordBool dispid 20;
    property Host: WideString dispid 22;
    property Port: Integer dispid 23;
  end;

{ Properties/Methods for NetManage HTTP Client Control }

  IHTTPCT = interface(INMOleControl)
    ['{B7FC3561-8CE7-11CF-9754-00AA00C00908}']
    function Get_RemoteHost: WideString; safecall;
    procedure Set_RemoteHost(const Value: WideString); safecall;
    function Get_RemotePort: Integer; safecall;
    procedure Set_RemotePort(Value: Integer); safecall;
    function Get_State: Smallint; safecall;
    function Get_ProtocolState: Smallint; safecall;
    function Get_ReplyString: WideString; safecall;
    function Get_ReplyCode: Integer; safecall;
    function Get_Timeout(event: Smallint): Integer; safecall;
    procedure Set_Timeout(event: Smallint; Value: Integer); safecall;
    procedure Set_EnableTimer(event: Smallint; Value: WordBool); safecall;
    function Get_Errors: icErrors; safecall;
    function Get_Busy: WordBool; safecall;
    function Get_NotificationMode: Smallint; safecall;
    procedure Set_NotificationMode(Value: Smallint); safecall;
    function Get_StateString: WideString; safecall;
    function Get_ProtocolStateString: WideString; safecall;
    function Get_Logging: WordBool; safecall;
    procedure Set_Logging(Value: WordBool); safecall;
    function Get_LocalPort: Integer; safecall;
    procedure Set_LocalPort(Value: Integer); safecall;
    function Get_SocketHandle: Integer; safecall;
    procedure Cancel; safecall;
    property RemoteHost: WideString read Get_RemoteHost write Set_RemoteHost;
    property RemotePort: Integer read Get_RemotePort write Set_RemotePort;
    property State: Smallint read Get_State;
    property ProtocolState: Smallint read Get_ProtocolState;
    property ReplyString: WideString read Get_ReplyString;
    property ReplyCode: Integer read Get_ReplyCode;
    property Timeout[event: Smallint]: Integer read Get_Timeout write Set_Timeout;
    property EnableTimer[event: Smallint]: WordBool write Set_EnableTimer;
    property Errors: icErrors read Get_Errors;
    property Busy: WordBool read Get_Busy;
    property NotificationMode: Smallint read Get_NotificationMode write Set_NotificationMode;
    property StateString: WideString read Get_StateString;
    property ProtocolStateString: WideString read Get_ProtocolStateString;
    property Logging: WordBool read Get_Logging write Set_Logging;
    property LocalPort: Integer read Get_LocalPort write Set_LocalPort;
    property SocketHandle: Integer read Get_SocketHandle;

    function Get_Document: WideString; safecall;
    procedure Set_Document(const Value: WideString); safecall;
    function Get_Method: MethodConstants; safecall;
    procedure Set_Method(Value: MethodConstants); safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_DocInput: DocInput; safecall;
    function Get_DocOutput: DocOutput; safecall;
    function Get_Proxy: IHttpProxy; safecall;
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant); safecall;
    procedure GetDoc(URL, Headers, OutputFile: OleVariant); safecall;
    property Document: WideString read Get_Document write Set_Document;
    property Method: MethodConstants read Get_Method write Set_Method;
    property URL: WideString read Get_URL write Set_URL;
    property DocInput: DocInput read Get_DocInput;
    property DocOutput: DocOutput read Get_DocOutput;
    property Proxy: IHttpProxy read Get_Proxy;
  end;

{ DispInterface declaration for Dual Interface IHTTPCT }

  IHTTPCTDisp = dispinterface
    ['{B7FC3561-8CE7-11CF-9754-00AA00C00908}']
    property Document: WideString dispid 10;
    property Method: MethodConstants dispid 11;
    property URL: WideString dispid 1001;
    property DocInput: DocInput readonly dispid 1002;
    property DocOutput: DocOutput readonly dispid 1003;
    property Proxy: IHttpProxy readonly dispid 21;
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant); dispid 1005;
    procedure GetDoc(URL, Headers, OutputFile: OleVariant); dispid 1004;
  end;

{ Event interface for NetManage HTTP Client Control }

  DHTTPCTEvents = dispinterface
    ['{B7FC3562-8CE7-11CF-9754-00AA00C00908}']
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool); dispid -608;
    procedure Timeout(event: Smallint; var Continue: WordBool); dispid 551;
    procedure Cancel; dispid 552;
    procedure StateChanged(State: Smallint); dispid 553;
    procedure ProtocolStateChanged(ProtocolState: Smallint); dispid 554;
    procedure Busy(isBusy: WordBool); dispid 555;
    procedure Log; dispid 556;
    procedure DocInput(const DocInput: DocInput); dispid 1016;
    procedure DocOutput(const DocOutput: DocOutput); dispid 1017;
  end;

{ Proxy Object }

  CoProxy = class
    class function Create: IHttpProxy;
    class function CreateRemote(const MachineName: string): IHttpProxy;
  end;

{ NetManage HTTP Client Control }

  THTTPError = procedure(Sender: TObject; Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool) of object;
  THTTPTimeout = procedure(Sender: TObject; event: Smallint; var Continue: WordBool) of object;
  THTTPStateChanged = procedure(Sender: TObject; State: Smallint) of object;
  THTTPProtocolStateChanged = procedure(Sender: TObject; ProtocolState: Smallint) of object;
  THTTPBusy = procedure(Sender: TObject; isBusy: WordBool) of object;
  THTTPDocInput = procedure(Sender: TObject; const DocInput: DocInput) of object;
  THTTPDocOutput = procedure(Sender: TObject; const DocOutput: DocOutput) of object;

  THTTP = class(TOleControl)
  private
    FOnError: THTTPError;
    FOnTimeout: THTTPTimeout;
    FOnCancel: TNotifyEvent;
    FOnStateChanged: THTTPStateChanged;
    FOnProtocolStateChanged: THTTPProtocolStateChanged;
    FOnBusy: THTTPBusy;
    FOnLog: TNotifyEvent;
    FOnDocInput: THTTPDocInput;
    FOnDocOutput: THTTPDocOutput;
    FIntf: IHTTPCT;
    function Get_Timeout(event: Smallint): Integer;
    procedure Set_Timeout(event: Smallint; Value: Integer);
    procedure Set_EnableTimer(event: Smallint; Value: WordBool);
    function Get_Errors: icErrors;
    function Get_DocInput: DocInput;
    function Get_DocOutput: DocOutput;
    function Get_Proxy: IHttpProxy;
  protected
    procedure InitControlData; override;
    procedure InitControlInterface(const Obj: IUnknown); override;
  public
    procedure AboutBox;
    procedure Cancel;
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant);
    procedure GetDoc(URL, Headers, OutputFile: OleVariant);
    property ControlInterface: IHTTPCT read FIntf;
    property BlockResult: Smallint index 519 read GetSmallintProp;
    property State: Smallint index 503 read GetSmallintProp;
    property ProtocolState: Smallint index 504 read GetSmallintProp;
    property ReplyString: WideString index 505 read GetWideStringProp;
    property ReplyCode: Integer index 506 read GetIntegerProp;
    property Timeout[event: Smallint]: Integer read Get_Timeout write Set_Timeout;
    property EnableTimer[event: Smallint]: WordBool write Set_EnableTimer;
    property Errors: icErrors read Get_Errors;
    property Busy: WordBool index 509 read GetWordBoolProp;
    property StateString: WideString index 511 read GetWideStringProp;
    property ProtocolStateString: WideString index 512 read GetWideStringProp;
    property SocketHandle: Integer index 518 read GetIntegerProp;
    property DocInput: DocInput read Get_DocInput;
    property DocOutput: DocOutput read Get_DocOutput;
    property Proxy: IHttpProxy read Get_Proxy;
  published
    property Blocking: WordBool index 515 read GetWordBoolProp write SetWordBoolProp stored False;
    property SleepTime: Integer index 516 read GetIntegerProp write SetIntegerProp stored False;
    property RemoteHost: WideString index 0 read GetWideStringProp write SetWideStringProp stored False;
    property RemotePort: Integer index 502 read GetIntegerProp write SetIntegerProp stored False;
    property NotificationMode: Smallint index 510 read GetSmallintProp write SetSmallintProp stored False;
    property Logging: WordBool index 514 read GetWordBoolProp write SetWordBoolProp stored False;
    property LocalPort: Integer index 517 read GetIntegerProp write SetIntegerProp stored False;
    property Document: WideString index 10 read GetWideStringProp write SetWideStringProp stored False;
    property Method: MethodConstants index 11 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property URL: WideString index 1001 read GetWideStringProp write SetWideStringProp stored False;
    property OnError: THTTPError read FOnError write FOnError;
    property OnTimeout: THTTPTimeout read FOnTimeout write FOnTimeout;
    property OnCancel: TNotifyEvent read FOnCancel write FOnCancel;
    property OnStateChanged: THTTPStateChanged read FOnStateChanged write FOnStateChanged;
    property OnProtocolStateChanged: THTTPProtocolStateChanged read FOnProtocolStateChanged write FOnProtocolStateChanged;
    property OnBusy: THTTPBusy read FOnBusy write FOnBusy;
    property OnLog: TNotifyEvent read FOnLog write FOnLog;
    property OnDocInput: THTTPDocInput read FOnDocInput write FOnDocInput;
    property OnDocOutput: THTTPDocOutput read FOnDocOutput write FOnDocOutput;
  end;

const
  LIBID_HTMLObjects: TGUID = '{B7FC354D-8CE7-11CF-9754-00AA00C00908}';

{ Component class GUIDs }
  Class_HTMLElementCls: TGUID = '{B7FC3550-8CE7-11CF-9754-00AA00C00908}';
  Class_HTMLFormCls: TGUID = '{B7FC3554-8CE7-11CF-9754-00AA00C00908}';
  Class_HTMLFormsCls: TGUID = '{B7FC3557-8CE7-11CF-9754-00AA00C00908}';
  Class_HTMLAttrCls: TGUID = '{B7FC3559-8CE7-11CF-9754-00AA00C00908}';
  Class_HTMLAttrsCls: TGUID = '{B7FC355B-8CE7-11CF-9754-00AA00C00908}';
  Class_HTML: TGUID = '{B7FC355E-8CE7-11CF-9754-00AA00C00908}';

type

{ Forward declarations }
{ Forward declarations: Interfaces }
  HTMLElement = interface;
  HTMLElementDisp = dispinterface;
  HTMLForm = interface;
  HTMLFormDisp = dispinterface;
  HTMLForms = interface;
  HTMLFormsDisp = dispinterface;
  HTMLAttr = interface;
  HTMLAttrDisp = dispinterface;
  HTMLAttrs = interface;
  HTMLAttrsDisp = dispinterface;
  IHTML = interface;
  IHTMLDisp = dispinterface;
  DHTMLEvents = dispinterface;

{ Forward declarations: CoClasses }
  HTMLElementCls = HTMLElement;
  HTMLFormCls = HTMLForm;
  HTMLFormsCls = HTMLForms;
  HTMLAttrCls = HTMLAttr;
  HTMLAttrsCls = HTMLAttrs;
  HTML = IHTML;

{ HTML Element properties and methods }

  HTMLElement = interface(IDispatch)
    ['{B7FC354E-8CE7-11CF-9754-00AA00C00908}']
  end;

{ DispInterface declaration for Dual Interface HTMLElement }

  HTMLElementDisp = dispinterface
    ['{B7FC354E-8CE7-11CF-9754-00AA00C00908}']
  end;

{ HTML Form properties and methods }

  HTMLForm = interface(IDispatch)
    ['{B7FC3551-8CE7-11CF-9754-00AA00C00908}']
    function Get_Method: WideString; safecall;
    function Get_URL: WideString; safecall;
    function Get_URLEncodedBody: WideString; safecall;
    procedure RequestSubmit; safecall;
    function Get_CPPObject: SYSINT; safecall;
    procedure Set_CPPObject(Value: SYSINT); safecall;
    property Method: WideString read Get_Method;
    property URL: WideString read Get_URL;
    property URLEncodedBody: WideString read Get_URLEncodedBody;
    property CPPObject: SYSINT read Get_CPPObject write Set_CPPObject;
  end;

{ DispInterface declaration for Dual Interface HTMLForm }

  HTMLFormDisp = dispinterface
    ['{B7FC3551-8CE7-11CF-9754-00AA00C00908}']
    property Method: WideString readonly dispid 1;
    property URL: WideString readonly dispid 2;
    property URLEncodedBody: WideString readonly dispid 3;
    procedure RequestSubmit; dispid 4;
    property CPPObject: SYSINT dispid 100;
  end;

{ HTML Forms collection properties and methods }

  HTMLForms = interface(IDispatch)
    ['{B7FC3555-8CE7-11CF-9754-00AA00C00908}']
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Item(Index: OleVariant): HTMLForm; safecall;
    function Get_CPPObject: SYSINT; safecall;
    procedure Set_CPPObject(Value: SYSINT); safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property CPPObject: SYSINT read Get_CPPObject write Set_CPPObject;
  end;

{ DispInterface declaration for Dual Interface HTMLForms }

  HTMLFormsDisp = dispinterface
    ['{B7FC3555-8CE7-11CF-9754-00AA00C00908}']
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    function Item(Index: OleVariant): HTMLForm; dispid 2;
    property CPPObject: SYSINT dispid 100;
  end;

{ HTML Attribute properties and methods }

  HTMLAttr = interface(IDispatch)
    ['{B7FC3558-8CE7-11CF-9754-00AA00C00908}']
    function Get_Name: WideString; safecall;
    function Get_Value: WideString; safecall;
    function Get_CPPObject: SYSINT; safecall;
    procedure Set_CPPObject(Value: SYSINT); safecall;
    property Name: WideString read Get_Name;
    property Value: WideString read Get_Value;
    property CPPObject: SYSINT read Get_CPPObject write Set_CPPObject;
  end;

{ DispInterface declaration for Dual Interface HTMLAttr }

  HTMLAttrDisp = dispinterface
    ['{B7FC3558-8CE7-11CF-9754-00AA00C00908}']
    property Name: WideString readonly dispid 1;
    property Value: WideString readonly dispid 2;
    property CPPObject: SYSINT dispid 100;
  end;

{ HTML Attributes collection properties and methods }

  HTMLAttrs = interface(IDispatch)
    ['{B7FC355A-8CE7-11CF-9754-00AA00C00908}']
    function Get_Count: Integer; safecall;
    function Get__NewEnum: IUnknown; safecall;
    function Item(Index: OleVariant): HTMLAttr; safecall;
    function Get_CPPObject: SYSINT; safecall;
    procedure Set_CPPObject(Value: SYSINT); safecall;
    procedure Set_InternalCount(Value: Integer); safecall;
    property Count: Integer read Get_Count;
    property _NewEnum: IUnknown read Get__NewEnum;
    property CPPObject: SYSINT read Get_CPPObject write Set_CPPObject;
    property InternalCount: Integer write Set_InternalCount;
  end;

{ DispInterface declaration for Dual Interface HTMLAttrs }

  HTMLAttrsDisp = dispinterface
    ['{B7FC355A-8CE7-11CF-9754-00AA00C00908}']
    property Count: Integer readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    function Item(Index: OleVariant): HTMLAttr; dispid 2;
    property CPPObject: SYSINT dispid 100;
    property InternalCount: Integer writeonly dispid 3;
  end;

{ Properties/Methods for NetManage HTML Control }

  IHTML = interface(INMOleControl)
    ['{B7FC355C-8CE7-11CF-9754-00AA00C00908}']
    function Get_DocInput: DocInput; safecall;
    function Get_DocOutput: DocOutput; safecall;
    function Get_URL: WideString; safecall;
    function Get_RequestURL: WideString; safecall;
    function Get_BaseURL: WideString; safecall;
    function Get_Forms: HTMLForms; safecall;
    function Get_TotalWidth: Integer; safecall;
    function Get_TotalHeight: Integer; safecall;
    function Get_RetrieveBytesTotal: Integer; safecall;
    function Get_RetrieveBytesDone: Integer; safecall;
    function Get_ParseDone: WordBool; safecall;
    function Get_LayoutDone: WordBool; safecall;
    function Get_DeferRetrieval: WordBool; safecall;
    procedure Set_DeferRetrieval(Value: WordBool); safecall;
    function Get_ViewSource: WordBool; safecall;
    procedure Set_ViewSource(Value: WordBool); safecall;
    function Get_RetainSource: WordBool; safecall;
    procedure Set_RetainSource(Value: WordBool); safecall;
    function Get_SourceText: WideString; safecall;
    function Get_ElemNotification: WordBool; safecall;
    procedure Set_ElemNotification(Value: WordBool); safecall;
    function Get_Timeout: Integer; safecall;
    procedure Set_Timeout(Value: Integer); safecall;
    function Get_Redraw: WordBool; safecall;
    procedure Set_Redraw(Value: WordBool); safecall;
    function Get_UnderlineLinks: WordBool; safecall;
    procedure Set_UnderlineLinks(Value: WordBool); safecall;
    function Get_UseDocColors: WordBool; safecall;
    procedure Set_UseDocColors(Value: WordBool); safecall;
    function Get_BackImage: WideString; safecall;
    procedure Set_BackImage(const Value: WideString); safecall;
    function Get_BackColor: TColor; safecall;
    procedure Set_BackColor(Value: TColor); safecall;
    function Get_ForeColor: TColor; safecall;
    procedure Set_ForeColor(Value: TColor); safecall;
    function Get_LinkColor: TColor; safecall;
    procedure Set_LinkColor(Value: TColor); safecall;
    function Get_VisitedColor: TColor; safecall;
    procedure Set_VisitedColor(Value: TColor); safecall;
    function Get_DocBackColor: TColor; safecall;
    function Get_DocForeColor: TColor; safecall;
    function Get_DocLinkColor: TColor; safecall;
    function Get_DocVisitedColor: TColor; safecall;
    function Get_Font: IFontDisp; safecall;
    procedure Set_Font(const Value: IFontDisp); safecall;
    function Get_FixedFont: IFontDisp; safecall;
    procedure Set_FixedFont(const Value: IFontDisp); safecall;
    function Get_Heading1Font: IFontDisp; safecall;
    procedure Set_Heading1Font(const Value: IFontDisp); safecall;
    function Get_Heading2Font: IFontDisp; safecall;
    procedure Set_Heading2Font(const Value: IFontDisp); safecall;
    function Get_Heading3Font: IFontDisp; safecall;
    procedure Set_Heading3Font(const Value: IFontDisp); safecall;
    function Get_Heading4Font: IFontDisp; safecall;
    procedure Set_Heading4Font(const Value: IFontDisp); safecall;
    function Get_Heading5Font: IFontDisp; safecall;
    procedure Set_Heading5Font(const Value: IFontDisp); safecall;
    function Get_Heading6Font: IFontDisp; safecall;
    procedure Set_Heading6Font(const Value: IFontDisp); safecall;
    function Get_IsPrintingDone(PageNumber: Integer): WordBool; safecall;
    procedure RequestDoc(const URL: WideString); safecall;
    procedure RequestAllEmbedded; safecall;
    procedure Cancel(Message: OleVariant); safecall;
    procedure BeginPrinting(hDC: Integer; x, y, Width, Height, DefaultHeaders, DefaultTitle: OleVariant); safecall;
    procedure PrintPage(hDC, PageNumber: Integer); safecall;
    procedure EndPrinting; safecall;
    procedure AutoPrint(hDC: Integer); safecall;
    function Get_Errors: icErrors; safecall;
    function Get_hWnd: OLE_HANDLE; safecall;
    function GetPlainText(selected, fancy: WordBool): WideString; safecall;
    function HasSelection: WordBool; safecall;
    procedure SelectAll; safecall;
    property DocInput: DocInput read Get_DocInput;
    property DocOutput: DocOutput read Get_DocOutput;
    property URL: WideString read Get_URL;
    property RequestURL: WideString read Get_RequestURL;
    property BaseURL: WideString read Get_BaseURL;
    property Forms: HTMLForms read Get_Forms;
    property TotalWidth: Integer read Get_TotalWidth;
    property TotalHeight: Integer read Get_TotalHeight;
    property RetrieveBytesTotal: Integer read Get_RetrieveBytesTotal;
    property RetrieveBytesDone: Integer read Get_RetrieveBytesDone;
    property ParseDone: WordBool read Get_ParseDone;
    property LayoutDone: WordBool read Get_LayoutDone;
    property DeferRetrieval: WordBool read Get_DeferRetrieval write Set_DeferRetrieval;
    property ViewSource: WordBool read Get_ViewSource write Set_ViewSource;
    property RetainSource: WordBool read Get_RetainSource write Set_RetainSource;
    property SourceText: WideString read Get_SourceText;
    property ElemNotification: WordBool read Get_ElemNotification write Set_ElemNotification;
    property Timeout: Integer read Get_Timeout write Set_Timeout;
    property Redraw: WordBool read Get_Redraw write Set_Redraw;
    property UnderlineLinks: WordBool read Get_UnderlineLinks write Set_UnderlineLinks;
    property UseDocColors: WordBool read Get_UseDocColors write Set_UseDocColors;
    property BackImage: WideString read Get_BackImage write Set_BackImage;
    property BackColor: TColor read Get_BackColor write Set_BackColor;
    property ForeColor: TColor read Get_ForeColor write Set_ForeColor;
    property LinkColor: TColor read Get_LinkColor write Set_LinkColor;
    property VisitedColor: TColor read Get_VisitedColor write Set_VisitedColor;
    property DocBackColor: TColor read Get_DocBackColor;
    property DocForeColor: TColor read Get_DocForeColor;
    property DocLinkColor: TColor read Get_DocLinkColor;
    property DocVisitedColor: TColor read Get_DocVisitedColor;
    property Font: IFontDisp read Get_Font write Set_Font;
    property FixedFont: IFontDisp read Get_FixedFont write Set_FixedFont;
    property Heading1Font: IFontDisp read Get_Heading1Font write Set_Heading1Font;
    property Heading2Font: IFontDisp read Get_Heading2Font write Set_Heading2Font;
    property Heading3Font: IFontDisp read Get_Heading3Font write Set_Heading3Font;
    property Heading4Font: IFontDisp read Get_Heading4Font write Set_Heading4Font;
    property Heading5Font: IFontDisp read Get_Heading5Font write Set_Heading5Font;
    property Heading6Font: IFontDisp read Get_Heading6Font write Set_Heading6Font;
    property IsPrintingDone[PageNumber: Integer]: WordBool read Get_IsPrintingDone;
    property Errors: icErrors read Get_Errors;
    property hWnd: OLE_HANDLE read Get_hWnd;
  end;

{ DispInterface declaration for Dual Interface IHTML }

  IHTMLDisp = dispinterface
    ['{B7FC355C-8CE7-11CF-9754-00AA00C00908}']
    property DocInput: DocInput readonly dispid 1002;
    property DocOutput: DocOutput readonly dispid 1003;
    property URL: WideString readonly dispid 1001;
    property RequestURL: WideString readonly dispid 2;
    property BaseURL: WideString readonly dispid 3;
    property Forms: HTMLForms readonly dispid 4;
    property TotalWidth: Integer readonly dispid 5;
    property TotalHeight: Integer readonly dispid 6;
    property RetrieveBytesTotal: Integer readonly dispid 7;
    property RetrieveBytesDone: Integer readonly dispid 8;
    property ParseDone: WordBool readonly dispid 9;
    property LayoutDone: WordBool readonly dispid 10;
    property DeferRetrieval: WordBool dispid 11;
    property ViewSource: WordBool dispid 12;
    property RetainSource: WordBool dispid 13;
    property SourceText: WideString readonly dispid 14;
    property ElemNotification: WordBool dispid 15;
    property Timeout: Integer dispid 507;
    property Redraw: WordBool dispid 17;
    property UnderlineLinks: WordBool dispid 18;
    property UseDocColors: WordBool dispid 19;
    property BackImage: WideString dispid 20;
    property BackColor: TColor dispid -501;
    property ForeColor: TColor dispid -513;
    property LinkColor: TColor dispid 21;
    property VisitedColor: TColor dispid 22;
    property DocBackColor: TColor readonly dispid 23;
    property DocForeColor: TColor readonly dispid 24;
    property DocLinkColor: TColor readonly dispid 25;
    property DocVisitedColor: TColor readonly dispid 26;
    property Font: IFontDisp dispid -512;
    property FixedFont: IFontDisp dispid 27;
    property Heading1Font: IFontDisp dispid 28;
    property Heading2Font: IFontDisp dispid 29;
    property Heading3Font: IFontDisp dispid 30;
    property Heading4Font: IFontDisp dispid 31;
    property Heading5Font: IFontDisp dispid 32;
    property Heading6Font: IFontDisp dispid 33;
    property IsPrintingDone[PageNumber: Integer]: WordBool readonly dispid 39;
    procedure RequestDoc(const URL: WideString); dispid 34;
    procedure RequestAllEmbedded; dispid 35;
    procedure Cancel(Message: OleVariant); dispid 520;
    procedure BeginPrinting(hDC: Integer; x, y, Width, Height, DefaultHeaders, DefaultTitle: OleVariant); dispid 36;
    procedure PrintPage(hDC, PageNumber: Integer); dispid 37;
    procedure EndPrinting; dispid 38;
    procedure AutoPrint(hDC: Integer); dispid 50;
    property Errors: icErrors readonly dispid 508;
    property hWnd: OLE_HANDLE readonly dispid -515;
    function GetPlainText(selected, fancy: WordBool): WideString; dispid 41;
    function HasSelection: WordBool; dispid 42;
    procedure SelectAll; dispid 43;
  end;

{ HTML Control events }

  DHTMLEvents = dispinterface
    ['{B7FC355D-8CE7-11CF-9754-00AA00C00908}']
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool); dispid -608;
    procedure DocInput(const DocInput: DocInput); dispid 1016;
    procedure DocOutput(const DocOutput: DocOutput); dispid 1017;
    procedure ParseComplete; dispid 1;
    procedure LayoutComplete; dispid 2;
    procedure Timeout; dispid 551;
    procedure BeginRetrieval; dispid 4;
    procedure UpdateRetrieval; dispid 5;
    procedure EndRetrieval; dispid 6;
    procedure DoRequestDoc(const URL: WideString; const Element: HTMLElement; const DocInput: DocInput; var EnableDefault: WordBool); dispid 7;
    procedure DoRequestEmbedded(const URL: WideString; const Element: HTMLElement; const DocInput: DocInput; var EnableDefault: WordBool); dispid 8;
    procedure DoRequestSubmit(const URL: WideString; const Form: HTMLForm; const DocOutput: DocOutput; var EnableDefault: WordBool); dispid 9;
    procedure DoNewElement(const ElemType: WideString; EndTag: WordBool; const Attrs: HTMLAttrs; const text: WideString; var EnableDefault: WordBool); dispid 10;
    procedure KeyPress(KeyAscii: Smallint); dispid -603;
    procedure KeyDown(KeyCode, Shift: Smallint); dispid -602;
    procedure KeyUp(KeyCode, Shift: Smallint); dispid -604;
    procedure Click; dispid -600;
    procedure DblClick; dispid -601;
    procedure MouseDown(Button, Shift: Smallint; x: OLE_XPOS_PIXELS; y: OLE_YPOS_PIXELS); dispid -605;
    procedure MouseMove(Button, Shift: Smallint; x: OLE_XPOS_PIXELS; y: OLE_YPOS_PIXELS); dispid -606;
    procedure MouseUp(Button, Shift: Smallint; x: OLE_XPOS_PIXELS; y: OLE_YPOS_PIXELS); dispid -607;
  end;

{ HTML Element }

  CoHTMLElementCls = class
    class function Create: HTMLElement;
    class function CreateRemote(const MachineName: string): HTMLElement;
  end;

{ HTML Form object }

  CoHTMLFormCls = class
    class function Create: HTMLForm;
    class function CreateRemote(const MachineName: string): HTMLForm;
  end;

{ HTML Forms collection }

  CoHTMLFormsCls = class
    class function Create: HTMLForms;
    class function CreateRemote(const MachineName: string): HTMLForms;
  end;

{ HTML Attribute object }

  CoHTMLAttrCls = class
    class function Create: HTMLAttr;
    class function CreateRemote(const MachineName: string): HTMLAttr;
  end;

{ HTML Attributes collection }

  CoHTMLAttrsCls = class
    class function Create: HTMLAttrs;
    class function CreateRemote(const MachineName: string): HTMLAttrs;
  end;

{ NetManage HTML Client Control }

  THTMLError = procedure(Sender: TObject; Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool) of object;
  THTMLDocInput = procedure(Sender: TObject; const DocInput: DocInput) of object;
  THTMLDocOutput = procedure(Sender: TObject; const DocOutput: DocOutput) of object;
  THTMLDoRequestDoc = procedure(Sender: TObject; const URL: WideString; const Element: HTMLElement; const DocInput: DocInput; var EnableDefault: WordBool) of object;
  THTMLDoRequestEmbedded = procedure(Sender: TObject; const URL: WideString; const Element: HTMLElement; const DocInput: DocInput; var EnableDefault: WordBool) of object;
  THTMLDoRequestSubmit = procedure(Sender: TObject; const URL: WideString; const Form: HTMLForm; const DocOutput: DocOutput; var EnableDefault: WordBool) of object;
  THTMLDoNewElement = procedure(Sender: TObject; const ElemType: WideString; EndTag: WordBool; const Attrs: HTMLAttrs; const text: WideString; var EnableDefault: WordBool) of object;

  THTML = class(TOleControl)
  private
    FOnError: THTMLError;
    FOnDocInput: THTMLDocInput;
    FOnDocOutput: THTMLDocOutput;
    FOnParseComplete: TNotifyEvent;
    FOnLayoutComplete: TNotifyEvent;
    FOnTimeout: TNotifyEvent;
    FOnBeginRetrieval: TNotifyEvent;
    FOnUpdateRetrieval: TNotifyEvent;
    FOnEndRetrieval: TNotifyEvent;
    FOnDoRequestDoc: THTMLDoRequestDoc;
    FOnDoRequestEmbedded: THTMLDoRequestEmbedded;
    FOnDoRequestSubmit: THTMLDoRequestSubmit;
    FOnDoNewElement: THTMLDoNewElement;
    FIntf: IHTML;
    function Get_DocInput: DocInput;
    function Get_DocOutput: DocOutput;
    function Get_Forms: HTMLForms;
    function Get_IsPrintingDone(PageNumber: Integer): WordBool;
    function Get_Errors: icErrors;
    function Get_hWnd: OLE_HANDLE;
  protected
    procedure InitControlData; override;
    procedure InitControlInterface(const Obj: IUnknown); override;
  public
    procedure AboutBox;
    procedure RequestDoc(const URL: WideString);
    procedure RequestAllEmbedded;
    procedure Cancel(Message: OleVariant);
    procedure BeginPrinting(hDC: Integer; x, y, Width, Height, DefaultHeaders, DefaultTitle: OleVariant);
    procedure PrintPage(hDC, PageNumber: Integer);
    procedure EndPrinting;
    procedure AutoPrint(hDC: Integer);
    function GetPlainText(selected, fancy: WordBool): WideString;
    function HasSelection: WordBool;
    procedure SelectAll;
    property ControlInterface: IHTML read FIntf;
    property BlockResult: Smallint index 519 read GetSmallintProp;
    property DocInput: DocInput read Get_DocInput;
    property DocOutput: DocOutput read Get_DocOutput;
    property URL: WideString index 1001 read GetWideStringProp;
    property RequestURL: WideString index 2 read GetWideStringProp;
    property BaseURL: WideString index 3 read GetWideStringProp;
    property Forms: HTMLForms read Get_Forms;
    property TotalWidth: Integer index 5 read GetIntegerProp;
    property TotalHeight: Integer index 6 read GetIntegerProp;
    property RetrieveBytesTotal: Integer index 7 read GetIntegerProp;
    property RetrieveBytesDone: Integer index 8 read GetIntegerProp;
    property ParseDone: WordBool index 9 read GetWordBoolProp;
    property LayoutDone: WordBool index 10 read GetWordBoolProp;
    property SourceText: WideString index 14 read GetWideStringProp;
    property DocBackColor: TColor index 23 read GetTColorProp;
    property DocForeColor: TColor index 24 read GetTColorProp;
    property DocLinkColor: TColor index 25 read GetTColorProp;
    property DocVisitedColor: TColor index 26 read GetTColorProp;
    property IsPrintingDone[PageNumber: Integer]: WordBool read Get_IsPrintingDone;
    property Errors: icErrors read Get_Errors;
    property hWnd: OLE_HANDLE read Get_hWnd;
  published
    property ParentColor;
    property ParentFont;
    property TabStop;
    property Align;
    property DragCursor;
    property DragMode;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property Visible;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnStartDrag;
    property OnMouseUp;
    property OnMouseMove;
    property OnMouseDown;
    property OnKeyUp;
    property OnKeyPress;
    property OnKeyDown;
    property OnDblClick;
    property OnClick;
    property Blocking: WordBool index 515 read GetWordBoolProp write SetWordBoolProp stored False;
    property SleepTime: Integer index 516 read GetIntegerProp write SetIntegerProp stored False;
    property DeferRetrieval: WordBool index 11 read GetWordBoolProp write SetWordBoolProp stored False;
    property ViewSource: WordBool index 12 read GetWordBoolProp write SetWordBoolProp stored False;
    property RetainSource: WordBool index 13 read GetWordBoolProp write SetWordBoolProp stored False;
    property ElemNotification: WordBool index 15 read GetWordBoolProp write SetWordBoolProp stored False;
    property Timeout: Integer index 507 read GetIntegerProp write SetIntegerProp stored False;
    property Redraw: WordBool index 17 read GetWordBoolProp write SetWordBoolProp stored False;
    property UnderlineLinks: WordBool index 18 read GetWordBoolProp write SetWordBoolProp stored False;
    property UseDocColors: WordBool index 19 read GetWordBoolProp write SetWordBoolProp stored False;
    property BackImage: WideString index 20 read GetWideStringProp write SetWideStringProp stored False;
    property BackColor: TColor index -501 read GetTColorProp write SetTColorProp stored False;
    property ForeColor: TColor index -513 read GetTColorProp write SetTColorProp stored False;
    property LinkColor: TColor index 21 read GetTColorProp write SetTColorProp stored False;
    property VisitedColor: TColor index 22 read GetTColorProp write SetTColorProp stored False;
    property Font: TFont index -512 read GetTFontProp write SetTFontProp stored False;
    property FixedFont: TFont index 27 read GetTFontProp write SetTFontProp stored False;
    property Heading1Font: TFont index 28 read GetTFontProp write SetTFontProp stored False;
    property Heading2Font: TFont index 29 read GetTFontProp write SetTFontProp stored False;
    property Heading3Font: TFont index 30 read GetTFontProp write SetTFontProp stored False;
    property Heading4Font: TFont index 31 read GetTFontProp write SetTFontProp stored False;
    property Heading5Font: TFont index 32 read GetTFontProp write SetTFontProp stored False;
    property Heading6Font: TFont index 33 read GetTFontProp write SetTFontProp stored False;
    property OnError: THTMLError read FOnError write FOnError;
    property OnDocInput: THTMLDocInput read FOnDocInput write FOnDocInput;
    property OnDocOutput: THTMLDocOutput read FOnDocOutput write FOnDocOutput;
    property OnParseComplete: TNotifyEvent read FOnParseComplete write FOnParseComplete;
    property OnLayoutComplete: TNotifyEvent read FOnLayoutComplete write FOnLayoutComplete;
    property OnTimeout: TNotifyEvent read FOnTimeout write FOnTimeout;
    property OnBeginRetrieval: TNotifyEvent read FOnBeginRetrieval write FOnBeginRetrieval;
    property OnUpdateRetrieval: TNotifyEvent read FOnUpdateRetrieval write FOnUpdateRetrieval;
    property OnEndRetrieval: TNotifyEvent read FOnEndRetrieval write FOnEndRetrieval;
    property OnDoRequestDoc: THTMLDoRequestDoc read FOnDoRequestDoc write FOnDoRequestDoc;
    property OnDoRequestEmbedded: THTMLDoRequestEmbedded read FOnDoRequestEmbedded write FOnDoRequestEmbedded;
    property OnDoRequestSubmit: THTMLDoRequestSubmit read FOnDoRequestSubmit write FOnDoRequestSubmit;
    property OnDoNewElement: THTMLDoNewElement read FOnDoNewElement write FOnDoNewElement;
  end;

const
  LIBID_POPCTLib: TGUID = '{B7FC356A-8CE7-11CF-9754-00AA00C00908}';

{ PopProtocolStateConstants }

  popBase = 0;
  popAuthorization = 1;
  popTransaction = 2;
  popUpdate = 3;

{ Component class GUIDs }
  Class_POP: TGUID = '{B7FC356E-8CE7-11CF-9754-00AA00C00908}';

type

{ Forward declarations }
{ Forward declarations: Interfaces }
  Ipopct = interface;
  IpopctDisp = dispinterface;
  DpopctEvents = dispinterface;

{ Forward declarations: CoClasses }
  POP = Ipopct;

{ Forward declarations: Enums }
  PopProtocolStateConstants = TOleEnum;

{ Properties/Methods for NetManage POP Client Control }

  Ipopct = interface(INMOleAuthClientControl)
    ['{B7FC356C-8CE7-11CF-9754-00AA00C00908}']
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_DocOutput: DocOutput; safecall;
    function Get_TopSupported: WordBool; safecall;
    function Get_TopLines: Integer; safecall;
    procedure Set_TopLines(Value: Integer); safecall;
    function Get_MessageCount: Smallint; safecall;
    procedure GetDoc(URL, Headers, OutputFile: OleVariant); safecall;
    procedure MessageSize(MessageNumber: Smallint); safecall;
    procedure RetrieveMessage(MessageNumber: Smallint); safecall;
    procedure Delete(MessageNumber: Smallint); safecall;
    procedure Reset; safecall;
    procedure Last; safecall;
    procedure Noop; safecall;
    procedure TopMessage(MessageNumber: Smallint); safecall;
    procedure Quit; safecall;
    procedure RefreshMessageCount; safecall;
    property URL: WideString read Get_URL write Set_URL;
    property DocOutput: DocOutput read Get_DocOutput;
    property TopSupported: WordBool read Get_TopSupported;
    property TopLines: Integer read Get_TopLines write Set_TopLines;
    property MessageCount: Smallint read Get_MessageCount;
  end;

{ DispInterface declaration for Dual Interface Ipopct }

  IpopctDisp = dispinterface
    ['{B7FC356C-8CE7-11CF-9754-00AA00C00908}']
    property URL: WideString dispid 1001;
    property DocOutput: DocOutput readonly dispid 1003;
    property TopSupported: WordBool readonly dispid 2452;
    property TopLines: Integer dispid 2453;
    property MessageCount: Smallint readonly dispid 2454;
    procedure GetDoc(URL, Headers, OutputFile: OleVariant); dispid 1004;
    procedure MessageSize(MessageNumber: Smallint); dispid 2456;
    procedure RetrieveMessage(MessageNumber: Smallint); dispid 2457;
    procedure Delete(MessageNumber: Smallint); dispid 2458;
    procedure Reset; dispid 2459;
    procedure Last; dispid 2460;
    procedure Noop; dispid 2455;
    procedure TopMessage(MessageNumber: Smallint); dispid 2461;
    procedure Quit; dispid 2462;
    procedure RefreshMessageCount; dispid 2500;
  end;

{ Event interface for NetManage POP Client Control }

  DpopctEvents = dispinterface
    ['{B7FC356D-8CE7-11CF-9754-00AA00C00908}']
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool); dispid -608;
    procedure Timeout(event: Smallint; var Continue: WordBool); dispid 551;
    procedure Cancel; dispid 552;
    procedure StateChanged(State: Smallint); dispid 553;
    procedure ProtocolStateChanged(ProtocolState: Smallint); dispid 554;
    procedure Busy(isBusy: WordBool); dispid 555;
    procedure Log; dispid 556;
    procedure DocOutput(const DocOutput: DocOutput); dispid 1017;
    procedure MessageSize(msgSize: Integer); dispid 2465;
    procedure Delete; dispid 2466;
    procedure Reset; dispid 2467;
    procedure Last(Number: Integer); dispid 2468;
    procedure Noop; dispid 2470;
    procedure RefreshMessageCount(Number: Integer); dispid 2471;
  end;

{ NetManage POP Client Control }

  TPOPError = procedure(Sender: TObject; Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool) of object;
  TPOPTimeout = procedure(Sender: TObject; event: Smallint; var Continue: WordBool) of object;
  TPOPStateChanged = procedure(Sender: TObject; State: Smallint) of object;
  TPOPProtocolStateChanged = procedure(Sender: TObject; ProtocolState: Smallint) of object;
  TPOPBusy = procedure(Sender: TObject; isBusy: WordBool) of object;
  TPOPDocOutput = procedure(Sender: TObject; const DocOutput: DocOutput) of object;
  TPOPMessageSize = procedure(Sender: TObject; msgSize: Integer) of object;
  TPOPLast = procedure(Sender: TObject; Number: Integer) of object;
  TPOPRefreshMessageCount = procedure(Sender: TObject; Number: Integer) of object;

  TPOP = class(TOleControl)
  private
    FOnError: TPOPError;
    FOnTimeout: TPOPTimeout;
    FOnCancel: TNotifyEvent;
    FOnStateChanged: TPOPStateChanged;
    FOnProtocolStateChanged: TPOPProtocolStateChanged;
    FOnBusy: TPOPBusy;
    FOnLog: TNotifyEvent;
    FOnDocOutput: TPOPDocOutput;
    FOnMessageSize: TPOPMessageSize;
    FOnDelete: TNotifyEvent;
    FOnReset: TNotifyEvent;
    FOnLast: TPOPLast;
    FOnNoop: TNotifyEvent;
    FOnRefreshMessageCount: TPOPRefreshMessageCount;
    FIntf: Ipopct;
    function Get_Timeout(event: Smallint): Integer;
    procedure Set_Timeout(event: Smallint; Value: Integer);
    procedure Set_EnableTimer(event: Smallint; Value: WordBool);
    function Get_Errors: icErrors;
    function Get_DocOutput: DocOutput;
  protected
    procedure InitControlData; override;
    procedure InitControlInterface(const Obj: IUnknown); override;
  public
    procedure AboutBox;
    procedure Cancel;
    procedure Connect(RemoteHost, RemotePort: OleVariant);
    procedure Authenticate(UserId, Password: OleVariant);
    procedure GetDoc(URL, Headers, OutputFile: OleVariant);
    procedure MessageSize(MessageNumber: Smallint);
    procedure RetrieveMessage(MessageNumber: Smallint);
    procedure Delete(MessageNumber: Smallint);
    procedure Reset;
    procedure Last;
    procedure Noop;
    procedure TopMessage(MessageNumber: Smallint);
    procedure Quit;
    procedure RefreshMessageCount;
    property ControlInterface: Ipopct read FIntf;
    property BlockResult: Smallint index 519 read GetSmallintProp;
    property State: Smallint index 503 read GetSmallintProp;
    property ProtocolState: Smallint index 504 read GetSmallintProp;
    property ReplyString: WideString index 505 read GetWideStringProp;
    property ReplyCode: Integer index 506 read GetIntegerProp;
    property Timeout[event: Smallint]: Integer read Get_Timeout write Set_Timeout;
    property EnableTimer[event: Smallint]: WordBool write Set_EnableTimer;
    property Errors: icErrors read Get_Errors;
    property Busy: WordBool index 509 read GetWordBoolProp;
    property StateString: WideString index 511 read GetWideStringProp;
    property ProtocolStateString: WideString index 512 read GetWideStringProp;
    property SocketHandle: Integer index 518 read GetIntegerProp;
    property DocOutput: DocOutput read Get_DocOutput;
    property TopSupported: WordBool index 2452 read GetWordBoolProp;
    property MessageCount: Smallint index 2454 read GetSmallintProp;
  published
    property Blocking: WordBool index 515 read GetWordBoolProp write SetWordBoolProp stored False;
    property SleepTime: Integer index 516 read GetIntegerProp write SetIntegerProp stored False;
    property RemoteHost: WideString index 0 read GetWideStringProp write SetWideStringProp stored False;
    property RemotePort: Integer index 502 read GetIntegerProp write SetIntegerProp stored False;
    property NotificationMode: Smallint index 510 read GetSmallintProp write SetSmallintProp stored False;
    property Logging: WordBool index 514 read GetWordBoolProp write SetWordBoolProp stored False;
    property LocalPort: Integer index 517 read GetIntegerProp write SetIntegerProp stored False;
    property UserId: WideString index 601 read GetWideStringProp write SetWideStringProp stored False;
    property Password: WideString index 602 read GetWideStringProp write SetWideStringProp stored False;
    property URL: WideString index 1001 read GetWideStringProp write SetWideStringProp stored False;
    property TopLines: Integer index 2453 read GetIntegerProp write SetIntegerProp stored False;
    property OnError: TPOPError read FOnError write FOnError;
    property OnTimeout: TPOPTimeout read FOnTimeout write FOnTimeout;
    property OnCancel: TNotifyEvent read FOnCancel write FOnCancel;
    property OnStateChanged: TPOPStateChanged read FOnStateChanged write FOnStateChanged;
    property OnProtocolStateChanged: TPOPProtocolStateChanged read FOnProtocolStateChanged write FOnProtocolStateChanged;
    property OnBusy: TPOPBusy read FOnBusy write FOnBusy;
    property OnLog: TNotifyEvent read FOnLog write FOnLog;
    property OnDocOutput: TPOPDocOutput read FOnDocOutput write FOnDocOutput;
    property OnMessageSize: TPOPMessageSize read FOnMessageSize write FOnMessageSize;
    property OnDelete: TNotifyEvent read FOnDelete write FOnDelete;
    property OnReset: TNotifyEvent read FOnReset write FOnReset;
    property OnLast: TPOPLast read FOnLast write FOnLast;
    property OnNoop: TNotifyEvent read FOnNoop write FOnNoop;
    property OnRefreshMessageCount: TPOPRefreshMessageCount read FOnRefreshMessageCount write FOnRefreshMessageCount;
  end;

const
  LIBID_NNTPCTLib: TGUID = '{B7FC3564-8CE7-11CF-9754-00AA00C00908}';

{ NNTPProtocolStateConstants }

  nntpBase = 0;
  nntpTransaction = 1;

{ Component class GUIDs }
  Class_NNTP: TGUID = '{B7FC3568-8CE7-11CF-9754-00AA00C00908}';

type

{ Forward declarations }
{ Forward declarations: Interfaces }
  Inntpct = interface;
  InntpctDisp = dispinterface;
  DnntpctEvents = dispinterface;

{ Forward declarations: CoClasses }
  NNTP = Inntpct;

{ Forward declarations: Enums }
  NNTPProtocolStateConstants = TOleEnum;

{ Properties/Methods for NetManage NNTP Client Control }

  Inntpct = interface(INMOleClientControl)
    ['{B7FC3566-8CE7-11CF-9754-00AA00C00908}']
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_DocInput: DocInput; safecall;
    function Get_DocOutput: DocOutput; safecall;
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant); safecall;
    procedure GetDoc(URL, Headers, OutputFile: OleVariant); safecall;
    function Get_ArticleNumbersSupported: WordBool; safecall;
    function Get_OverviewSupported: WordBool; safecall;
    function Get_PostingAllowed: WordBool; safecall;
    function Get_LastUpdate: TDateTime; safecall;
    procedure Set_LastUpdate(Value: TDateTime); safecall;
    procedure GetAdministrationFile(LastUpdate: OleVariant); safecall;
    procedure SelectGroup(const groupName: WideString); safecall;
    procedure SetNextArticle; safecall;
    procedure SetLastArticle; safecall;
    procedure GetArticleNumbers(groupName: OleVariant); safecall;
    procedure GetArticleHeaders(const header: WideString; firstArticle, lastArticle: OleVariant); safecall;
    procedure GetArticleByArticleNumber(articleNumber: OleVariant); safecall;
    procedure GetArticleByMessageID(const messageID: WideString); safecall;
    procedure GetHeaderByArticleNumber(articleNumber: OleVariant); safecall;
    procedure GetHeaderByMessageID(const messageID: WideString); safecall;
    procedure GetBodyByArticleNumber(articleNumber: OleVariant); safecall;
    procedure GetBodyByMessageID(const messageID: WideString); safecall;
    procedure GetStatByArticleNumber(articleNumber: OleVariant); safecall;
    procedure GetOverviewFormat; safecall;
    procedure GetOverview(firstArticle, lastArticle: OleVariant); safecall;
    procedure ListGroups; safecall;
    procedure ListGroupDescriptions; safecall;
    procedure ListNewGroups(LastUpdate: OleVariant); safecall;
    procedure Quit; safecall;
    property URL: WideString read Get_URL write Set_URL;
    property DocInput: DocInput read Get_DocInput;
    property DocOutput: DocOutput read Get_DocOutput;
    property ArticleNumbersSupported: WordBool read Get_ArticleNumbersSupported;
    property OverviewSupported: WordBool read Get_OverviewSupported;
    property PostingAllowed: WordBool read Get_PostingAllowed;
    property LastUpdate: TDateTime read Get_LastUpdate write Set_LastUpdate;
  end;

{ DispInterface declaration for Dual Interface Inntpct }

  InntpctDisp = dispinterface
    ['{B7FC3566-8CE7-11CF-9754-00AA00C00908}']
    property URL: WideString dispid 1001;
    property DocInput: DocInput readonly dispid 1002;
    property DocOutput: DocOutput readonly dispid 1003;
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant); dispid 1005;
    procedure GetDoc(URL, Headers, OutputFile: OleVariant); dispid 1004;
    property ArticleNumbersSupported: WordBool readonly dispid 1;
    property OverviewSupported: WordBool readonly dispid 2;
    property PostingAllowed: WordBool readonly dispid 3;
    property LastUpdate: TDateTime dispid 4;
    procedure GetAdministrationFile(LastUpdate: OleVariant); dispid 5;
    procedure SelectGroup(const groupName: WideString); dispid 6;
    procedure SetNextArticle; dispid 7;
    procedure SetLastArticle; dispid 8;
    procedure GetArticleNumbers(groupName: OleVariant); dispid 9;
    procedure GetArticleHeaders(const header: WideString; firstArticle, lastArticle: OleVariant); dispid 10;
    procedure GetArticleByArticleNumber(articleNumber: OleVariant); dispid 11;
    procedure GetArticleByMessageID(const messageID: WideString); dispid 12;
    procedure GetHeaderByArticleNumber(articleNumber: OleVariant); dispid 13;
    procedure GetHeaderByMessageID(const messageID: WideString); dispid 14;
    procedure GetBodyByArticleNumber(articleNumber: OleVariant); dispid 15;
    procedure GetBodyByMessageID(const messageID: WideString); dispid 16;
    procedure GetStatByArticleNumber(articleNumber: OleVariant); dispid 17;
    procedure GetOverviewFormat; dispid 18;
    procedure GetOverview(firstArticle, lastArticle: OleVariant); dispid 19;
    procedure ListGroups; dispid 20;
    procedure ListGroupDescriptions; dispid 21;
    procedure ListNewGroups(LastUpdate: OleVariant); dispid 22;
    procedure Quit; dispid 24;
  end;

{ Event interface for NetManage NNTP Client Control }

  DnntpctEvents = dispinterface
    ['{B7FC3567-8CE7-11CF-9754-00AA00C00908}']
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool); dispid -608;
    procedure Timeout(event: Smallint; var Continue: WordBool); dispid 551;
    procedure Cancel; dispid 552;
    procedure StateChanged(State: Smallint); dispid 553;
    procedure ProtocolStateChanged(ProtocolState: Smallint); dispid 554;
    procedure Busy(isBusy: WordBool); dispid 555;
    procedure Log; dispid 556;
    procedure DocInput(const DocInput: DocInput); dispid 1016;
    procedure DocOutput(const DocOutput: DocOutput); dispid 1017;
    procedure AuthenticateRequest(var UserId, Password: WideString); dispid 0;
    procedure AuthenticateResponse(Authenticated: WordBool); dispid 1;
    procedure Banner(const Banner: WideString); dispid 2;
    procedure SelectGroup(const groupName: WideString; firstMessage, lastMessage, msgCount: Integer); dispid 3;
    procedure NextArticle(articleNumber: Integer; const messageID: WideString); dispid 4;
    procedure lastArticle(articleNumber: Integer; const messageID: WideString); dispid 5;
    procedure ArticleStatus(articleNumber: Integer; const messageID: WideString); dispid 6;
  end;

{ NetManage NNTP Client Control }

  TNNTPError = procedure(Sender: TObject; Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool) of object;
  TNNTPTimeout = procedure(Sender: TObject; event: Smallint; var Continue: WordBool) of object;
  TNNTPStateChanged = procedure(Sender: TObject; State: Smallint) of object;
  TNNTPProtocolStateChanged = procedure(Sender: TObject; ProtocolState: Smallint) of object;
  TNNTPBusy = procedure(Sender: TObject; isBusy: WordBool) of object;
  TNNTPDocInput = procedure(Sender: TObject; const DocInput: DocInput) of object;
  TNNTPDocOutput = procedure(Sender: TObject; const DocOutput: DocOutput) of object;
  TNNTPAuthenticateRequest = procedure(Sender: TObject; var UserId, Password: WideString) of object;
  TNNTPAuthenticateResponse = procedure(Sender: TObject; Authenticated: WordBool) of object;
  TNNTPBanner = procedure(Sender: TObject; const Banner: WideString) of object;
  TNNTPSelectGroup = procedure(Sender: TObject; const groupName: WideString; firstMessage, lastMessage, msgCount: Integer) of object;
  TNNTPNextArticle = procedure(Sender: TObject; articleNumber: Integer; const messageID: WideString) of object;
  TNNTPlastArticle = procedure(Sender: TObject; articleNumber: Integer; const messageID: WideString) of object;
  TNNTPArticleStatus = procedure(Sender: TObject; articleNumber: Integer; const messageID: WideString) of object;

  TNNTP = class(TOleControl)
  private
    FOnError: TNNTPError;
    FOnTimeout: TNNTPTimeout;
    FOnCancel: TNotifyEvent;
    FOnStateChanged: TNNTPStateChanged;
    FOnProtocolStateChanged: TNNTPProtocolStateChanged;
    FOnBusy: TNNTPBusy;
    FOnLog: TNotifyEvent;
    FOnDocInput: TNNTPDocInput;
    FOnDocOutput: TNNTPDocOutput;
    FOnAuthenticateRequest: TNNTPAuthenticateRequest;
    FOnAuthenticateResponse: TNNTPAuthenticateResponse;
    FOnBanner: TNNTPBanner;
    FOnSelectGroup: TNNTPSelectGroup;
    FOnNextArticle: TNNTPNextArticle;
    FOnlastArticle: TNNTPlastArticle;
    FOnArticleStatus: TNNTPArticleStatus;
    FIntf: Inntpct;
    function Get_Timeout(event: Smallint): Integer;
    procedure Set_Timeout(event: Smallint; Value: Integer);
    procedure Set_EnableTimer(event: Smallint; Value: WordBool);
    function Get_Errors: icErrors;
    function Get_DocInput: DocInput;
    function Get_DocOutput: DocOutput;
  protected
    procedure InitControlData; override;
    procedure InitControlInterface(const Obj: IUnknown); override;
  public
    procedure AboutBox;
    procedure Cancel;
    procedure Connect(RemoteHost, RemotePort: OleVariant);
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant);
    procedure GetDoc(URL, Headers, OutputFile: OleVariant);
    procedure GetAdministrationFile(LastUpdate: OleVariant);
    procedure SelectGroup(const groupName: WideString);
    procedure SetNextArticle;
    procedure SetLastArticle;
    procedure GetArticleNumbers(groupName: OleVariant);
    procedure GetArticleHeaders(const header: WideString; firstArticle, lastArticle: OleVariant);
    procedure GetArticleByArticleNumber(articleNumber: OleVariant);
    procedure GetArticleByMessageID(const messageID: WideString);
    procedure GetHeaderByArticleNumber(articleNumber: OleVariant);
    procedure GetHeaderByMessageID(const messageID: WideString);
    procedure GetBodyByArticleNumber(articleNumber: OleVariant);
    procedure GetBodyByMessageID(const messageID: WideString);
    procedure GetStatByArticleNumber(articleNumber: OleVariant);
    procedure GetOverviewFormat;
    procedure GetOverview(firstArticle, lastArticle: OleVariant);
    procedure ListGroups;
    procedure ListGroupDescriptions;
    procedure ListNewGroups(LastUpdate: OleVariant);
    procedure Quit;
    property ControlInterface: Inntpct read FIntf;
    property BlockResult: Smallint index 519 read GetSmallintProp;
    property State: Smallint index 503 read GetSmallintProp;
    property ProtocolState: Smallint index 504 read GetSmallintProp;
    property ReplyString: WideString index 505 read GetWideStringProp;
    property ReplyCode: Integer index 506 read GetIntegerProp;
    property Timeout[event: Smallint]: Integer read Get_Timeout write Set_Timeout;
    property EnableTimer[event: Smallint]: WordBool write Set_EnableTimer;
    property Errors: icErrors read Get_Errors;
    property Busy: WordBool index 509 read GetWordBoolProp;
    property StateString: WideString index 511 read GetWideStringProp;
    property ProtocolStateString: WideString index 512 read GetWideStringProp;
    property SocketHandle: Integer index 518 read GetIntegerProp;
    property DocInput: DocInput read Get_DocInput;
    property DocOutput: DocOutput read Get_DocOutput;
    property ArticleNumbersSupported: WordBool index 1 read GetWordBoolProp;
    property OverviewSupported: WordBool index 2 read GetWordBoolProp;
    property PostingAllowed: WordBool index 3 read GetWordBoolProp;
  published
    property Blocking: WordBool index 515 read GetWordBoolProp write SetWordBoolProp stored False;
    property SleepTime: Integer index 516 read GetIntegerProp write SetIntegerProp stored False;
    property RemoteHost: WideString index 0 read GetWideStringProp write SetWideStringProp stored False;
    property RemotePort: Integer index 502 read GetIntegerProp write SetIntegerProp stored False;
    property NotificationMode: Smallint index 510 read GetSmallintProp write SetSmallintProp stored False;
    property Logging: WordBool index 514 read GetWordBoolProp write SetWordBoolProp stored False;
    property LocalPort: Integer index 517 read GetIntegerProp write SetIntegerProp stored False;
    property URL: WideString index 1001 read GetWideStringProp write SetWideStringProp stored False;
    property LastUpdate: TDateTime index 4 read GetTDateTimeProp write SetTDateTimeProp stored False;
    property OnError: TNNTPError read FOnError write FOnError;
    property OnTimeout: TNNTPTimeout read FOnTimeout write FOnTimeout;
    property OnCancel: TNotifyEvent read FOnCancel write FOnCancel;
    property OnStateChanged: TNNTPStateChanged read FOnStateChanged write FOnStateChanged;
    property OnProtocolStateChanged: TNNTPProtocolStateChanged read FOnProtocolStateChanged write FOnProtocolStateChanged;
    property OnBusy: TNNTPBusy read FOnBusy write FOnBusy;
    property OnLog: TNotifyEvent read FOnLog write FOnLog;
    property OnDocInput: TNNTPDocInput read FOnDocInput write FOnDocInput;
    property OnDocOutput: TNNTPDocOutput read FOnDocOutput write FOnDocOutput;
    property OnAuthenticateRequest: TNNTPAuthenticateRequest read FOnAuthenticateRequest write FOnAuthenticateRequest;
    property OnAuthenticateResponse: TNNTPAuthenticateResponse read FOnAuthenticateResponse write FOnAuthenticateResponse;
    property OnBanner: TNNTPBanner read FOnBanner write FOnBanner;
    property OnSelectGroup: TNNTPSelectGroup read FOnSelectGroup write FOnSelectGroup;
    property OnNextArticle: TNNTPNextArticle read FOnNextArticle write FOnNextArticle;
    property OnlastArticle: TNNTPlastArticle read FOnlastArticle write FOnlastArticle;
    property OnArticleStatus: TNNTPArticleStatus read FOnArticleStatus write FOnArticleStatus;
  end;

const
  LIBID_SMTPCTLib: TGUID = '{B7FC3570-8CE7-11CF-9754-00AA00C00908}';

{ SMTPProtocolStateConstants }

  smtpBase = 0;
  smtpTransaction = 1;

const

{ Component class GUIDs }
  Class_SMTP: TGUID = '{B7FC3573-8CE7-11CF-9754-00AA00C00908}';

type

{ Forward declarations }
{ Forward declarations: Interfaces }
  Ismtpct = interface;
  IsmtpctDisp = dispinterface;
  DsmtpctEvents = dispinterface;

{ Forward declarations: CoClasses }
  SMTP = Ismtpct;

{ Forward declarations: Enums }
  SMTPProtocolStateConstants = TOleEnum;

{ Properties/Methods for NetManage SMTP Client Control }

  Ismtpct = interface(INMOleClientControl)
    ['{B7FC3571-8CE7-11CF-9754-00AA00C00908}']
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_DocInput: DocInput; safecall;
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant); safecall;
    procedure Reset; safecall;
    procedure Verify(const name: WideString); safecall;
    procedure Expand(const name: WideString); safecall;
    procedure Help(helpTopic: OleVariant); safecall;
    procedure Noop; safecall;
    procedure Quit; safecall;
    property URL: WideString read Get_URL write Set_URL;
    property DocInput: DocInput read Get_DocInput;
  end;

{ DispInterface declaration for Dual Interface Ismtpct }

  IsmtpctDisp = dispinterface
    ['{B7FC3571-8CE7-11CF-9754-00AA00C00908}']
    property URL: WideString dispid 1001;
    property DocInput: DocInput readonly dispid 1002;
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant); dispid 1005;
    procedure Reset; dispid 200;
    procedure Verify(const name: WideString); dispid 201;
    procedure Expand(const name: WideString); dispid 202;
    procedure Help(helpTopic: OleVariant); dispid 203;
    procedure Noop; dispid 204;
    procedure Quit; dispid 205;
  end;

{ Event interface for NetManage SMTP Client Control }

  DsmtpctEvents = dispinterface
    ['{B7FC3572-8CE7-11CF-9754-00AA00C00908}']
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool); dispid -608;
    procedure Timeout(event: Smallint; var Continue: WordBool); dispid 551;
    procedure Cancel; dispid 552;
    procedure StateChanged(State: Smallint); dispid 553;
    procedure ProtocolStateChanged(ProtocolState: Smallint); dispid 554;
    procedure Busy(isBusy: WordBool); dispid 555;
    procedure Log; dispid 556;
    procedure DocInput(const DocInput: DocInput); dispid 1016;
    procedure Reset; dispid 300;
    procedure Verify; dispid 301;
    procedure Expand; dispid 302;
    procedure Help; dispid 303;
    procedure Noop; dispid 304;
  end;

{ NetManage SMTP Client Control }

  TSMTPError = procedure(Sender: TObject; Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool) of object;
  TSMTPTimeout = procedure(Sender: TObject; event: Smallint; var Continue: WordBool) of object;
  TSMTPStateChanged = procedure(Sender: TObject; State: Smallint) of object;
  TSMTPProtocolStateChanged = procedure(Sender: TObject; ProtocolState: Smallint) of object;
  TSMTPBusy = procedure(Sender: TObject; isBusy: WordBool) of object;
  TSMTPDocInput = procedure(Sender: TObject; const DocInput: DocInput) of object;

  TSMTP = class(TOleControl)
  private
    FOnError: TSMTPError;
    FOnTimeout: TSMTPTimeout;
    FOnCancel: TNotifyEvent;
    FOnStateChanged: TSMTPStateChanged;
    FOnProtocolStateChanged: TSMTPProtocolStateChanged;
    FOnBusy: TSMTPBusy;
    FOnLog: TNotifyEvent;
    FOnDocInput: TSMTPDocInput;
    FOnReset: TNotifyEvent;
    FOnVerify: TNotifyEvent;
    FOnExpand: TNotifyEvent;
    FOnHelp: TNotifyEvent;
    FOnNoop: TNotifyEvent;
    FIntf: Ismtpct;
    function Get_Timeout(event: Smallint): Integer;
    procedure Set_Timeout(event: Smallint; Value: Integer);
    procedure Set_EnableTimer(event: Smallint; Value: WordBool);
    function Get_Errors: icErrors;
    function Get_DocInput: DocInput;
  protected
    procedure InitControlData; override;
    procedure InitControlInterface(const Obj: IUnknown); override;
  public
    procedure AboutBox;
    procedure Cancel;
    procedure Connect(RemoteHost, RemotePort: OleVariant);
    procedure SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant);
    procedure Reset;
    procedure Verify(const name: WideString);
    procedure Expand(const name: WideString);
    procedure Help(helpTopic: OleVariant);
    procedure Noop;
    procedure Quit;
    property ControlInterface: Ismtpct read FIntf;
    property BlockResult: Smallint index 519 read GetSmallintProp;
    property State: Smallint index 503 read GetSmallintProp;
    property ProtocolState: Smallint index 504 read GetSmallintProp;
    property ReplyString: WideString index 505 read GetWideStringProp;
    property ReplyCode: Integer index 506 read GetIntegerProp;
    property Timeout[event: Smallint]: Integer read Get_Timeout write Set_Timeout;
    property EnableTimer[event: Smallint]: WordBool write Set_EnableTimer;
    property Errors: icErrors read Get_Errors;
    property Busy: WordBool index 509 read GetWordBoolProp;
    property StateString: WideString index 511 read GetWideStringProp;
    property ProtocolStateString: WideString index 512 read GetWideStringProp;
    property SocketHandle: Integer index 518 read GetIntegerProp;
    property DocInput: DocInput read Get_DocInput;
  published
    property Blocking: WordBool index 515 read GetWordBoolProp write SetWordBoolProp stored False;
    property SleepTime: Integer index 516 read GetIntegerProp write SetIntegerProp stored False;
    property RemoteHost: WideString index 0 read GetWideStringProp write SetWideStringProp stored False;
    property RemotePort: Integer index 502 read GetIntegerProp write SetIntegerProp stored False;
    property NotificationMode: Smallint index 510 read GetSmallintProp write SetSmallintProp stored False;
    property Logging: WordBool index 514 read GetWordBoolProp write SetWordBoolProp stored False;
    property LocalPort: Integer index 517 read GetIntegerProp write SetIntegerProp stored False;
    property URL: WideString index 1001 read GetWideStringProp write SetWideStringProp stored False;
    property OnError: TSMTPError read FOnError write FOnError;
    property OnTimeout: TSMTPTimeout read FOnTimeout write FOnTimeout;
    property OnCancel: TNotifyEvent read FOnCancel write FOnCancel;
    property OnStateChanged: TSMTPStateChanged read FOnStateChanged write FOnStateChanged;
    property OnProtocolStateChanged: TSMTPProtocolStateChanged read FOnProtocolStateChanged write FOnProtocolStateChanged;
    property OnBusy: TSMTPBusy read FOnBusy write FOnBusy;
    property OnLog: TNotifyEvent read FOnLog write FOnLog;
    property OnDocInput: TSMTPDocInput read FOnDocInput write FOnDocInput;
    property OnReset: TNotifyEvent read FOnReset write FOnReset;
    property OnVerify: TNotifyEvent read FOnVerify write FOnVerify;
    property OnExpand: TNotifyEvent read FOnExpand write FOnExpand;
    property OnHelp: TNotifyEvent read FOnHelp write FOnHelp;
    property OnNoop: TNotifyEvent read FOnNoop write FOnNoop;
  end;

const
  LIBID_WINSOCKLib: TGUID = '{B7FC3580-8CE7-11CF-9754-00AA00C00908}';

{ SCKSTATEConstants }

  sckClosed = 0;
  sckOpen = 1;
  sckListening = 2;
  sckConnectionPending = 3;
  sckResolvingHost = 4;
  sckHostResolved = 5;
  sckConnecting = 6;
  sckConnected = 7;
  sckClosing = 8;
  sckError = 9;

const

{ Component class GUIDs }
  Class_TCP: TGUID = '{B7FC3584-8CE7-11CF-9754-00AA00C00908}';
  Class_UDP: TGUID = '{B7FC3587-8CE7-11CF-9754-00AA00C00908}';

type

{ Forward declarations }
{ Forward declarations: Interfaces }
  INMWinsockControl = interface;
  INMWinsockControlDisp = dispinterface;
  DNMWinsockControlEvents = dispinterface;
  ITCP = interface;
  ITCPDisp = dispinterface;
  DTCPEvents = dispinterface;
  IUDP = interface;
  IUDPDisp = dispinterface;
  DUDPEvents = dispinterface;

{ Forward declarations: CoClasses }
  TCP = ITCP;
  UDP = IUDP;

{ Forward declarations: Enums }
  SCKSTATEConstants = TOleEnum;

{ NetManage Shared Winsock methods and events }

  INMWinsockControl = interface(IDispatch)
    ['{B7FC3574-8CE7-11CF-9754-00AA00C00908}']
    procedure AboutBox; safecall;
    function Get_RemoteHostIP: WideString; safecall;
    function Get_LocalHostName: WideString; safecall;
    function Get_LocalIP: WideString; safecall;
    function Get_SocketHandle: Integer; safecall;
    property RemoteHostIP: WideString read Get_RemoteHostIP;
    property LocalHostName: WideString read Get_LocalHostName;
    property LocalIP: WideString read Get_LocalIP;
    property SocketHandle: Integer read Get_SocketHandle;
  end;

{ DispInterface declaration for Dual Interface INMWinsockControl }

  INMWinsockControlDisp = dispinterface
    ['{B7FC3574-8CE7-11CF-9754-00AA00C00908}']
    property RemoteHostIP: WideString readonly dispid 1001;
    property LocalHostName: WideString readonly dispid 1002;
    property LocalIP: WideString readonly dispid 1003;
    property SocketHandle: Integer readonly dispid 1004;
  end;

{ Shared Winsock events }

  DNMWinsockControlEvents = dispinterface
    ['{B7FC3575-8CE7-11CF-9754-00AA00C00908}']
    procedure DataArrival(bytesTotal: Integer); dispid 1051;
  end;

{ Properties and methods for NetManage TCP Control }

  ITCP = interface(INMWinsockControl)
    ['{B7FC3582-8CE7-11CF-9754-00AA00C00908}']
    function Get_RemoteHost: WideString; safecall;
    procedure Set_RemoteHost(const Value: WideString); safecall;
    function Get_RemotePort: Integer; safecall;
    procedure Set_RemotePort(Value: Integer); safecall;
    function Get_LocalPort: Integer; safecall;
    procedure Set_LocalPort(Value: Integer); safecall;
    function Get_State: Smallint; safecall;
    function Get_BytesReceived: Integer; safecall;
    procedure Connect(RemoteHost, RemotePort: OleVariant); safecall;
    procedure Listen; safecall;
    procedure Accept(requestID: Integer); safecall;
    procedure SendData(data: OleVariant); safecall;
    procedure GetData(var data: OleVariant; type_, maxLen: OleVariant); safecall;
    procedure PeekData(var data: OleVariant; type_, maxLen: OleVariant); safecall;
    procedure Close; safecall;
    property RemoteHost: WideString read Get_RemoteHost write Set_RemoteHost;
    property RemotePort: Integer read Get_RemotePort write Set_RemotePort;
    property LocalPort: Integer read Get_LocalPort write Set_LocalPort;
    property State: Smallint read Get_State;
    property BytesReceived: Integer read Get_BytesReceived;
  end;

{ DispInterface declaration for Dual Interface ITCP }

  ITCPDisp = dispinterface
    ['{B7FC3582-8CE7-11CF-9754-00AA00C00908}']
    property RemoteHost: WideString dispid 0;
    property RemotePort: Integer dispid 502;
    property LocalPort: Integer dispid 1010;
    property State: Smallint readonly dispid 503;
    property BytesReceived: Integer readonly dispid 1101;
    procedure Connect(RemoteHost, RemotePort: OleVariant); dispid 521;
    procedure Listen; dispid 1102;
    procedure Accept(requestID: Integer); dispid 1103;
    procedure SendData(data: OleVariant); dispid 1012;
    procedure GetData(var data: OleVariant; type_, maxLen: OleVariant); dispid 1011;
    procedure PeekData(var data: OleVariant; type_, maxLen: OleVariant); dispid 1104;
    procedure Close; dispid 1105;
  end;

{ NetManage TCP Control events }

  DTCPEvents = dispinterface
    ['{B7FC3583-8CE7-11CF-9754-00AA00C00908}']
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool); dispid -608;
    procedure DataArrival(bytesTotal: Integer); dispid 1051;
    procedure Connect; dispid 1151;
    procedure ConnectionRequest(requestID: Integer); dispid 1152;
    procedure Close; dispid 1155;
    procedure SendProgress(bytesSent, bytesRemaining: Integer); dispid 1153;
    procedure SendComplete; dispid 1154;
  end;

{ Properties and methods for the NetManage UDP Control }

  IUDP = interface(INMWinsockControl)
    ['{B7FC3585-8CE7-11CF-9754-00AA00C00908}']
    function Get_RemoteHost: WideString; safecall;
    procedure Set_RemoteHost(const Value: WideString); safecall;
    function Get_RemotePort: Integer; safecall;
    procedure Set_RemotePort(Value: Integer); safecall;
    function Get_LocalPort: Integer; safecall;
    procedure Set_LocalPort(Value: Integer); safecall;
    procedure SendData(data: OleVariant); safecall;
    procedure GetData(var data: OleVariant; type_: OleVariant); safecall;
    property RemoteHost: WideString read Get_RemoteHost write Set_RemoteHost;
    property RemotePort: Integer read Get_RemotePort write Set_RemotePort;
    property LocalPort: Integer read Get_LocalPort write Set_LocalPort;
  end;

{ DispInterface declaration for Dual Interface IUDP }

  IUDPDisp = dispinterface
    ['{B7FC3585-8CE7-11CF-9754-00AA00C00908}']
    property RemoteHost: WideString dispid 0;
    property RemotePort: Integer dispid 502;
    property LocalPort: Integer dispid 1010;
    procedure SendData(data: OleVariant); dispid 1012;
    procedure GetData(var data: OleVariant; type_: OleVariant); dispid 1011;
  end;

{ NetManage UDP Control events }

  DUDPEvents = dispinterface
    ['{B7FC3586-8CE7-11CF-9754-00AA00C00908}']
    procedure Error(Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool); dispid -608;
    procedure DataArrival(bytesTotal: Integer); dispid 1051;
  end;

{ NetManage TCP Control }

  TTCPError = procedure(Sender: TObject; Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool) of object;
  TTCPDataArrival = procedure(Sender: TObject; bytesTotal: Integer) of object;
  TTCPConnectionRequest = procedure(Sender: TObject; requestID: Integer) of object;
  TTCPSendProgress = procedure(Sender: TObject; bytesSent, bytesRemaining: Integer) of object;

  TTCP = class(TOleControl)
  private
    FOnError: TTCPError;
    FOnDataArrival: TTCPDataArrival;
    FOnConnect: TNotifyEvent;
    FOnConnectionRequest: TTCPConnectionRequest;
    FOnClose: TNotifyEvent;
    FOnSendProgress: TTCPSendProgress;
    FOnSendComplete: TNotifyEvent;
    FIntf: ITCP;
  protected
    procedure InitControlData; override;
    procedure InitControlInterface(const Obj: IUnknown); override;
  public
    procedure AboutBox;
    procedure Connect(RemoteHost, RemotePort: OleVariant);
    procedure Listen;
    procedure Accept(requestID: Integer);
    procedure SendData(data: OleVariant);
    procedure GetData(var data: OleVariant; type_, maxLen: OleVariant);
    procedure PeekData(var data: OleVariant; type_, maxLen: OleVariant);
    procedure Close;
    property ControlInterface: ITCP read FIntf;
    property RemoteHostIP: WideString index 1001 read GetWideStringProp;
    property LocalHostName: WideString index 1002 read GetWideStringProp;
    property LocalIP: WideString index 1003 read GetWideStringProp;
    property SocketHandle: Integer index 1004 read GetIntegerProp;
    property State: Smallint index 503 read GetSmallintProp;
    property BytesReceived: Integer index 1101 read GetIntegerProp;
  published
    property RemoteHost: WideString index 0 read GetWideStringProp write SetWideStringProp stored False;
    property RemotePort: Integer index 502 read GetIntegerProp write SetIntegerProp stored False;
    property LocalPort: Integer index 1010 read GetIntegerProp write SetIntegerProp stored False;
    property OnError: TTCPError read FOnError write FOnError;
    property OnDataArrival: TTCPDataArrival read FOnDataArrival write FOnDataArrival;
    property OnConnect: TNotifyEvent read FOnConnect write FOnConnect;
    property OnConnectionRequest: TTCPConnectionRequest read FOnConnectionRequest write FOnConnectionRequest;
    property OnClose: TNotifyEvent read FOnClose write FOnClose;
    property OnSendProgress: TTCPSendProgress read FOnSendProgress write FOnSendProgress;
    property OnSendComplete: TNotifyEvent read FOnSendComplete write FOnSendComplete;
  end;

{ NetManage UDP Control }

  TUDPError = procedure(Sender: TObject; Number: Smallint; var Description: WideString; Scode: Integer; const Source, HelpFile: WideString; HelpContext: Integer; var CancelDisplay: WordBool) of object;
  TUDPDataArrival = procedure(Sender: TObject; bytesTotal: Integer) of object;

  TUDP = class(TOleControl)
  private
    FOnError: TUDPError;
    FOnDataArrival: TUDPDataArrival;
    FIntf: IUDP;
  protected
    procedure InitControlData; override;
    procedure InitControlInterface(const Obj: IUnknown); override;
  public
    procedure AboutBox;
    procedure SendData(data: OleVariant);
    procedure GetData(var data: OleVariant; type_: OleVariant);
    property ControlInterface: IUDP read FIntf;
    property RemoteHostIP: WideString index 1001 read GetWideStringProp;
    property LocalHostName: WideString index 1002 read GetWideStringProp;
    property LocalIP: WideString index 1003 read GetWideStringProp;
    property SocketHandle: Integer index 1004 read GetIntegerProp;
  published
    property RemoteHost: WideString index 0 read GetWideStringProp write SetWideStringProp stored False;
    property RemotePort: Integer index 502 read GetIntegerProp write SetIntegerProp stored False;
    property LocalPort: Integer index 1010 read GetIntegerProp write SetIntegerProp stored False;
    property OnError: TUDPError read FOnError write FOnError;
    property OnDataArrival: TUDPDataArrival read FOnDataArrival write FOnDataArrival;
  end;


procedure Register;

implementation

uses ComObj;

class function CoDocHeaderCls.Create: DocHeader;
begin
  Result := CreateComObject(Class_DocHeaderCls) as DocHeader;
end;

class function CoDocHeaderCls.CreateRemote(const MachineName: string): DocHeader;
begin
  Result := CreateRemoteComObject(MachineName, Class_DocHeaderCls) as DocHeader;
end;

class function CoDocHeadersCls.Create: DocHeaders;
begin
  Result := CreateComObject(Class_DocHeadersCls) as DocHeaders;
end;

class function CoDocHeadersCls.CreateRemote(const MachineName: string): DocHeaders;
begin
  Result := CreateRemoteComObject(MachineName, Class_DocHeadersCls) as DocHeaders;
end;

class function CoDocInputCls.Create: DocInput;
begin
  Result := CreateComObject(Class_DocInputCls) as DocInput;
end;

class function CoDocInputCls.CreateRemote(const MachineName: string): DocInput;
begin
  Result := CreateRemoteComObject(MachineName, Class_DocInputCls) as DocInput;
end;

class function CoDocOutputCls.Create: DocOutput;
begin
  Result := CreateComObject(Class_DocOutputCls) as DocOutput;
end;

class function CoDocOutputCls.CreateRemote(const MachineName: string): DocOutput;
begin
  Result := CreateRemoteComObject(MachineName, Class_DocOutputCls) as DocOutput;
end;

class function CoicErrorCls.Create: icError;
begin
  Result := CreateComObject(Class_icErrorCls) as icError;
end;

class function CoicErrorCls.CreateRemote(const MachineName: string): icError;
begin
  Result := CreateRemoteComObject(MachineName, Class_icErrorCls) as icError;
end;

class function CoicErrorsCls.Create: icErrors;
begin
  Result := CreateComObject(Class_icErrorsCls) as icErrors;
end;

class function CoicErrorsCls.CreateRemote(const MachineName: string): icErrors;
begin
  Result := CreateRemoteComObject(MachineName, Class_icErrorsCls) as icErrors;
end;

class function CoFTPDirItemCls.Create: FTPDirItem;
begin
  Result := CreateComObject(Class_FTPDirItemCls) as FTPDirItem;
end;

class function CoFTPDirItemCls.CreateRemote(const MachineName: string): FTPDirItem;
begin
  Result := CreateRemoteComObject(MachineName, Class_FTPDirItemCls) as FTPDirItem;
end;

class function CoFirewall.Create: IFirewall;
begin
  Result := CreateComObject(Class_Firewall) as IFirewall;
end;

class function CoFirewall.CreateRemote(const MachineName: string): IFirewall;
begin
  Result := CreateRemoteComObject(MachineName, Class_Firewall) as IFirewall;
end;

procedure TFTP.InitControlData;
const
  CEventDispIDs: array[0..27] of DWORD = (
    $FFFFFDA0, $00000227, $00000228, $00000229, $0000022A, $0000022B,
    $0000022C, $000003F8, $000003F9, $0000002B, $0000002C, $0000002D,
    $0000002F, $00000030, $00000031, $00000036, $00000037, $00000038,
    $00000039, $0000003A, $0000003C, $0000003E, $0000003F, $00000040,
    $00000042, $00000044, $00000043, $0000005A);
  CLicenseKey: array[0..36] of Word = (
    $0037, $0033, $0066, $0036, $0061, $0062, $0033, $0030, $002D, $0035,
    $0035, $0039, $0038, $002D, $0031, $0031, $0063, $0066, $002D, $0038,
    $0033, $0038, $0039, $002D, $0030, $0030, $0032, $0030, $0061, $0066,
    $0036, $0039, $0037, $0030, $0031, $0034, $0000);
  CControlData: TControlData = (
    ClassID: '{B7FC354C-8CE7-11CF-9754-00AA00C00908}';
    EventIID: '{B7FC354B-8CE7-11CF-9754-00AA00C00908}';
    EventCount: 28;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 300);
begin
  ControlData := @CControlData;
end;

procedure TFTP.InitControlInterface(const Obj: IUnknown);
begin
  FIntf := Obj as Iftpct;
end;

procedure TFTP.AboutBox;
begin
  ControlInterface.AboutBox;
end;

procedure TFTP.Cancel;
begin
  ControlInterface.Cancel;
end;

procedure TFTP.Connect(RemoteHost, RemotePort: OleVariant);
begin
  ControlInterface.Connect(RemoteHost, RemotePort);
end;

procedure TFTP.Authenticate(UserId, Password: OleVariant);
begin
  ControlInterface.Authenticate(UserId, Password);
end;

procedure TFTP.SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant);
begin
  ControlInterface.SendDoc(URL, Headers, InputData, InputFile, OutputFile);
end;

procedure TFTP.GetDoc(URL, Headers, OutputFile: OleVariant);
begin
  ControlInterface.GetDoc(URL, Headers, OutputFile);
end;

procedure TFTP.Abort;
begin
  ControlInterface.Abort;
end;

procedure TFTP.Account(const Account: WideString);
begin
  ControlInterface.Account(Account);
end;

procedure TFTP.ChangeDir(const directory: WideString);
begin
  ControlInterface.ChangeDir(directory);
end;

procedure TFTP.CreateDir(const directory: WideString);
begin
  ControlInterface.CreateDir(directory);
end;

procedure TFTP.DeleteDir(const directory: WideString);
begin
  ControlInterface.DeleteDir(directory);
end;

procedure TFTP.DeleteFile(const FileName: WideString);
begin
  ControlInterface.DeleteFile(FileName);
end;

procedure TFTP.Quit;
begin
  ControlInterface.Quit;
end;

procedure TFTP.Help(const Help: WideString);
begin
  ControlInterface.Help(Help);
end;

procedure TFTP.Noop;
begin
  ControlInterface.Noop;
end;

procedure TFTP.Mode(ftpMode: FTPModeConstants);
begin
  ControlInterface.Mode(ftpMode);
end;

procedure TFTP.Type_(ftpType: FTPTypeConstants);
begin
  ControlInterface.Type_(ftpType);
end;

procedure TFTP.List(const List: WideString);
begin
  ControlInterface.List(List);
end;

procedure TFTP.NameList(const NameList: WideString);
begin
  ControlInterface.NameList(NameList);
end;

procedure TFTP.ParentDir;
begin
  ControlInterface.ParentDir;
end;

procedure TFTP.PrintDir;
begin
  ControlInterface.PrintDir;
end;

procedure TFTP.Execute(const Execute: WideString);
begin
  ControlInterface.Execute(Execute);
end;

procedure TFTP.Status(const Status: WideString);
begin
  ControlInterface.Status(Status);
end;

procedure TFTP.PutFile(const srcFileName, destFileName: WideString);
begin
  ControlInterface.PutFile(srcFileName, destFileName);
end;

procedure TFTP.Reinitialize;
begin
  ControlInterface.Reinitialize;
end;

procedure TFTP.System;
begin
  ControlInterface.System;
end;

procedure TFTP.GetFile(const srcFileName, destFileName: WideString);
begin
  ControlInterface.GetFile(srcFileName, destFileName);
end;

procedure TFTP.PutFileUnique(const FileName: WideString);
begin
  ControlInterface.PutFileUnique(FileName);
end;

procedure TFTP.Site(const Site: WideString);
begin
  ControlInterface.Site(Site);
end;

function TFTP.Get_Timeout(event: Smallint): Integer;
begin
  Result := ControlInterface.Timeout[event];
end;

procedure TFTP.Set_Timeout(event: Smallint; Value: Integer);
begin
  ControlInterface.Timeout[event] := Value;
end;

procedure TFTP.Set_EnableTimer(event: Smallint; Value: WordBool);
begin
  ControlInterface.EnableTimer[event] := Value;
end;

function TFTP.Get_Errors: icErrors;
begin
  Result := ControlInterface.Errors;
end;

function TFTP.Get_DocInput: DocInput;
begin
  Result := ControlInterface.DocInput;
end;

function TFTP.Get_DocOutput: DocOutput;
begin
  Result := ControlInterface.DocOutput;
end;

function TFTP.Get_Firewall: IFirewall;
begin
  Result := ControlInterface.Firewall;
end;

class function CoProxy.Create: IHttpProxy;
begin
  Result := CreateComObject(Class_Proxy) as IHttpProxy;
end;

class function CoProxy.CreateRemote(const MachineName: string): IHttpProxy;
begin
  Result := CreateRemoteComObject(MachineName, Class_Proxy) as IHttpProxy;
end;

procedure THTTP.InitControlData;
const
  CEventDispIDs: array[0..8] of DWORD = (
    $FFFFFDA0, $00000227, $00000228, $00000229, $0000022A, $0000022B,
    $0000022C, $000003F8, $000003F9);
  CLicenseKey: array[0..36] of Word = (
    $0037, $0030, $0037, $0038, $0031, $0037, $0036, $0030, $002D, $0035,
    $0035, $0064, $0064, $002D, $0031, $0031, $0063, $0066, $002D, $0061,
    $0039, $0037, $0066, $002D, $0030, $0030, $0032, $0030, $0061, $0066,
    $0033, $0066, $0038, $0037, $0062, $0035, $0000);
  CControlData: TControlData = (
    ClassID: '{B7FC3563-8CE7-11CF-9754-00AA00C00908}';
    EventIID: '{B7FC3562-8CE7-11CF-9754-00AA00C00908}';
    EventCount: 9;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 300);
begin
  ControlData := @CControlData;
end;

procedure THTTP.InitControlInterface(const Obj: IUnknown);
begin
  FIntf := Obj as IHTTPCT;
end;

procedure THTTP.AboutBox;
begin
  ControlInterface.AboutBox;
end;

procedure THTTP.Cancel;
begin
  ControlInterface.Cancel;
end;

procedure THTTP.SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant);
begin
  ControlInterface.SendDoc(URL, Headers, InputData, InputFile, OutputFile);
end;

procedure THTTP.GetDoc(URL, Headers, OutputFile: OleVariant);
begin
  ControlInterface.GetDoc(URL, Headers, OutputFile);
end;

function THTTP.Get_Timeout(event: Smallint): Integer;
begin
  Result := ControlInterface.Timeout[event];
end;

procedure THTTP.Set_Timeout(event: Smallint; Value: Integer);
begin
  ControlInterface.Timeout[event] := Value;
end;

procedure THTTP.Set_EnableTimer(event: Smallint; Value: WordBool);
begin
  ControlInterface.EnableTimer[event] := Value;
end;

function THTTP.Get_Errors: icErrors;
begin
  Result := ControlInterface.Errors;
end;

function THTTP.Get_DocInput: DocInput;
begin
  Result := ControlInterface.DocInput;
end;

function THTTP.Get_DocOutput: DocOutput;
begin
  Result := ControlInterface.DocOutput;
end;

function THTTP.Get_Proxy: IHttpProxy;
begin
  Result := ControlInterface.Proxy;
end;

class function CoHTMLElementCls.Create: HTMLElement;
begin
  Result := CreateComObject(Class_HTMLElementCls) as HTMLElement;
end;

class function CoHTMLElementCls.CreateRemote(const MachineName: string): HTMLElement;
begin
  Result := CreateRemoteComObject(MachineName, Class_HTMLElementCls) as HTMLElement;
end;

class function CoHTMLFormCls.Create: HTMLForm;
begin
  Result := CreateComObject(Class_HTMLFormCls) as HTMLForm;
end;

class function CoHTMLFormCls.CreateRemote(const MachineName: string): HTMLForm;
begin
  Result := CreateRemoteComObject(MachineName, Class_HTMLFormCls) as HTMLForm;
end;

class function CoHTMLFormsCls.Create: HTMLForms;
begin
  Result := CreateComObject(Class_HTMLFormsCls) as HTMLForms;
end;

class function CoHTMLFormsCls.CreateRemote(const MachineName: string): HTMLForms;
begin
  Result := CreateRemoteComObject(MachineName, Class_HTMLFormsCls) as HTMLForms;
end;

class function CoHTMLAttrCls.Create: HTMLAttr;
begin
  Result := CreateComObject(Class_HTMLAttrCls) as HTMLAttr;
end;

class function CoHTMLAttrCls.CreateRemote(const MachineName: string): HTMLAttr;
begin
  Result := CreateRemoteComObject(MachineName, Class_HTMLAttrCls) as HTMLAttr;
end;

class function CoHTMLAttrsCls.Create: HTMLAttrs;
begin
  Result := CreateComObject(Class_HTMLAttrsCls) as HTMLAttrs;
end;

class function CoHTMLAttrsCls.CreateRemote(const MachineName: string): HTMLAttrs;
begin
  Result := CreateRemoteComObject(MachineName, Class_HTMLAttrsCls) as HTMLAttrs;
end;

procedure THTML.InitControlData;
const
  CEventDispIDs: array[0..12] of DWORD = (
    $FFFFFDA0, $000003F8, $000003F9, $00000001, $00000002, $00000227,
    $00000004, $00000005, $00000006, $00000007, $00000008, $00000009,
    $0000000A);
  CLicenseKey: array[0..36] of Word = (
    $0036, $0036, $0061, $0062, $0037, $0030, $0064, $0030, $002D, $0035,
    $0035, $0064, $0033, $002D, $0031, $0031, $0063, $0066, $002D, $0038,
    $0030, $0034, $0063, $002D, $0030, $0030, $0061, $0030, $0032, $0034,
    $0032, $0034, $0065, $0039, $0032, $0037, $0000);
  CTFontIDs: array [0..7] of DWORD = (
    $FFFFFE00, $0000001B, $0000001C, $0000001D, $0000001E, $0000001F,
    $00000020, $00000021);
  CControlData: TControlData = (
    ClassID: '{B7FC355E-8CE7-11CF-9754-00AA00C00908}';
    EventIID: '{B7FC355D-8CE7-11CF-9754-00AA00C00908}';
    EventCount: 13;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000007;
    Version: 300;
    FontCount: 8;
    FontIDs: @CTFontIDs);
begin
  ControlData := @CControlData;
end;

procedure THTML.InitControlInterface(const Obj: IUnknown);
begin
  FIntf := Obj as IHTML;
end;

procedure THTML.AboutBox;
begin
  ControlInterface.AboutBox;
end;

procedure THTML.RequestDoc(const URL: WideString);
begin
  ControlInterface.RequestDoc(URL);
end;

procedure THTML.RequestAllEmbedded;
begin
  ControlInterface.RequestAllEmbedded;
end;

procedure THTML.Cancel(Message: OleVariant);
begin
  ControlInterface.Cancel(Message);
end;

procedure THTML.BeginPrinting(hDC: Integer; x, y, Width, Height, DefaultHeaders, DefaultTitle: OleVariant);
begin
  ControlInterface.BeginPrinting(hDC, x, y, Width, Height, DefaultHeaders, DefaultTitle);
end;

procedure THTML.PrintPage(hDC, PageNumber: Integer);
begin
  ControlInterface.PrintPage(hDC, PageNumber);
end;

procedure THTML.EndPrinting;
begin
  ControlInterface.EndPrinting;
end;

procedure THTML.AutoPrint(hDC: Integer);
begin
  ControlInterface.AutoPrint(hDC);
end;

function THTML.GetPlainText(selected, fancy: WordBool): WideString;
begin
  Result := ControlInterface.GetPlainText(selected, fancy);
end;

function THTML.HasSelection: WordBool;
begin
  Result := ControlInterface.HasSelection;
end;

procedure THTML.SelectAll;
begin
  ControlInterface.SelectAll;
end;

function THTML.Get_DocInput: DocInput;
begin
  Result := ControlInterface.DocInput;
end;

function THTML.Get_DocOutput: DocOutput;
begin
  Result := ControlInterface.DocOutput;
end;

function THTML.Get_Forms: HTMLForms;
begin
  Result := ControlInterface.Forms;
end;

function THTML.Get_IsPrintingDone(PageNumber: Integer): WordBool;
begin
  Result := ControlInterface.IsPrintingDone[PageNumber];
end;

function THTML.Get_Errors: icErrors;
begin
  Result := ControlInterface.Errors;
end;

function THTML.Get_hWnd: OLE_HANDLE;
begin
  Result := ControlInterface.hWnd;
end;

procedure TPOP.InitControlData;
const
  CEventDispIDs: array[0..13] of DWORD = (
    $FFFFFDA0, $00000227, $00000228, $00000229, $0000022A, $0000022B,
    $0000022C, $000003F9, $000009A1, $000009A2, $000009A3, $000009A4,
    $000009A6, $000009A7);
  CLicenseKey: array[0..36] of Word = (
    $0066, $0062, $0037, $0036, $0036, $0033, $0065, $0030, $002D, $0035,
    $0035, $0030, $0035, $002D, $0031, $0031, $0063, $0066, $002D, $0061,
    $0036, $0037, $0036, $002D, $0030, $0030, $0032, $0030, $0061, $0066,
    $0036, $0061, $0030, $0062, $0066, $0032, $0000);
  CControlData: TControlData = (
    ClassID: '{B7FC356E-8CE7-11CF-9754-00AA00C00908}';
    EventIID: '{B7FC356D-8CE7-11CF-9754-00AA00C00908}';
    EventCount: 14;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 300);
begin
  ControlData := @CControlData;
end;

procedure TPOP.InitControlInterface(const Obj: IUnknown);
begin
  FIntf := Obj as Ipopct;
end;

procedure TPOP.AboutBox;
begin
  ControlInterface.AboutBox;
end;

procedure TPOP.Cancel;
begin
  ControlInterface.Cancel;
end;

procedure TPOP.Connect(RemoteHost, RemotePort: OleVariant);
begin
  ControlInterface.Connect(RemoteHost, RemotePort);
end;

procedure TPOP.Authenticate(UserId, Password: OleVariant);
begin
  ControlInterface.Authenticate(UserId, Password);
end;

procedure TPOP.GetDoc(URL, Headers, OutputFile: OleVariant);
begin
  ControlInterface.GetDoc(URL, Headers, OutputFile);
end;

procedure TPOP.MessageSize(MessageNumber: Smallint);
begin
  ControlInterface.MessageSize(MessageNumber);
end;

procedure TPOP.RetrieveMessage(MessageNumber: Smallint);
begin
  ControlInterface.RetrieveMessage(MessageNumber);
end;

procedure TPOP.Delete(MessageNumber: Smallint);
begin
  ControlInterface.Delete(MessageNumber);
end;

procedure TPOP.Reset;
begin
  ControlInterface.Reset;
end;

procedure TPOP.Last;
begin
  ControlInterface.Last;
end;

procedure TPOP.Noop;
begin
  ControlInterface.Noop;
end;

procedure TPOP.TopMessage(MessageNumber: Smallint);
begin
  ControlInterface.TopMessage(MessageNumber);
end;

procedure TPOP.Quit;
begin
  ControlInterface.Quit;
end;

procedure TPOP.RefreshMessageCount;
begin
  ControlInterface.RefreshMessageCount;
end;

function TPOP.Get_Timeout(event: Smallint): Integer;
begin
  Result := ControlInterface.Timeout[event];
end;

procedure TPOP.Set_Timeout(event: Smallint; Value: Integer);
begin
  ControlInterface.Timeout[event] := Value;
end;

procedure TPOP.Set_EnableTimer(event: Smallint; Value: WordBool);
begin
  ControlInterface.EnableTimer[event] := Value;
end;

function TPOP.Get_Errors: icErrors;
begin
  Result := ControlInterface.Errors;
end;

function TPOP.Get_DocOutput: DocOutput;
begin
  Result := ControlInterface.DocOutput;
end;

procedure TNNTP.InitControlData;
const
  CEventDispIDs: array[0..15] of DWORD = (
    $FFFFFDA0, $00000227, $00000228, $00000229, $0000022A, $0000022B,
    $0000022C, $000003F8, $000003F9, $00000000, $00000001, $00000002,
    $00000003, $00000004, $00000005, $00000006);
  CLicenseKey: array[0..36] of Word = (
    $0038, $0036, $0063, $0033, $0065, $0038, $0038, $0030, $002D, $0035,
    $0035, $0039, $0035, $002D, $0031, $0031, $0063, $0066, $002D, $0039,
    $0036, $0065, $0037, $002D, $0030, $0030, $0038, $0030, $0063, $0037,
    $0063, $0033, $0063, $0032, $0038, $0034, $0000);
  CControlData: TControlData = (
    ClassID: '{B7FC3568-8CE7-11CF-9754-00AA00C00908}';
    EventIID: '{B7FC3567-8CE7-11CF-9754-00AA00C00908}';
    EventCount: 16;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 300);
begin
  ControlData := @CControlData;
end;

procedure TNNTP.InitControlInterface(const Obj: IUnknown);
begin
  FIntf := Obj as Inntpct;
end;

procedure TNNTP.AboutBox;
begin
  ControlInterface.AboutBox;
end;

procedure TNNTP.Cancel;
begin
  ControlInterface.Cancel;
end;

procedure TNNTP.Connect(RemoteHost, RemotePort: OleVariant);
begin
  ControlInterface.Connect(RemoteHost, RemotePort);
end;

procedure TNNTP.SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant);
begin
  ControlInterface.SendDoc(URL, Headers, InputData, InputFile, OutputFile);
end;

procedure TNNTP.GetDoc(URL, Headers, OutputFile: OleVariant);
begin
  ControlInterface.GetDoc(URL, Headers, OutputFile);
end;

procedure TNNTP.GetAdministrationFile(LastUpdate: OleVariant);
begin
  ControlInterface.GetAdministrationFile(LastUpdate);
end;

procedure TNNTP.SelectGroup(const groupName: WideString);
begin
  ControlInterface.SelectGroup(groupName);
end;

procedure TNNTP.SetNextArticle;
begin
  ControlInterface.SetNextArticle;
end;

procedure TNNTP.SetLastArticle;
begin
  ControlInterface.SetLastArticle;
end;

procedure TNNTP.GetArticleNumbers(groupName: OleVariant);
begin
  ControlInterface.GetArticleNumbers(groupName);
end;

procedure TNNTP.GetArticleHeaders(const header: WideString; firstArticle, lastArticle: OleVariant);
begin
  ControlInterface.GetArticleHeaders(header, firstArticle, lastArticle);
end;

procedure TNNTP.GetArticleByArticleNumber(articleNumber: OleVariant);
begin
  ControlInterface.GetArticleByArticleNumber(articleNumber);
end;

procedure TNNTP.GetArticleByMessageID(const messageID: WideString);
begin
  ControlInterface.GetArticleByMessageID(messageID);
end;

procedure TNNTP.GetHeaderByArticleNumber(articleNumber: OleVariant);
begin
  ControlInterface.GetHeaderByArticleNumber(articleNumber);
end;

procedure TNNTP.GetHeaderByMessageID(const messageID: WideString);
begin
  ControlInterface.GetHeaderByMessageID(messageID);
end;

procedure TNNTP.GetBodyByArticleNumber(articleNumber: OleVariant);
begin
  ControlInterface.GetBodyByArticleNumber(articleNumber);
end;

procedure TNNTP.GetBodyByMessageID(const messageID: WideString);
begin
  ControlInterface.GetBodyByMessageID(messageID);
end;

procedure TNNTP.GetStatByArticleNumber(articleNumber: OleVariant);
begin
  ControlInterface.GetStatByArticleNumber(articleNumber);
end;

procedure TNNTP.GetOverviewFormat;
begin
  ControlInterface.GetOverviewFormat;
end;

procedure TNNTP.GetOverview(firstArticle, lastArticle: OleVariant);
begin
  ControlInterface.GetOverview(firstArticle, lastArticle);
end;

procedure TNNTP.ListGroups;
begin
  ControlInterface.ListGroups;
end;

procedure TNNTP.ListGroupDescriptions;
begin
  ControlInterface.ListGroupDescriptions;
end;

procedure TNNTP.ListNewGroups(LastUpdate: OleVariant);
begin
  ControlInterface.ListNewGroups(LastUpdate);
end;

procedure TNNTP.Quit;
begin
  ControlInterface.Quit;
end;

function TNNTP.Get_Timeout(event: Smallint): Integer;
begin
  Result := ControlInterface.Timeout[event];
end;

procedure TNNTP.Set_Timeout(event: Smallint; Value: Integer);
begin
  ControlInterface.Timeout[event] := Value;
end;

procedure TNNTP.Set_EnableTimer(event: Smallint; Value: WordBool);
begin
  ControlInterface.EnableTimer[event] := Value;
end;

function TNNTP.Get_Errors: icErrors;
begin
  Result := ControlInterface.Errors;
end;

function TNNTP.Get_DocInput: DocInput;
begin
  Result := ControlInterface.DocInput;
end;

function TNNTP.Get_DocOutput: DocOutput;
begin
  Result := ControlInterface.DocOutput;
end;

procedure TSMTP.InitControlData;
const
  CEventDispIDs: array[0..12] of DWORD = (
    $FFFFFDA0, $00000227, $00000228, $00000229, $0000022A, $0000022B,
    $0000022C, $000003F8, $0000012C, $0000012D, $0000012E, $0000012F,
    $00000130);
  CLicenseKey: array[0..36] of Word = (
    $0062, $0037, $0034, $0034, $0034, $0065, $0065, $0030, $002D, $0035,
    $0035, $0062, $0065, $002D, $0031, $0031, $0063, $0066, $002D, $0039,
    $0036, $0065, $0037, $002D, $0030, $0030, $0038, $0030, $0063, $0037,
    $0063, $0033, $0063, $0032, $0038, $0034, $0000);
  CControlData: TControlData = (
    ClassID: '{B7FC3573-8CE7-11CF-9754-00AA00C00908}';
    EventIID: '{B7FC3572-8CE7-11CF-9754-00AA00C00908}';
    EventCount: 13;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 300);
begin
  ControlData := @CControlData;
end;

procedure TSMTP.InitControlInterface(const Obj: IUnknown);
begin
  FIntf := Obj as Ismtpct;
end;

procedure TSMTP.AboutBox;
begin
  ControlInterface.AboutBox;
end;

procedure TSMTP.Cancel;
begin
  ControlInterface.Cancel;
end;

procedure TSMTP.Connect(RemoteHost, RemotePort: OleVariant);
begin
  ControlInterface.Connect(RemoteHost, RemotePort);
end;

procedure TSMTP.SendDoc(URL, Headers, InputData, InputFile, OutputFile: OleVariant);
begin
  ControlInterface.SendDoc(URL, Headers, InputData, InputFile, OutputFile);
end;

procedure TSMTP.Reset;
begin
  ControlInterface.Reset;
end;

procedure TSMTP.Verify(const name: WideString);
begin
  ControlInterface.Verify(name);
end;

procedure TSMTP.Expand(const name: WideString);
begin
  ControlInterface.Expand(name);
end;

procedure TSMTP.Help(helpTopic: OleVariant);
begin
  ControlInterface.Help(helpTopic);
end;

procedure TSMTP.Noop;
begin
  ControlInterface.Noop;
end;

procedure TSMTP.Quit;
begin
  ControlInterface.Quit;
end;

function TSMTP.Get_Timeout(event: Smallint): Integer;
begin
  Result := ControlInterface.Timeout[event];
end;

procedure TSMTP.Set_Timeout(event: Smallint; Value: Integer);
begin
  ControlInterface.Timeout[event] := Value;
end;

procedure TSMTP.Set_EnableTimer(event: Smallint; Value: WordBool);
begin
  ControlInterface.EnableTimer[event] := Value;
end;

function TSMTP.Get_Errors: icErrors;
begin
  Result := ControlInterface.Errors;
end;

function TSMTP.Get_DocInput: DocInput;
begin
  Result := ControlInterface.DocInput;
end;

procedure TTCP.InitControlData;
const
  CEventDispIDs: array[0..6] of DWORD = (
    $FFFFFDA0, $0000041B, $0000047F, $00000480, $00000483, $00000481,
    $00000482);
  CLicenseKey: array[0..36] of Word = (
    $0062, $0033, $0031, $0035, $0063, $0035, $0033, $0030, $002D, $0035,
    $0032, $0039, $0038, $002D, $0031, $0031, $0063, $0066, $002D, $0061,
    $0061, $0061, $0032, $002D, $0030, $0030, $0032, $0030, $0061, $0066,
    $0032, $0063, $0065, $0065, $0035, $0065, $0000);
  CControlData: TControlData = (
    ClassID: '{B7FC3584-8CE7-11CF-9754-00AA00C00908}';
    EventIID: '{B7FC3583-8CE7-11CF-9754-00AA00C00908}';
    EventCount: 7;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 300);
begin
  ControlData := @CControlData;
end;

procedure TTCP.InitControlInterface(const Obj: IUnknown);
begin
  FIntf := Obj as ITCP;
end;

procedure TTCP.AboutBox;
begin
  ControlInterface.AboutBox;
end;

procedure TTCP.Connect(RemoteHost, RemotePort: OleVariant);
begin
  ControlInterface.Connect(RemoteHost, RemotePort);
end;

procedure TTCP.Listen;
begin
  ControlInterface.Listen;
end;

procedure TTCP.Accept(requestID: Integer);
begin
  ControlInterface.Accept(requestID);
end;

procedure TTCP.SendData(data: OleVariant);
begin
  ControlInterface.SendData(data);
end;

procedure TTCP.GetData(var data: OleVariant; type_, maxLen: OleVariant);
begin
  ControlInterface.GetData(data, type_, maxLen);
end;

procedure TTCP.PeekData(var data: OleVariant; type_, maxLen: OleVariant);
begin
  ControlInterface.PeekData(data, type_, maxLen);
end;

procedure TTCP.Close;
begin
  ControlInterface.Close;
end;


procedure TUDP.InitControlData;
const
  CEventDispIDs: array[0..1] of DWORD = (
    $FFFFFDA0, $0000041B);
  CLicenseKey: array[0..36] of Word = (
    $0062, $0033, $0031, $0035, $0063, $0035, $0033, $0030, $002D, $0035,
    $0032, $0039, $0038, $002D, $0031, $0031, $0063, $0066, $002D, $0061,
    $0061, $0061, $0032, $002D, $0030, $0030, $0032, $0030, $0061, $0066,
    $0032, $0063, $0065, $0065, $0035, $0065, $0000);
  CControlData: TControlData = (
    ClassID: '{B7FC3587-8CE7-11CF-9754-00AA00C00908}';
    EventIID: '{B7FC3586-8CE7-11CF-9754-00AA00C00908}';
    EventCount: 2;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: @CLicenseKey;
    Flags: $00000000;
    Version: 300);
begin
  ControlData := @CControlData;
end;

procedure TUDP.InitControlInterface(const Obj: IUnknown);
begin
  FIntf := Obj as IUDP;
end;

procedure TUDP.AboutBox;
begin
  ControlInterface.AboutBox;
end;

procedure TUDP.SendData(data: OleVariant);
begin
  ControlInterface.SendData(data);
end;

procedure TUDP.GetData(var data: OleVariant; type_: OleVariant);
begin
  ControlInterface.GetData(data, type_);
end;

procedure Register;
begin
  RegisterComponents('Internet', [TFTP, THTML, THTTP, TNNTP, TPOP, TSMTP, { do not localize }
    TTCP, TUDP]);
end;

end.
