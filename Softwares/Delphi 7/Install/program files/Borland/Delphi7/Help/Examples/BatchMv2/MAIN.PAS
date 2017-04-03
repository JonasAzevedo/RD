unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, DBTables, ComCtrls;

type
  TFormMain = class(TForm)
    BatchMove1: TBatchMove;
    tblSource: TTable;
    tblDest: TTable;
    Bevel1: TBevel ;
    Label6: TLabel;
    cmbxDestAlias: TComboBox;
    Label7: TLabel;
    cmbxDestTable: TComboBox;
    Label8: TLabel;
    cmbxDestIndex: TComboBox;
    Bevel2: TBevel;
    cmbxSourceAlias: TComboBox;
    cmbxSourceTable: TComboBox;
    cmbxSourceIndex: TComboBox;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    cmbxMode: TComboBox;
    Button1: TButton;
    Bevel3: TBevel;
    chkbxAbortKey: TCheckBox;
    chkbxAbortProblem: TCheckBox;
    chkbxTrans: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    edtChangedTable: TEdit;
    Label13: TLabel;
    edtKeyVioTbl: TEdit;
    Label14: TLabel;
    edtProbTbl: TEdit;
    Label11: TLabel;
    edtRecCount: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure cmbxSourceAliasChange(Sender: TObject);
    procedure cmbxDestAliasChange(Sender: TObject);
    procedure cmbxSourceTableChange(Sender: TObject);
    procedure cmbxDestTableChange(Sender: TObject);
    procedure cmbxSourceIndexChange(Sender: TObject);
    procedure cmbxDestIndexChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure chkbxAbortKeyClick(Sender: TObject);
    procedure chkbxAbortProblemClick(Sender: TObject);
    procedure chkbxTransClick(Sender: TObject);
    procedure cmbxModeChange(Sender: TObject);
    procedure edtRecCountKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function IsStringsEqual(const s1,s2 : string): boolean;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.DFM}

resourcestring
  sIncomplete = 'Incomplete input.';
  sCompleted = 'BatchMove complete. Number of records applied: ';

procedure TFormMain.FormCreate(Sender: TObject); // Get alias names
begin
  if Session.Active = false then
    Session.Open;
  Session.GetAliasNames(CmbxSourceAlias.Items);
  cmbxDestAlias.Items := cmbxSourceAlias.Items;
end;

procedure TFormMain.cmbxSourceAliasChange(Sender: TObject);
begin
  if cmbxSourceAlias.ItemIndex <> -1 then
  begin
     tblSource.DatabaseName := cmbxSourceAlias.Items[cmbxSourceAlias.ItemIndex];
     Session.GetTableNames(tblSource.DatabaseName,'',true,false,cmbxSourceTable.Items);
  end
  else
  begin
    tblSource.DatabaseName := '';
    cmbxSourceTable.Items.Clear;
  end;
end;

procedure TFormMain.cmbxDestAliasChange(Sender: TObject);
begin
  if cmbxDestAlias.ItemIndex <> -1 then
  begin
     tblDest.DatabaseName := cmbxDestAlias.Items[cmbxDestAlias.ItemIndex];
     Session.GetTableNames(tblDest.DatabaseName,'',true,false,cmbxDestTable.Items);
  end
  else
  begin
    tblDest.DatabaseName := '';
    cmbxDestTable.Items.Clear;
  end;
end;

procedure TFormMain.cmbxSourceTableChange(Sender: TObject);
begin
  if cmbxSourceTable.ItemIndex <> -1 then
  begin
     tblSource.TableName := cmbxSourceTable.Items[cmbxSourceTable.ItemIndex];
     tblSource.GetIndexNames(cmbxSourceIndex.Items);
  end
  else
  begin
    tblSource.TableName := '';
    cmbxSourceIndex.Items.Clear;
  end;

end;

procedure TFormMain.cmbxDestTableChange(Sender: TObject);
begin
  if cmbxDestTable.ItemIndex <> -1 then
  begin
     tblDest.TableName := cmbxDestTable.Items[cmbxDestTable.ItemIndex];
     tblDest.GetIndexNames(cmbxDestIndex.Items);
  end
  else
  begin
    tblDest.TableName := '';
    cmbxDestIndex.Items.Clear;
  end;
end;

procedure TFormMain.cmbxSourceIndexChange(Sender: TObject);
begin
  if cmbxSourceIndex.ItemIndex <> -1 then
  begin
    tblSource.IndexName := cmbxSourceIndex.Items[cmbxSourceIndex.ItemIndex];
  end
  else
  begin
     tblSource.IndexName := '';
  end;
end;

procedure TFormMain.cmbxDestIndexChange(Sender: TObject);
begin
  if cmbxDestIndex.ItemIndex <> -1 then
  begin
    tblDest.IndexName := cmbxDestIndex.Items[cmbxDestIndex.ItemIndex];
  end
  else
  begin
     tblDest.IndexName := '';
  end;

end;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  if tblDest.TableName = '' then
    tblDest.TableName := cmbxDestTable.Text;
  if ((tblSource.DatabaseName <> '') and // test for enough input
     (tblSource.TableName <> '') and
     (tblDest.DatabaseName <> '') and
     (tblDest.TableName <> '') and
     (cmbxMode.items[cmbxMode.ItemIndex] <> '')) then
  begin
    BatchMove1.ChangedTableName := edtChangedTable.Text;  // more batchmove setup
    BatchMove1.KeyViolTableName := edtKeyVioTbl.Text;
    BatchMove1.ProblemTableName := edtProbTbl.Text;
    BatchMove1.RecordCount := StrToInt(edtRecCount.Text);
  end
  else
  begin
    MessageDlg(sIncomplete, mtError, [mbOK], 0);
    exit;
  end;
  BatchMove1.Execute;  // run the batchmove
  MessageDlg(sCompleted + IntToStr(BatchMove1.MovedCount),mtInformation,[mbOK],0);
end;

procedure TFormMain.chkbxAbortKeyClick(Sender: TObject);
begin
  BatchMove1.AbortOnKeyViol := chkbxAbortKey.Checked;
end;

procedure TFormMain.chkbxAbortProblemClick(Sender: TObject);
begin
  BatchMove1.AbortOnProblem := chkbxAbortProblem.Checked;
end;

procedure TFormMain.chkbxTransClick(Sender: TObject);
begin
  BatchMove1.Transliterate := chkbxTrans.Checked;
end;

function TFormMain.IsStringsEqual(const s1,s2 : string): boolean;
begin
   Result := UpperCase(s1) = UpperCase(s2);
end;


// set the batch mode
procedure TFormMain.cmbxModeChange(Sender: TObject);
begin
  if cmbxMode.ItemIndex <> -1 then
  begin
    if IsStringsEqual(cmbxMode.Items[cmbxMode.ItemIndex],'Append') then
      BatchMove1.Mode := batAppend
    else if IsStringsEqual(cmbxMode.Items[cmbxMode.ItemIndex],'Copy') then
      BatchMove1.Mode := batCopy
    else if IsStringsEqual(cmbxMode.Items[cmbxMode.ItemIndex],'Append Update') then
      BatchMove1.Mode := batAppendUpdate
    else if IsStringsEqual(cmbxMode.Items[cmbxMode.ItemIndex],'Delete') then
      BatchMove1.Mode := batDelete
    else if IsStringsEqual(cmbxMode.Items[cmbxMode.ItemIndex],'Update') then
      BatchMove1.Mode := batUpdate
    else
      MessageDlg('Batch mode not found',mtError,[mbOK],0);
  end;
end;


// only allow numbers to be typed in
procedure TFormMain.edtRecCountKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> VK_BACK)) then
    key := #0;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  cmbxSourceAlias.SetFocus;
end;

end.
