program SOAPDMServerWAD;

{$APPTYPE GUI}

uses
  Forms,
  SockApp,
  Form_U in 'Form_U.pas' {Form1},
  WebModule_U in 'WebModule_U.pas' {WebModule2: TWebModule},
  DataMod_U in 'DataMod_U.pas' {DataMod: TSoapDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TWebModule2, WebModule2);
  Application.Run;
end.
