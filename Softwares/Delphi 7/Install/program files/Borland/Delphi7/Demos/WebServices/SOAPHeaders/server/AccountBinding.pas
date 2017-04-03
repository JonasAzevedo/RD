
{**********************************************************************************}
{                                                                                  }
{                                 XML Data Binding                                 }
{                                                                                  }
{**********************************************************************************}

unit AccountBinding;

interface

uses xmldom, XMLDoc, XMLIntf, SysUtils;

type

{ Forward Decls }

  IXMLAccountsType = interface;
  IXMLAccountType = interface;

{ IXMLAccountsType }

  IXMLAccountsType = interface(IXMLNodeCollection)
    ['{7AB7C91A-328C-479C-ADB7-53F6793EF781}']
    { Property Accessors }
    function Get_Account(Index: Integer): IXMLAccountType;
    { Methods & Properties }
    function Add: IXMLAccountType;
    function Insert(const Index: Integer): IXMLAccountType;
    property Account[Index: Integer]: IXMLAccountType read Get_Account; default;
  end;

{ IXMLAccountType }

  IXMLAccountType = interface(IXMLNode)
    ['{7643BE13-2E48-4B45-8345-09C204DA9F7C}']
    { Property Accessors }
    function Get_Account_number: Integer;
    function Get_Time_stamp: TDateTime;
    function Get_Username: WideString;
    function Get_Password: WideString;
    function Get_Amount: Currency;
    procedure Set_Account_number(Value: Integer);
    procedure Set_Time_stamp(Value: TDateTime);
    procedure Set_Username(Value: WideString);
    procedure Set_Password(Value: WideString);
    procedure Set_Amount(Value: Currency);
    { Methods & Properties }
    property Account_number: Integer read Get_Account_number write Set_Account_number;
    property Time_stamp: TDateTime read Get_Time_stamp write Set_Time_stamp;
    property Username: WideString read Get_Username write Set_Username;
    property Password: WideString read Get_Password write Set_Password;
    property Amount: Currency read Get_Amount write Set_Amount;
  end;

{ Forward Decls }

  TXMLAccountsType = class;
  TXMLAccountType = class;

{ TXMLAccountsType }

  TXMLAccountsType = class(TXMLNodeCollection, IXMLAccountsType)
  protected
    { IXMLAccountsType }
    function Get_Account(Index: Integer): IXMLAccountType;
    function Add: IXMLAccountType;
    function Insert(const Index: Integer): IXMLAccountType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAccountType }

  TXMLAccountType = class(TXMLNode, IXMLAccountType)
  protected
    { IXMLAccountType }
    function Get_Account_number: Integer;
    function Get_Time_stamp: TDateTime;
    function Get_Username: WideString;
    function Get_Password: WideString;
    function Get_Amount: Currency;
    procedure Set_Account_number(Value: Integer);
    procedure Set_Time_stamp(Value: TDateTime);
    procedure Set_Username(Value: WideString);
    procedure Set_Password(Value: WideString);
    procedure Set_Amount(Value: Currency);
  end;

{ Global Functions }

function Getaccounts(Doc: IXMLDocument): IXMLAccountsType;
function Loadaccounts(const FileName: WideString): IXMLAccountsType;
function Newaccounts: IXMLAccountsType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function Getaccounts(Doc: IXMLDocument): IXMLAccountsType;
begin
  Result := Doc.GetDocBinding('accounts', TXMLAccountsType, TargetNamespace) as IXMLAccountsType;
end;

function Loadaccounts(const FileName: WideString): IXMLAccountsType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('accounts', TXMLAccountsType, TargetNamespace) as IXMLAccountsType;
end;

function Newaccounts: IXMLAccountsType;
begin
  Result := NewXMLDocument.GetDocBinding('accounts', TXMLAccountsType, TargetNamespace) as IXMLAccountsType;
end;

{ TXMLAccountsType }

procedure TXMLAccountsType.AfterConstruction;
begin
  RegisterChildNode('account', TXMLAccountType);
  ItemTag := 'account';
  ItemInterface := IXMLAccountType;
  inherited;
end;

function TXMLAccountsType.Get_Account(Index: Integer): IXMLAccountType;
begin
  Result := List[Index] as IXMLAccountType;
end;

function TXMLAccountsType.Add: IXMLAccountType;
begin
  Result := AddItem(-1) as IXMLAccountType;
end;

function TXMLAccountsType.Insert(const Index: Integer): IXMLAccountType;
begin
  Result := AddItem(Index) as IXMLAccountType;
end;

{ TXMLAccountType }

function TXMLAccountType.Get_Account_number: Integer;
begin
  Result := ChildNodes['account_number'].NodeValue;
end;

procedure TXMLAccountType.Set_Account_number(Value: Integer);
begin
  ChildNodes['account_number'].NodeValue := Value;
end;

function TXMLAccountType.Get_Time_stamp: TDateTime;
begin
  Result := StrToDateTime(ChildNodes['time_stamp'].NodeValue);
end;

procedure TXMLAccountType.Set_Time_stamp(Value: TDateTime);
begin
  ChildNodes['time_stamp'].NodeValue := Value;
end;

function TXMLAccountType.Get_Username: WideString;
begin
  Result := ChildNodes['username'].Text;
end;

procedure TXMLAccountType.Set_Username(Value: WideString);
begin
  ChildNodes['username'].NodeValue := Value;
end;

function TXMLAccountType.Get_Password: WideString;
begin
  Result := ChildNodes['password'].Text;
end;

procedure TXMLAccountType.Set_Password(Value: WideString);
begin
  ChildNodes['password'].NodeValue := Value;
end;

function TXMLAccountType.Get_Amount: Currency;
begin
  Result := ChildNodes['amount'].NodeValue;
end;

procedure TXMLAccountType.Set_Amount(Value: Currency);
begin
  ChildNodes['amount'].NodeValue := Value;
end;

end.