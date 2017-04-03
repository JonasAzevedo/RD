unit Form_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Rio, SOAPHTTPClient, InvokeRegistry, IBankAccount_U,
  ExtCtrls;

type
  TClientForm = class(TForm)
    LoginGroupBox: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    PasswordEdit: TEdit;
    UserEdit: TEdit;
    URLList: TComboBox;
    LoginButton: TButton;
    AccountGroupBox: TGroupBox;
    BalanceEdit: TEdit;
    BalanceButton: TButton;
    Label1: TLabel;
    PageControl2: TPageControl;
    DepositSheet: TTabSheet;
    Label6: TLabel;
    DepositAmount: TEdit;
    DepositButton: TButton;
    WithdrawSheet: TTabSheet;
    Label9: TLabel;
    WithdrawAmount: TEdit;
    WithdrawButton: TButton;
    HTTPRIO1: THTTPRIO;
    PageCtrl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    HeaderChechBox: TCheckBox;
    LogoutButton: TButton;
    ButtonHeader: TButton;
    Panel1: TPanel;
    Memo1: TMemo;
    Splitter1: TSplitter;
    Memo2: TMemo;
    procedure LoginButtonClick(Sender: TObject);
    procedure BalanceButtonClick(Sender: TObject);
    procedure HTTPRIO1BeforeExecute(const MethodName: String;
      var SOAPRequest: WideString);
    procedure DepositButtonClick(Sender: TObject);
    procedure WithdrawButtonClick(Sender: TObject);
    procedure ButtonHeaderClick(Sender: TObject);
    procedure LogoutButtonClick(Sender: TObject);
    procedure HTTPRIO1AfterExecute(const MethodName: String;
      SOAPResponse: TStream);
  private
    function UseHeader: Boolean;
  private
    { Private declarations }
    FAuthKey: Integer;
    FTimeStamp: TDateTime;
    procedure CheckCreateUser(const UserName,Password:string; const svc:IBankAccount);
  public
    { Public declarations }
    function GetService: IBankAccount;
  end;

var
  ClientForm: TClientForm;

implementation

uses XSBuiltIns;

{$R *.dfm}

function TClientForm.GetService: IBankAccount;
begin
  HTTPRIO1.URL := URLList.Text;
  Result := HTTPRIO1 as IBankAccount;
end;

procedure TClientForm.CheckCreateUser(const UserName, Password: string; const svc:IBankAccount);
begin
  if MessageDlg('User not found, would you like to create a new account?',
                 mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    if svc.createaccount(UserName, Password) then
      Showmessage('User Account Created');
  end;
end;

procedure TClientForm.LoginButtonClick(Sender: TObject);
var
  H: AuthHeader;
  Headers: ISOAPHeaders;
  svc: IBankAccount;
begin
  svc := GetService;

  { Call the login method, if the User doesn't exist ask if we should create one }
  if not(svc.login(UserEdit.Text, PasswordEdit.Text)) then
     CheckCreateUser(UserEdit.Text, PasswordEdit.Text, svc);

  Headers := svc as ISoapHeaders;
  { Get the header from the incoming message }
  Headers.Get(AuthHeader, TSoapHeader(H));
  try
    if H <> nil then
    begin
      FAuthKey := H.AccNumber;
      FTimeStamp := H.TimeStamp.AsDateTime;
      { Refresh the balance edit }
      BalanceButton.Click;
    end
    else
      ShowMessage('No authentication header received from server');
  finally
    H.Free;
  end;
end;

procedure TClientForm.BalanceButtonClick(Sender: TObject);
var
  H: AuthHeader;
  svc: IBankAccount;
begin
  svc := GetService;
  H := AuthHeader.Create;
  try
    H.AccNumber := FAuthKey;
    H.TimeStamp := DateTimeToXSDateTime(FTimeStamp, True);
    { Add the Header to the outgoing message }
    if UseHeader then
      (svc as ISOAPHeaders).send(H);
    { Call the getBalance method }
    BalanceEdit.Text := CurrToStrF(svc.getBalance, ffCurrency, 2);
  finally
    H.Free
  end;
end;

procedure TClientForm.DepositButtonClick(Sender: TObject);
var
  H: AuthHeader;
  svc: IBankAccount;
begin
  svc := GetService;
  H := AuthHeader.Create;
  try
    H.AccNumber := FAuthKey;
    H.TimeStamp := DateTimeToXSDateTime(FTimeStamp, True);
    if UseHeader then
      (svc as ISOAPHeaders).send(H);
    { Call the deposit method }
    BalanceEdit.Text := CurrToStrF(svc.deposit(StrToFloat(DepositAmount.Text)), ffCurrency,2);
  finally
    H.Free
  end;
end;

procedure TClientForm.WithdrawButtonClick(Sender: TObject);
var
  H: AuthHeader;
  svc: IBankAccount;
begin
  svc := GetService;
  H := AuthHeader.Create;
  try
    H.AccNumber := FAuthKey;
    H.TimeStamp := DateTimeToXSDateTime(FTimeStamp, True);
    if UseHeader then
      (svc as ISOAPHeaders).send(H);
    { Call the withdraw method }
    BalanceEdit.Text:=CurrToStrF(svc.withdraw(StrToFloat(WithdrawAmount.Text)), ffCurrency, 2);
  finally
    H.Free
  end;
end;

procedure TClientForm.ButtonHeaderClick(Sender: TObject);
begin
  if FAuthKey <> 0 then
    ShowMessage('Authentication Header ' + sLineBreak + sLineBreak +
                '   -Account Number: '   + InttoStr(FAuthKey) + sLineBreak +
                '   -TimeStamp: '        + DateTimeToStr(FTimeStamp))
  else
    ShowMessage('Authentication Header empty!');
end;

procedure TClientForm.LogoutButtonClick(Sender: TObject);
var
  H: AuthHeader;
  svc: IBankAccount;
begin
  svc := GetService;

  H := AuthHeader.Create;
  try
    H.AccNumber := FAuthKey;
    H.TimeStamp := DateTimeToXSDateTime(FTimeStamp, True);
    if UseHeader then
     (svc as ISOAPHeaders).send(H);
    if svc.logout then
    begin
      { Clear the local header data }
      FAuthKey := 0;
      FTimeStamp := 0;
    end;
  finally
    H.Free
  end;
end;

function TClientForm.UseHeader: Boolean;
begin
  Result := HeaderChechBox.Checked and (FAuthKey <> 0);
end;

procedure TClientForm.HTTPRIO1BeforeExecute(const MethodName: String;
  var SOAPRequest: WideString);
begin
  Memo1.Lines.Add(SOAPRequest);
end;

procedure TClientForm.HTTPRIO1AfterExecute(const MethodName: String;
  SOAPResponse: TStream);
var
  Temp: TStringStream;
begin
  Temp := TStringStream.Create('');
  try
    Temp.CopyFrom(SOAPResponse, 0);
    Memo2.Text := Temp.DataString;
  finally
    Temp.Free;
  end;
end;

end.
