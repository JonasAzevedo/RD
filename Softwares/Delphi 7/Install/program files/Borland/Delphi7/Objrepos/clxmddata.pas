unit clxmddata;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs, DB,
  QGrids, QDBGrids, QDBCtrls, QExtCtrls;

type
  TMDDataForm = class(TForm)
    MasterPanel: TPanel;
    DetailPanel: TPanel;
    MasterNav: TDBNavigator;
    DetailNav: TDBNavigator;
    MasterGrid: TDBGrid;
    DetailGrid: TDBGrid;
    MasterSource: TDataSource;
    DetailSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDDataForm: TMDDataForm;

implementation

{$R *.xfm}

end.
