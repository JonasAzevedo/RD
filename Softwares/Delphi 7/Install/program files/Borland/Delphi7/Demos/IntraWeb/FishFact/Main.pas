unit Main;

interface

uses
  IWAppForm, Db, DBTables, Classes, Controls, 
  IWExtCtrls, IWDBExtCtrls, IWDBStdCtrls, IWDBGrids, IWGrids,
  IWCompEdit, IWCompLabel, IWControl, IWCompMemo;

type
  TformMain = class(TIWAppForm)
    IWDBImage1: TIWDBImage;
    IWDB3Navigator1: TIWDBNavigator;
    dgrdFish: TIWDBGrid;
    qeryMain: TQuery;
    qeryMainSpeciesNo: TFloatField;
    qeryMainCategory: TStringField;
    qeryMainCommon_Name: TStringField;
    qeryMainSpeciesName: TStringField;
    qeryMainLengthcm: TFloatField;
    qeryMainLength_In: TFloatField;
    qeryMainNotes: TMemoField;
    qeryMainGraphic: TGraphicField;
    Session1: TSession;
    dsrcMain: TDataSource;
    Label1: TIWLabel;
    DBMemo1: TIWDBMemo;
    Label2: TIWLabel;
    DBEdit1: TIWDBEdit;
    Label3: TIWLabel;
    DBEdit2: TIWDBEdit;
    Label4: TIWLabel;
    DBEdit3: TIWDBEdit;
    Label5: TIWLabel;
    DBEdit4: TIWDBEdit;
    Label6: TIWLabel;
    DBEdit5: TIWDBEdit;
    IWDBEdit1: TIWDBEdit;
    IWLabel1: TIWLabel;
    IWDBFile1: TIWDBFile;
    IWLabel2: TIWLabel;
    procedure IWDBGrid1Columns0Click(ASender: TObject;
      const AValue: String);
    procedure IWDBGrid1Columns0TitleClick(Sender: TObject);
    procedure IWFormModuleBaseCreate(Sender: TObject);
    procedure dgrdFishRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
  protected
    procedure GoFish(const ASpeciesNo: integer);
  public
  end;

implementation
{$R *.dfm}

uses
  Graphics,
  SysUtils;

procedure TformMain.GoFish(const ASpeciesNo: integer);
begin
  qeryMain.Locate('Species No', ASpeciesNo, []);
end;

procedure TformMain.IWDBGrid1Columns0Click(ASender: TObject; const AValue: String);
begin
  GoFish(StrToInt(AValue));
end;

procedure TformMain.IWDBGrid1Columns0TitleClick(Sender: TObject);
var
  LSpeciesNo: integer;
begin
  LSpeciesNo := Trunc(qeryMainSpeciesNo.Value);
  qeryMain.Close; try
    qeryMain.SQL.Text := 'select * from biolife order by biolife."'
     + TIWDBGridColumn(Sender).DataField + '"';
  finally qeryMain.Open; end;
  GoFish(LSpeciesNo);
end;

procedure TformMain.IWFormModuleBaseCreate(Sender: TObject);
begin
  qeryMain.Open;
end;

procedure TformMain.dgrdFishRenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
begin
  // -1 is Footer Row
  if ARow = -1 then begin
    ACell.BGColor := clSilver;
    if AColumn = 0 then begin
      ACell.Font.Color := clRed;
      ACell.Text := IntToStr(dgrdFish.RecordCount) + ' fish found.';
    end;
  end else if dgrdFish.RowIsCurrent then begin
    ACell.BGColor := clYellow;
  end;
end;

end.
