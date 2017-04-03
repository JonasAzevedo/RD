program BankAccount_Client;

uses
  Forms,
  Form_U in 'Form_U.pas' {ClientForm},
  IBankAccount_U in 'IBankAccount_U.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Bank Account Client';
  Application.CreateForm(TClientForm, ClientForm);
  Application.Run;
end.
