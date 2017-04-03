// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://myServer/scripts/EchoService_CGI.exe/wsdl/IEchoService
// Encoding : utf-8
// Codegen  : [wfDebug,wfVerbose,wfSkipHttpBindings,wfMapArraysToClasses,wfSkipUnusedTypes,wfUseSerializerClassForAttrs]
// Version  : 1.0
// (06/25/2002 10:44:26 AM - 1.5)
// ************************************************************************ //

unit IEchoService_U;

interface

uses InvokeRegistry, Types, XSBuiltIns, Classes;

type

  SoapStruct           = class;



  // ************************************************************************ //
  // Namespace : urn:Classes
  // ************************************************************************ //
  ArrayofString = array of WideString;
  ArrayofWString = array of WideString;
  ArrayofInt = array of Integer;
  ArrayofDouble = array of Double;


  // ************************************************************************ //
  // Namespace : urn:EchoServiceIntf
  // ************************************************************************ //
  SoapStruct = class(TRemotable)
  private
    FvarString: WideString;
    FvarWString: WideString;
    FvarInt: Integer;
    FvarDouble: Double;
  published
    property varString: WideString read FvarString write FvarString;
    property varWString: WideString read FvarWString write FvarWString;
    property varInt: Integer read FvarInt write FvarInt;
    property varDouble: Double read FvarDouble write FvarDouble;
  end;

  ArrayofSOAPStruct = array of SoapStruct;

  // ************************************************************************ //
  // Namespace : urn:EchoServiceIntf-IEchoService
  // soapAction: urn:EchoServiceIntf-IEchoService#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IEchoServicebinding
  // service   : IEchoServiceservice
  // port      : IEchoServicePort
  // URL       : http://myServer/scripts/EchoService_CGI.exe/soap/IEchoService
  // ************************************************************************ //
  IEchoService = interface(IInvokable)
  ['{89DF58FA-5E82-EF1B-6954-FC4177FCF692}']
    function  echoString(const value: WideString): WideString; stdcall;
    function  echoWString(const value: WideString): WideString; stdcall;
    function  echoInt(const value: Integer): Integer; stdcall;
    function  echoDouble(const value: Double): Double; stdcall;
    function  echoBoolean(const value: Boolean): Boolean; stdcall;
    function  echoTDateTime(const value: TDateTime): TDateTime; stdcall;
    function  echoTStringList(const value: TStringList): TStringList; stdcall;
    function  echoStringArray(const value: ArrayofString): ArrayofString; stdcall;
    function  echoWStringArray(const value: ArrayofWString): ArrayofWString; stdcall;
    function  echoIntArray(const value: ArrayofInt): ArrayofInt; stdcall;
    function  echoDoubleArray(const value: ArrayofDouble): ArrayofDouble; stdcall;
    function  echoSoapStruct(const value: SoapStruct): SoapStruct; stdcall;
    function  echoSoapStructArray(const value: ArrayofSOAPStruct): ArrayofSOAPStruct; stdcall;
    function  echoDate(const value: TXSDateTime): TXSDateTime; stdcall;
    function  echoDecimal(const value: TXSDecimal): TXSDecimal; stdcall;
    function  GetAttachment(const name: WideString): TSOAPAttachment; stdcall;
    function  SendAttachment(const name: WideString; const Attachment: TSOAPAttachment): Boolean; stdcall;
    function  GetAttachmentList(): ArrayofString; stdcall;
  end;

function GetIEchoService(UseWSDL: Boolean=System.False; Addr: string=''): IEchoService;


implementation
  uses SOAPHTTPClient;

function GetIEchoService(UseWSDL: Boolean; Addr: string): IEchoService;
const
  defWSDL = 'http://myServer/scripts/EchoService_CGI.exe/wsdl/IEchoService';
  defURL  = 'http://myServer/scripts/EchoService_CGI.exe/soap/IEchoService';
  defSvc  = 'IEchoServiceservice';
  defPrt  = 'IEchoServicePort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  RIO := THTTPRIO.Create(nil);
  try
    Result := (RIO as IEchoService);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if Result = nil then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(IEchoService), 'urn:EchoServiceIntf-IEchoService', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IEchoService), 'urn:EchoServiceIntf-IEchoService#%operationName%');
  RemClassRegistry.RegisterXSClass(TStringList, 'urn:Classes', 'TStringList');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayofString), 'urn:EchoServiceIntf', 'ArrayofString');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayofWString), 'urn:EchoServiceIntf', 'ArrayofWString');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayofInt), 'urn:EchoServiceIntf', 'ArrayofInt');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayofDouble), 'urn:EchoServiceIntf', 'ArrayofDouble');
  RemClassRegistry.RegisterXSClass(SoapStruct, 'urn:EchoServiceIntf', 'SoapStruct');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayofSOAPStruct), 'urn:EchoServiceIntf', 'ArrayofSOAPStruct');

end.