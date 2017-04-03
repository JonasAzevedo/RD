program SoapDBAttachClient;

uses
  Forms,
  SoapDBAttachClientUnit in 'SoapDBAttachClientUnit.pas' {Form1},
  IDBAttachments1 in 'IDBAttachments1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
