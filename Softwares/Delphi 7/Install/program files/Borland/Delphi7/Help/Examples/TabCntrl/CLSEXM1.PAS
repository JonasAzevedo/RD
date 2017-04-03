unit clsexm1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ComCtrls, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    Table1: TTable;
    DataSource1: TDataSource;
    Table1EmpNo: TIntegerField;
    Table1LastName: TStringField;
    Table1FirstName: TStringField;
    Table1PhoneExt: TStringField;
    Table1HireDate: TDateTimeField;
    Table1Salary: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBText1: TDBText;
    Table1FullName: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure Table1CalcFields(DataSet: TDataSet);
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  TabControl1.Align := alClient;
  TabControl1.TabHeight := 30;
  with Table1 do
  begin
    Close;
    IndexName := 'ByName';
    Open;
    while not EOF do
    begin
      TabControl1.Tabs.Add(FieldByName('LASTNAME').AsString);
      Next;
    end;
    // Sync page and table.
    First;
  end;
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin
  with TabControl1 do
  begin
    if TabIndex <> -1 then
      if not Table1.Locate('LASTNAME', Tabs[TabIndex], []) then
        ShowMessage(Tabs[TabIndex -1] + ' not found.');
  end;
end;

procedure TForm1.Table1CalcFields(DataSet: TDataSet);
begin
  DataSet['FullName'] := DataSet['LASTNAME'] + ', ' + DataSet['FIRSTNAME'];
end;

end.
