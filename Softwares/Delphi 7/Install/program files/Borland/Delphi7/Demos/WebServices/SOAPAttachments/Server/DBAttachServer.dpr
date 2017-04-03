program DBAttachServer;

{$APPTYPE CONSOLE}

uses
  WebBroker,
  CGIApp,
  DBAttachUnit in 'DBAttachUnit.pas' {WebModule1: TWebModule},
  DBAttachmentsImpl in 'DBAttachmentsImpl.pas',
  DBAttachmentsIntf in 'DBAttachmentsIntf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TWebModule1, WebModule1);
  Application.Run;
end.
