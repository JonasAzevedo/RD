unit AccountManagement;

interface

uses AccountBinding,InvokeRegistry, SysUtils, BankAccountIntf, DateUtils;

  function  AuthenticateUser(const UserName, Password: String):Integer;
  function  CreateUser(const UserName, Password: String):Integer;
  function  ReadAccount(const H: authHeader):Currency;
  procedure WriteAccount(const H: authHeader; const amount:Currency);

implementation

{ Timeout currently hardcoded to 1 mins for illustrative purposes }
const TimeOut = 60;
const AccountFile = 'accounts.xml';

function GetAccounts: IXMLAccountsType;
begin
  try
    Result := LoadAccounts(AccountFile);
  except
    Result := NewAccounts;
  end;
end;

function AuthenticateUser(const UserName, Password: String):Integer;
var
  XMLData: IXMLAccountsType;
  i: Integer;
begin
  result := -1;
  XMLData := GetAccounts;
  for i := 0 to XMLData.count-1 do
    if XMLData.Account[i].Username = Username then
    begin
      if XMLData.Account[i].Password = Password then
      begin
        Result := XMLData.Account[i].Account_number;
        XMLData.Account[i].Time_stamp := Now;
        break;
      end
      else
        raise ERemotableException.Create('Password not valid');
    end;
    XMLData.OwnerDocument.SaveToFile(AccountFile);
end;

function CreateUser(const UserName, Password: String):Integer;
var
  XMLData: IXMLAccountsType;
  XMLAccount: IXMLAccountType;
begin
  XMLData := GetAccounts;
  XMLAccount := XMLData.Add;
  { Cheap autoinc }
  XMLAccount.Account_number := XMLData.count+1;
  XMLAccount.Username := UserName;
  XMLAccount.Password := Password;
  XMLAccount.Amount := 0;
  XMLAccount.Time_stamp := Now;
  XMLData.OwnerDocument.SaveToFile(AccountFile);
  Result := XMLAccount.Account_number;
end;

function ReadAccount(const H: AuthHeader):Currency;
var
  XMLData: IXMLAccountsType;
  i: Integer;
begin
  Result := -1;
  XMLData := GetAccounts;
  for i := 0 to XMLData.count-1 do
    if XMLData.Account[i].Account_number = H.AccNumber then
    begin
      { Check timeout }
      if WithinPastSeconds(Now, H.TimeStamp, TimeOut) then
      begin
        Result := XMLData.Account[i].Amount;
        XMLData.Account[i].Time_stamp := Now;
      end
      else
        raise ERemotableException.Create(Format('Session timed out (%d sec) User must re-login', [TimeOut]));
      break;
    end;
  XMLData.OwnerDocument.SaveToFile(AccountFile);
end;

procedure WriteAccount(const H: AuthHeader; const amount:Currency);
var
  XMLData: IXMLAccountsType;
  i: Integer;
begin
  XMLData := GetAccounts;
  for i:=0 to XMLData.count-1 do
    if XMLData.Account[i].Account_number = H.AccNumber then
    begin
      { Check timeout }
      if WithinPastSeconds(Now, H.TimeStamp, TimeOut) then
      begin
        XMLData.Account[i].Amount := Amount;
        XMLData.Account[i].Time_stamp := Now;
      end
      else
        raise ERemotableException.Create(Format('Session timed out (%d sec) User must re-login', [TimeOut]));
      break;
    end;
  XMLData.OwnerDocument.SaveToFile(AccountFile);
end;
end.
