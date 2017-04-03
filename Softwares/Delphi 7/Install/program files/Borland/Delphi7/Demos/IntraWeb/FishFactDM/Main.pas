unit Main;

interface

uses
  IWAppForm, Db, DBTables, Classes, Controls,
  IWExtCtrls, IWDBExtCtrls, IWDBStdCtrls, IWDBGrids, IWGrids,
  IWCompButton, IWCompEdit, IWCompLabel, IWControl, IWCompMemo;

type
  TformMain = class(TIWAppForm)
    IWDBImage1: TIWDBImage;
    IWDB3Navigator1: TIWDBNavigator;
    dgrdFish: TIWDBGrid;
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
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWLabel2: TIWLabel;
    IWDBFile1: TIWDBFile;
    procedure IWDBGrid1Columns0Click(ASender: TObject;
      const AValue: String);
    procedure IWDBGrid1Columns0TitleClick(Sender: TObject);
    procedure dgrdFishRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  protected
  public
  end;

implementation
{$R *.dfm}

uses
  FFData,
  Graphics,
  ServerController, SysUtils;

procedure TformMain.IWDBGrid1Columns0Click(ASender: TObject; const AValue: String);
begin
  FFDatamodule.GoFish(StrToInt(AValue));
end;

procedure TformMain.IWDBGrid1Columns0TitleClick(Sender: TObject);
begin
  FFDatamodule.SortBy(TIWDBGridColumn(Sender).DataField);
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
  end else begin
    if dgrdFish.RowIsCurrent then begin
      ACell.BGColor := clYellow;
    end;
  end;
end;

procedure TformMain.IWButton2Click(Sender: TObject);
begin
  FFDatamodule.MovePage(-dgrdFish.RowLimit);
end;

procedure TformMain.IWButton1Click(Sender: TObject);
begin
  FFDatamodule.MovePage(dgrdFish.RowLimit);
end;

end.
