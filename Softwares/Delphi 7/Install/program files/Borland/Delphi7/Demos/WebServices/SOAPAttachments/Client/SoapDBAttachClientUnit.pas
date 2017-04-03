unit SoapDBAttachClientUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IDBAttachments1, InvokeRegistry, ExtCtrls, ComCtrls,
  Rio, SOAPHTTPClient;
type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Image1: TImage;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Connect: TButton;
    URLList: TComboBox;
    Label3: TLabel;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Memo2: TMemo;
    Splitter1: TSplitter;
    Memo3: TMemo;
    procedure ListBox1DblClick(Sender: TObject);
    procedure ConnectClick(Sender: TObject);
    procedure HTTPRIO1BeforeExecute(const MethodName: String;
      var SOAPRequest: WideString);
    procedure HTTPRIO1AfterExecute(const MethodName: String;
      SOAPResponse: TStream);
  private
    { Private declarations }
    FAttachService : IDBAttachments;
    procedure LoadInfo(Info: TSpeciesInfo);
    procedure LoadPicture(Picture: TSoapAttachment);
  public
    { Public declarations }
    function GetAttachService: IDBAttachments;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.GetAttachService: IDBAttachments;
begin
  if FAttachService = nil then
  begin
    FAttachService := GetIDBAttachments(False, URLList.Text);
    (FAttachService as IRIOAccess).RIO.OnBeforeExecute := HTTPRIO1BeforeExecute;
    (FAttachService as IRIOAccess).RIO.OnAfterExecute  := HTTPRIO1AfterExecute;
  end;
  Result := FAttachService;    
end;

procedure TForm1.LoadInfo(Info: TSpeciesInfo);
begin
  if not Assigned(Info) then exit;
  Label1.Caption := Info.CommonName;
  Label2.Caption := Info.SpeciesName;
  Label3.Caption := 'Length: ' + IntToStr(Info.Length) + ' inches';
  Memo1.ReadOnly := False;
  Memo1.Lines.Text := Info.MoreInfo;
  Memo1.ReadOnly := True;
end;
procedure TForm1.LoadPicture(Picture: TSoapAttachment);
var
  Src, Target: String;
begin
  if not Assigned(Picture) then exit;
  Src := Picture.CacheFile;
  Target := Src + '.bmp';
  if FileExists(Target) then
    DeleteFile(Target);
  if RenameFile(src, Target) then
  begin
    Image1.Picture.LoadFromFile(Target);
    RenameFile(Target, Src);
  end;
end;

function GetSelected(LB: TListBox): string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to LB.Items.Count -1 do
    if LB.Selected[I] then
    begin
      Result := LB.Items[I];
      break;
    end;
end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
var
  FishPict: TSoapAttachment;
  FishInfo: TSpeciesInfo;
  CommonName: string;
begin
  CommonName := GetSelected(ListBox1);
  if CommonName <> '' then
  begin
    FishInfo := Nil;
    FishPict := GetAttachService.GetSpeciesInfo(CommonName, FishInfo);
    try
      LoadPicture(FishPict);
      LoadInfo(FishInfo);
    finally
      if Assigned(FishPict) then FishPict.Free;
      if Assigned(FishInfo) then FishInfo.Free;
    end;
  end;
end;

procedure TForm1.ConnectClick(Sender: TObject);
var
  CommonNames: TStringArray;
  I: Integer;
begin
  CommonNames := GetAttachService.GetCommonNames;
  ListBox1.Items.Clear;
  for I := 0 to Length(CommonNames) -1 do
    ListBox1.Items.Add(CommonNames[I]);
end;

procedure TForm1.HTTPRIO1BeforeExecute(const MethodName: String;
  var SOAPRequest: WideString);
begin
  Memo2.Text := SOAPRequest;
end;

procedure TForm1.HTTPRIO1AfterExecute(const MethodName: String;
  SOAPResponse: TStream);
var
  StrStr: TStringStream;
begin
  if SOAPResponse.Size < $7fff then
  begin
    StrStr := TStringStream.Create('');
    try
      StrStr.CopyFrom(SOAPResponse, 0);
      Memo3.Text := StrStr.DataString;
    finally
      StrStr.Free;
    end;
  end else
    Memo3.Text := '';
end;

end.
