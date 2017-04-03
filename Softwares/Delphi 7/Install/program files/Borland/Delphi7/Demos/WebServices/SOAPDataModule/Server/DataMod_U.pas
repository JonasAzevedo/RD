Unit DataMod_U;

interface

uses SysUtils, Classes, InvokeRegistry, Midas, SOAPMidas, SOAPDm, xmldom,
  Provider, Xmlxform, DB, DBClient;

type
  IDataMod = interface(IAppServerSOAP)
    ['{02BBF6C4-4215-4180-99A6-C09554CF78D8}']
    function CustomMethod: string; stdcall;
  end;

  TDataMod = class(TSoapDataModule, IDataMod, IAppServerSOAP)
    XMLTransformProvider1: TXMLTransformProvider;
    procedure SoapDataModuleCreate(Sender: TObject);
  private

  public
    { IDataMod }
    function CustomMethod: string; stdcall;
  end;

implementation

{$R *.DFM}

uses Forms;

procedure TDataModCreateInstance(out obj: TObject);
begin
 obj := TDataMod.Create(nil);
end;

function TDataMod.CustomMethod: string;
begin
  Result := 'DataModule Customd Method - Time is :' + DateTimeToStr(Now);
end;

procedure TDataMod.SoapDataModuleCreate(Sender: TObject);
var
  DataPath: string;
begin
  DataPath := ExtractFilePath(Application.ExeName)+ '..\Data\';
  XMLTransformProvider1.XMLDataFile := DataPath + 'XML_Document.xml';
  XMLTransformProvider1.TransformRead.TransformationFile := DataPath + 'ToDp.xtr';
  XMLTransformProvider1.TransformWrite.TransformationFile := DataPath + 'ToXml.xtr';
end;

initialization
   InvRegistry.RegisterInvokableClass(TDataMod, TDataModCreateInstance);
   InvRegistry.RegisterInterface(TypeInfo(IDataMod));
end.
