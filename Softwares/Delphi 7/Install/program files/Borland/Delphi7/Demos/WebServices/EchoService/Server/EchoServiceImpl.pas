{ Invokable implementation File for TServiceX which implements IEchoService }

unit EchoServiceImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, EchoServiceIntf, SysUtils, Classes;

type
  { TServiceX }
  TEchoService = class(TInvokableClass, IEchoService)
  public
    { simple types }
    function echoString(const value: string): string; stdcall;
    function echoWString(const value: widestring): widestring; stdcall;
    function echoInt(const value: Integer): Integer; stdcall;
    function echoDouble(const value: Double): Double; stdcall;
    function echoBoolean(const value: boolean):boolean; stdcall;
    function echoTDateTime(const value:TDateTime):TDateTime; stdcall;
    { array types }
    function echoStringArray(const value: ArrayofString): ArrayofString; stdcall;
    function echoWStringArray(const value: ArrayofWString): ArrayofWString; stdcall;
    function echoIntArray(const value: ArrayofInt): ArrayofInt; stdcall;
    function echoDoubleArray(const value: ArrayofDouble): ArrayofDouble; stdcall;
    { structure and structure array }
    function echoSoapStruct(const value: SoapStruct): SoapStruct; stdcall;
    function echoSoapStructArray(const value: ArrayofSOAPStruct): ArrayofSOAPStruct; stdcall;
    { XS Types }
    function echoDate(const value: TXSDateTime): TXSDateTime; stdcall;
    function echoDecimal(const value: TXSDecimal): TXSDecimal; stdcall;
    { Attachments }
    function GetAttachment(const name: WideString):TSOAPAttachment; stdcall;
    function SendAttachment(const name: WideString;const Attachment:TSOAPAttachment):boolean; stdcall;
    function GetAttachmentList:ArrayofString; stdcall;
  end;

  function GetDataDir: string;

implementation

function GetDataDir: string;
begin
  Result := ExtractFilePath(ParamSTr(0))+'Data/';
end;
{ TServiceX }

function TEchoService.echoBoolean(const value: boolean): boolean;
begin
  Result:=value;
end;

function TEchoService.echoDate(const value: TXSDateTime): TXSDateTime;
begin
  Result := value;
end;

function TEchoService.echoDecimal(const value: TXSDecimal): TXSDecimal;
begin
  Result := value;
end;

function TEchoService.echoDouble(const value: Double): Double;
begin
  Result := value;
end;

function TEchoService.echoDoubleArray(const value: ArrayofDouble): ArrayofDouble;
begin
  Result := value;
end;

function TEchoService.GetAttachment(const name: WideString): TSOAPAttachment;
begin
  Result := TSoapAttachment.Create;
  Result.SetSourceFile(GetDataDir + name);

  { Send client content-type based on a few extensions }
  if SameText(ExtractFileExt(name), '.bmp') then
    Result.ContentType := 'image/bmp'
  else if SameText(ExtractFileExt(name), '.jpg') then
    Result.ContentType := 'image/jpg'
  else if SameText(ExtractFileExt(name), '.txt') then
    Result.ContentType := 'text/plain';
end;

function TEchoService.GetAttachmentList:ArrayofString;
var
  sr : TSearchRec;
  templist:TStrings;
  i: integer;
  Path : string;
begin
  templist := TStringlist.create;
  try
    Path := GetDataDir;
    if DirectoryExists(Path) then
    if FindFirst(Path + '*.*', faReadOnly+faHidden+faSysFile, sr) = 0 then
    begin
      templist.add(sr.name);
      while FindNext(sr) = 0 do
        templist.add(sr.name);
      FindClose(sr);
    end;
    SetLength(Result, templist.Count);
    for i:=0 to templist.Count-1 do
      Result[i]:=templist[i];
  finally
    tempList.Free;
  end;
end;

function TEchoService.echoInt(const value: Integer): Integer;
begin
  Result := value;
end;

function TEchoService.echoIntArray(const value: ArrayofInt): ArrayofInt;
begin
  Result := value;
end;

function TEchoService.SendAttachment(const name: WideString;
  const Attachment: TSOAPAttachment): Boolean;
begin
  Attachment.SaveToFile(GetDataDir + name);
  Result := True;
end;

function TEchoService.echoSoapStruct(const value: SoapStruct): SoapStruct;
begin
  Result := value;
end;

function TEchoService.echoSoapStructArray(const value: ArrayofSOAPStruct): ArrayofSOAPStruct;
begin
  Result := value;
end;

function TEchoService.echoString(const value: string): string;
begin
  Result := value;
end;

function TEchoService.echoStringArray(const value: ArrayofString): ArrayofString;
begin
  Result := value;
end;

function TEchoService.echoWString(const value: widestring): widestring;
begin
  Result := value;
end;

function TEchoService.echoWStringArray(const value: ArrayofWString): ArrayofWString;
begin
  Result := value;
end;

function TEchoService.echoTDateTime(const value: TDateTime): TDateTime;
begin
  Result := value;
end;


initialization
  { Invokable classes must be registered }
  InvRegistry.RegisterInvokableClass(TEchoService);

end.
