unit WADForm_U;

interface

uses
  SysUtils, Classes, Forms;

type
  TWADForm = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WADForm: TWADForm;

implementation

uses SockApp;

{$R *.dfm}

initialization
  TWebAppSockObjectFactory.Create('BankAccountDemo')

end.
