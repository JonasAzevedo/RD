program BankAccount_CGI;

{$APPTYPE CONSOLE}

uses
  WebBroker,
  CGIApp,
  WebModule_U in 'WebModule_U.pas' {CGIWebModule: TWebModule},
  BankAccountImpl in 'BankAccountImpl.pas',
  BankAccountIntf in 'BankAccountIntf.pas',
  AccountManagement in 'AccountManagement.pas',
  AccountBinding in 'AccountBinding.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCGIWebModule, CGIWebModule);
  Application.Run;
end.
