unit clxpassword;

interface

uses SysUtils, Classes, QGraphics, QForms, QControls, QStdCtrls, 
  QButtons;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

{$R *.xfm}

end.
 
