unit DlgDelphiConfEntry;

interface

uses SysUtils, Classes, QGraphics, QForms, QControls, QStdCtrls, 
  QButtons, QExtCtrls, clxokcancl1;

type
  TDlgBuildEntry = class(TOKBottomDlg)
    HelpBtn: TButton;
    LabelModuleLocation: TLabel;
    EditModuleLocation: TEdit;
    EditExportedSymbol: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    EditContentType: TEdit;
    EditLocationEntry: TEdit;
    Label5: TLabel;
    EditModuleName: TEdit;
    Label3: TLabel;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgBuildEntry: TDlgBuildEntry;

implementation

{$R *.xfm}



end.
 
