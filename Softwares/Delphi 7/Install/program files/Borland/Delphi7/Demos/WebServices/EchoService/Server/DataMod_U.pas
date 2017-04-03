Unit DataMod_U;

interface

uses SysUtils, Classes, InvokeRegistry, Midas, SOAPMidas, SOAPDm, xmldom,
  Provider, Xmlxform, DB, DBClient;

type
  IDataMod = interface(IAppServer)
    ['{02BBF6C4-4215-4180-99A6-C09554CF78D8}']
  end;

  TDataMod = class(TSoapDataModule, IDataMod, IAppServer)
    XMLTransformProvider1: TXMLTransformProvider;
  private
  
  public
  
  end;

implementation

{$R *.DFM}

procedure TDataModCreateInstance(out obj: TObject);
begin
 obj := TDataMod.Create(nil);
end;

initialization
   InvRegistry.RegisterInvokableClass(TDataMod, TDataModCreateInstance);
   InvRegistry.RegisterInterface(TypeInfo(IDataMod));
end.
