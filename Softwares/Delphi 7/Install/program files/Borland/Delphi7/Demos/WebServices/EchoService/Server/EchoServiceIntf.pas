{ Invokable interface IServiceX }

unit EchoServiceIntf;

interface

uses InvokeRegistry, Types, XSBuiltIns, Classes;

type
  SoapStruct = class(TRemotable)
  private
    FvarString: String;
    FvarWString: WideString;
    FvarInt: Integer;
    FvarDouble: Double;
  published
    property varString: String read FvarString write FvarString;
    property varWString: WideString read FvarWString write FvarWString;
    property varInt: Integer read FvarInt write FvarInt;
    property varDouble: Double read FvarDouble write FvarDouble;
  end;

  ArrayofString     = array of string;
  ArrayofWString    = array of Widestring;
  ArrayofInt        = array of integer;
  ArrayofDouble     = array of double;

  ArrayofSOAPStruct = array of SOAPStruct;


  { Invokable interfaces must derive from IInvokable }
  IEchoService = interface(IInvokable)
  ['{EE714217-1763-4EFF-93D7-85C6D5E8180C}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    //simple types
    function echoString(const value: string): string; stdcall;
    function echoWString(const value: widestring): widestring; stdcall;
    function echoInt(const value: Integer): Integer; stdcall;
    function echoDouble(const value: Double): Double; stdcall;
    function echoBoolean(const value: boolean):boolean; stdcall;
    function echoTDateTime(const value:TDateTime):TDateTime; stdcall;
    //array types
    function echoStringArray(const value: ArrayofString): ArrayofString; stdcall;
    function echoWStringArray(const value: ArrayofWString): ArrayofWString; stdcall;
    function echoIntArray(const value: ArrayofInt): ArrayofInt; stdcall;
    function echoDoubleArray(const value: ArrayofDouble): ArrayofDouble; stdcall;
    //structure and structure array
    function echoSoapStruct(const value: SoapStruct): SoapStruct; stdcall;
    function echoSoapStructArray(const value: ArrayofSOAPStruct): ArrayofSOAPStruct; stdcall;
    //XS Types
    function echoDate(const value: TXSDateTime): TXSDateTime; stdcall;
    function echoDecimal(const value: TXSDecimal): TXSDecimal; stdcall;
    //Attachments
    function GetAttachment(const name: WideString):TSOAPAttachment; stdcall;
    function SendAttachment(const name: WideString;const Attachment:TSOAPAttachment):boolean; stdcall;
    function GetAttachmentList:ArrayofString; stdcall;

  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(IEchoService));

end.
