program SOAPDMClient;

uses
  Forms,
  ClientForm_U in 'ClientForm_U.pas' {ClientForm},
  IDataMod1 in 'IDataMod1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TClientForm, ClientForm);
  Application.Run;
end.
