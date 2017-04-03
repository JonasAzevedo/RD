// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost/scripts/DBAttachServer.exe/wsdl/IDBAttachments
// Encoding : utf-8
// Version  : 1.0
// (8/1/02 4:14:16 PM - 1.33.2.5)
// ************************************************************************ //

unit IDBAttachments1;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:TSOAPAttachment - "http://www.borland.com/namespaces/Types"

  TSpeciesInfo         = class;                 { "urn:DBAttachmentsIntf" }

  TStringArray = array of WideString;           { "urn:DBAttachmentsIntf" }


  // ************************************************************************ //
  // Namespace : urn:DBAttachmentsIntf
  // ************************************************************************ //
  TSpeciesInfo = class(TRemotable)
  private
    FCategory: WideString;
    FCommonName: WideString;
    FSpeciesName: WideString;
    FLength: Integer;
    FMoreInfo: WideString;
  published
    property Category: WideString read FCategory write FCategory;
    property CommonName: WideString read FCommonName write FCommonName;
    property SpeciesName: WideString read FSpeciesName write FSpeciesName;
    property Length: Integer read FLength write FLength;
    property MoreInfo: WideString read FMoreInfo write FMoreInfo;
  end;


  // ************************************************************************ //
  // Namespace : urn:DBAttachmentsIntf-IDBAttachments
  // soapAction: urn:DBAttachmentsIntf-IDBAttachments#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IDBAttachmentsbinding
  // service   : IDBAttachmentsservice
  // port      : IDBAttachmentsPort
  // URL       : http://localhost/scripts/DBAttachServer.exe/soap/IDBAttachments
  // ************************************************************************ //
  IDBAttachments = interface(IInvokable)
  ['{5B017CB6-9680-24B7-AE9E-FBD08F169B16}']
    function  GetCommonNames: TStringArray; stdcall;
    function  GetSpeciesInfo(const CommonName: WideString; out SpeciesInfo: TSpeciesInfo): TSOAPAttachment; stdcall;
  end;

function GetIDBAttachments(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IDBAttachments;


implementation

function GetIDBAttachments(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IDBAttachments;
const
  defWSDL = 'http://localhost/scripts/DBAttachServer.exe/wsdl/IDBAttachments';
  defURL  = 'http://localhost/scripts/DBAttachServer.exe/soap/IDBAttachments';
  defSvc  = 'IDBAttachmentsservice';
  defPrt  = 'IDBAttachmentsPort';
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
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IDBAttachments);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(IDBAttachments), 'urn:DBAttachmentsIntf-IDBAttachments', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IDBAttachments), 'urn:DBAttachmentsIntf-IDBAttachments#%operationName%');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TStringArray), 'urn:DBAttachmentsIntf', 'TStringArray');
  RemClassRegistry.RegisterXSClass(TSpeciesInfo, 'urn:DBAttachmentsIntf', 'TSpeciesInfo');

end. 