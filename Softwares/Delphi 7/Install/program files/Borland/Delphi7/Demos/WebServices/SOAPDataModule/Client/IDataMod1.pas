// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:1024/SOAPDMServerWAD.Sample/wsdl/IDataMod
// Encoding : utf-8
// Version  : 1.0
// (7/1/2002 10:18:58 AM - 1.5)
// ************************************************************************ //

unit IDataMod1;

interface

uses InvokeRegistry, Types, XSBuiltIns, SOAPMidas;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"


  // ************************************************************************ //
  // Namespace : urn:DataMod_U-IDataMod
  // soapAction: urn:DataMod_U-IDataMod#CustomMethod
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : IDataModbinding
  // service   : IDataModservice
  // port      : IDataModPort
  // URL       : http://localhost:1024/SOAPDMServerWAD.Sample/soap/IDataMod
  // ************************************************************************ //
  IDataMod = interface(IAppServerSOAP)
  ['{233AD9DC-0F93-AEF6-E2A5-6BFEF55D1204}']
    function  CustomMethod: WideString; stdcall;
  end;



implementation
  uses SOAPHTTPClient;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IDataMod), 'urn:DataMod_U-IDataMod', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IDataMod), 'urn:DataMod_U-IDataMod#CustomMethod');

end. 