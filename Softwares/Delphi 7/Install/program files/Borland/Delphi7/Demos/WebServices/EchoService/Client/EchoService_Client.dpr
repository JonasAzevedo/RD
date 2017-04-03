program EchoService_Client;

{%File '..\Readme.txt'}

uses
  Forms,
  ClientForm_U in 'ClientForm_U.pas' {ClientForm},
  IEchoService_U in 'IEchoService_U.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TClientForm, ClientForm);
  Application.Run;
end.
