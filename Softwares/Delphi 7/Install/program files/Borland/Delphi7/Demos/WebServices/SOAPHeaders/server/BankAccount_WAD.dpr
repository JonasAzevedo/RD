program BankAccount_WAD;

{$APPTYPE GUI}

uses
  Forms,
  SockApp,
  WADForm_U in 'WADForm_U.pas' {WADForm},
  WADWebModule_U in 'WADWebModule_U.pas' {WADWebModule: TWebModule},
  BankAccountImpl in 'BankAccountImpl.pas',
  BankAccountIntf in 'BankAccountIntf.pas',
  AccountManagement in 'AccountManagement.pas',
  AccountBinding in 'AccountBinding.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TWADForm, WADForm);
  Application.CreateForm(TWADWebModule, WADWebModule);
  Application.Run;
end.
