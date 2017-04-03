program EchoService_CGI;

{$APPTYPE CONSOLE}

uses
  WebBroker,
  CGIApp,
  EchoServiceImpl in 'EchoServiceImpl.pas',
  EchoServiceIntf in 'EchoServiceIntf.pas',
  WebModule_U in 'WebModule_U.pas' {WebModule2: TWebModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TWebModule2, WebModule2);
  Application.Run;
end.
