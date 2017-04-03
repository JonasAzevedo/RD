unit ClientForm_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Rio, SOAPHTTPClient, ExtCtrls, ValEdit, StdCtrls, ComCtrls,
  XSBuiltIns, ToolWin, ExtDlgs, InvokeRegistry, Grids,
  IEchoService_U;


type
  TClientForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Edit8: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Button6: TButton;
    Edit7: TEdit;
    Button9: TButton;
    Edit19: TEdit;
    Edit17: TEdit;
    Edit20: TEdit;
    Edit22: TEdit;
    Edit24: TEdit;
    Edit23: TEdit;
    Edit21: TEdit;
    Button10: TButton;
    Button11: TButton;
    TabSheet2: TTabSheet;
    Button7: TButton;
    Button3: TButton;
    ValueListEditor1: TValueListEditor;
    Button5: TButton;
    ValueListEditor2: TValueListEditor;
    ValueListEditor3: TValueListEditor;
    TabSheet4: TTabSheet;
    Button8: TButton;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit18: TEdit;
    Button14: TButton;
    HTTPRIO1: THTTPRIO;
    TabSheet5: TTabSheet;
    Image2: TImage;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    ListBox1: TListBox;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Label1: TLabel;
    Button19: TButton;
    Label3: TLabel;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Button20: TButton;
    Edit9: TEdit;
    Edit25: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button20Click(Sender: TObject);
  private
    { Private declarations }
  public
    function GetService: IEchoService;
  end;

var
  ClientForm: TClientForm;

implementation

{$R *.dfm}

const
  ConfigFile = 'config.txt';

procedure TClientForm.Button1Click(Sender: TObject);
begin
  Edit2.Text := GetService.echoString(Edit1.Text);
end;

procedure TClientForm.Button2Click(Sender: TObject);
begin
  Edit4.Text := GetService.echoWString(Edit3.Text);
end;

procedure TClientForm.Button4Click(Sender: TObject);
begin
  Edit6.Text := IntToStr(GetService.echoInt(StrToInt(Edit5.Text)));
end;

procedure TClientForm.Button6Click(Sender: TObject);
begin
  Edit8.Text := FloatToStr(GetService.echoDouble(StrToFloat(Edit7.Text)));
end;

procedure TClientForm.Button9Click(Sender: TObject);
var
  send, recv: TXSDateTime;
begin
  send := TXSDateTime.Create;
  try
    send.AsDateTime := StrToDate(Edit19.Text);
    recv:=GetService.echoDate(send);
    try
      Edit20.Text := DateTimeToStr(recv.AsDateTime);
    finally
      recv.Free;
    end;
  finally
    send.Free;
  end;
end;

procedure TClientForm.Button10Click(Sender: TObject);
var
  send, recv: TXSDecimal;
begin
  send := TXSDecimal.Create;
  try
    send.XSToNative(Edit21.Text);
    recv := GetService.echoDecimal(send);
    try
      Edit22.Text := recv.NativeToXS;
    finally
      recv.Free;
    end;
  finally
    send.Free;
  end;
end;

procedure TClientForm.Button11Click(Sender: TObject);
begin
  Edit24.Text := BoolToStr(GetService.echoBoolean(StrToBool(Edit23.Text)), true)
end;

procedure TClientForm.Button3Click(Sender: TObject);
var
  send, recv: ArrayofString;
  lcount, i: Integer;
begin
  lcount := ValueListEditor1.Strings.Count;
  SetLength(send, lcount);
  for i:=0 to lcount-1 do
    send[i] := ValueListEditor1.Cells[0, i+1];

  recv := GetService.echoStringArray(send);

  for i:=0 to length(recv)-1 do
    ValueListEditor1.Cells[1, i+1] := recv[i];
end;

procedure TClientForm.Button5Click(Sender: TObject);
var
  send, recv: ArrayofInt;
  lcount, i: Integer;
begin
  lcount:=ValueListEditor2.Strings.Count;
  SetLength(send,lcount);
  for i:=0 to lcount-1 do
    send[i] := StrToInt(ValueListEditor2.Cells[0, i+1]);

  recv := GetService.echoIntArray(send);

  for i:=0 to length(recv)-1 do
    ValueListEditor2.Cells[1, i+1] := IntToStr(recv[i]);
end;

procedure TClientForm.Button7Click(Sender: TObject);
var
  send, recv: ArrayofDouble;
  lcount, i: Integer;
begin
  lcount:=ValueListEditor3.Strings.Count;
  SetLength(send,lcount);
  for i:=0 to lcount-1 do
    send[i]:=StrToFloat(ValueListEditor3.Cells[0, i+1]);

  recv := GetService.echoDoubleArray(send);

  for i:=0 to length(recv)-1 do
    ValueListEditor3.Cells[1, i+1] := FloatToStr(recv[i]);
end;

procedure TClientForm.Button8Click(Sender: TObject);
var
  send, recv: SOAPStruct;
begin
  send:= SoapStruct.Create;
  try
    send.varString  := Edit11.Text;
    send.varWString := Edit13.Text;
    send.varInt     := StrToInt(Edit15.Text);
    send.varDouble  := StrToFloat(Edit17.Text);
    recv:= GetService.echoSoapStruct(send);
    try
      Edit12.Text := recv.varString;
      Edit14.Text := recv.varWString;
      Edit16.Text := IntToStr(recv.varInt);
      Edit18.Text := FloatToStr(recv.varDouble);
    finally
      recv.Free;
    end;
  finally
    send.Free;
  end;
end;

procedure TClientForm.Button14Click(Sender: TObject);
var
  send, recv:ArrayofSOAPStruct;
  I: Integer;
begin
  SetLength(send, 2);
  send[0]:= SoapStruct.Create;
  try
    send[0].varString  := Edit11.Text;
    send[0].varWString := Edit13.Text;
    send[0].varInt     := StrToInt(Edit15.Text);
    send[0].varDouble  := StrToFloat(Edit17.Text);
    send[1] := SoapStruct.Create;
    try
      send[1].varString  := send[0].varString;
      send[1].varWString := send[0].varWString;
      send[1].varInt     := send[0].varInt;
      send[1].varDouble  := send[0].varDouble;

      recv:= GetService.echoSoapStructArray(send);
      try
        Edit12.Text := recv[1].varString;
        Edit14.Text := recv[1].varWString;
        Edit16.Text := IntToStr(recv[1].varInt);
        Edit18.Text := FloatToStr(recv[1].varDouble);
      finally
        for I := 0 to Length(recv)-1 do
          recv[I].Free;
      end;
    finally
      send[1].Free;
    end;
  finally
    send[0].Free;
  end;
end;

procedure TClientForm.Button18Click(Sender: TObject);
var
  recv: ArrayofString;
  i: Integer;
begin
  ListBox1.Clear;
  recv :=GetService.getAttachmentList();
  for i:=0 to length(recv)-1 do
    ListBox1.Items.Add(recv[i]);
  Button16.Enabled := True;
end;

procedure TClientForm.Button16Click(Sender: TObject);
var
  data: TSOAPAttachment;
  FileName : string;
begin
  if ListBox1.ItemIndex<>-1 then
  begin
    FileName := ListBox1.Items[listbox1.ItemIndex];
    data := GetService.GetAttachment(FileName);
    try
      if SameText(data.ContentType, 'image/bmp') then
      begin
        if SavePictureDialog1.Execute then
        begin
          data.SaveToFile(SavePictureDialog1.FileName);
          Image2.Picture.LoadFromFile(SavePictureDialog1.FileName);
        end;
      end;
    finally
      data.Free;
    end;
  end else
    ShowMessage('You must select a file to download!');
end;

procedure TClientForm.Button17Click(Sender: TObject);
var
  data: TSOAPAttachment;
begin
  data := TSOAPAttachment.Create;
  try
    if OpenPictureDialog1.Execute then
    begin
      data.SetSourceFile(OpenPictureDialog1.FileName);
      if GetService.SendAttachment(
          ExtractFileName(OpenPictureDialog1.FileName), data) then
            ShowMessage('Attachment Sent');
    end;
  finally
    data.Free;
  end;
end;

procedure TClientForm.Button19Click(Sender: TObject);
begin
  { Test the service }
  GetService.echoBoolean(True);
  { Add the server to the combo if it's not there yet }
  if ComboBox1.Items.IndexOf(ComboBox1.Text) = -1 then
    ComboBox1.Items.Add(ComboBox1.Text);
  Caption := ComboBox1.Text;
end;

procedure TClientForm.FormCreate(Sender: TObject);
begin
  try
    if FileExists(ConfigFile) then
      ComboBox1.Items.LoadFromFile(ConfigFile);
  except
    { Ignore failures }
  end;
end;

procedure TClientForm.FormDestroy(Sender: TObject);
begin
  try
    ComboBox1.Items.SaveToFile(ConfigFile);
  except
    { Ignore failures }
  end;
end;

procedure TClientForm.Button20Click(Sender: TObject);
var
  send, recv: TDateTime;
begin
  send := StrToDate(Edit9.Text);
  recv := GetService.echoTDateTime(send);
  Edit25.Text:=DateTimeToStr(recv);
end;

function TClientForm.GetService: IEchoService;
begin
  HTTPRIO1.URL := ComboBox1.Text;
  Result := HTTPRIO1 as IEchoService;
end;

end.
