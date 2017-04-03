unit clxokcancl1;

interface

uses SysUtils, Classes, QGraphics, QForms, 
  QButtons, QExtCtrls, QControls, QStdCtrls;

type
  TOKBottomDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OKBottomDlg: TOKBottomDlg;

implementation

{$R *.xfm}

end.
