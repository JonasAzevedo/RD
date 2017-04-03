program SOAPDMServerCGI;

{$APPTYPE CONSOLE}

uses
  WebBroker,
  CGIApp,
  DataMod_U in 'DataMod_U.pas' {DataMod: TSoapDataModule},
  WebModule_U in 'WebModule_U.pas' {WebModule2: TWebModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TWebModule2, WebModule2);
  Application.Run;
end.
