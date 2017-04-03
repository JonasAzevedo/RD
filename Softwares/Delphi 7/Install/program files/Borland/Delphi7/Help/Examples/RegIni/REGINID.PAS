unit reginid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Registry;

type
  TRegIniForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CheckBox_Write: TCheckBox;
    RadioGroup_Write: TRadioGroup;
    Edit_Write: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    CheckBox_Read: TCheckBox;
    RadioGroup_Read: TRadioGroup;
    Edit_Read: TEdit;
    Memo_Read: TMemo;
    Button_Write: TButton;
    Button_Read: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button_WriteClick(Sender: TObject);
    procedure Button_ReadClick(Sender: TObject);
    procedure CheckBox_ReadClick(Sender: TObject);
    procedure RadioGroup_ReadClick(Sender: TObject);
  private
    { Private declarations }
    procedure Read_Registry;
    procedure Write_Registry;
  public
    { Public declarations }
    FIniFile: TRegIniFile;
  end;

var
  RegIniForm: TRegIniForm;

implementation

{$R *.DFM}

const
  SECTION = 'Sample';

procedure TRegIniForm.FormCreate(Sender: TObject);
begin
  FIniFile := TRegIniFile.Create('Sample Registry');
end;

procedure TRegIniForm.FormDestroy(Sender: TObject);
var
  Cleanup: TRegistry;
  key: string;
begin
  key := FIniFile.FileName;
  FIniFile.Free;

  // make sure we don't leave junk in the registry behind.
  Cleanup := TRegistry.Create;
  try
    Cleanup.DeleteKey(key);
  finally
    Cleanup.Free;
  end;
end;

procedure TRegIniForm.Write_Registry;
begin
  FIniFile.WriteBool(SECTION, 'BooleanTest', CheckBox_Write.Checked);
  FIniFile.WriteInteger(SECTION, 'IntegerTest', RadioGroup_Write.ItemIndex);
  FIniFile.WriteString(SECTION, 'StringTest', Edit_Write.Text);

  if not Button_Read.Enabled then Button_Read.Enabled := True;
end;

procedure TRegIniForm.Read_Registry;
begin
  CheckBox_Read.Checked := FIniFile.ReadBool(SECTION, 'BooleanTest', False);
  RadioGroup_Read.ItemIndex := FIniFile.ReadInteger(SECTION, 'IntegerTest', 0);
  Edit_Read.Text := FIniFile.ReadString(SECTION, 'StringTest', '');

  Memo_Read.Lines.Clear;
  FIniFile.ReadSectionValues(SECTION, Memo_Read.Lines);

  Button_Read.Enabled := False;
end;

procedure TRegIniForm.Button_WriteClick(Sender: TObject);
begin
  Write_Registry;
end;

procedure TRegIniForm.Button_ReadClick(Sender: TObject);
begin
  Read_Registry;
end;


procedure TRegIniForm.CheckBox_ReadClick(Sender: TObject);
begin
  Read_Registry;
end;

procedure TRegIniForm.RadioGroup_ReadClick(Sender: TObject);
begin
  Read_Registry;
end;

end.
