unit menuform;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls;

type
  TForm1 = class(TForm)
    DisplayPanel: TPanel;
    DemoShape: TShape;
    MainMenu: TMainMenu;
    Application1: TMenuItem;
    Exit1: TMenuItem;
    Color1: TMenuItem;
    Outline1: TMenuItem;
    Randomize1: TMenuItem;
    Select1: TMenuItem;
    Inside1: TMenuItem;
    Randomize2: TMenuItem;
    Select2: TMenuItem;
    Shape1: TMenuItem;
    Circle1: TMenuItem;
    Ellipse1: TMenuItem;
    Rectangle1: TMenuItem;
    Square1: TMenuItem;
    Misc1: TMenuItem;
    ThickOutline1: TMenuItem;
    RoundedShape1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    SolidColorDialog: TColorDialog;
    AnyColorDialog: TColorDialog;
    PopupMenu: TPopupMenu;
    Random1: TMenuItem;
    RandomizeColors1: TMenuItem;
    InvertColors1: TMenuItem;
    procedure DisplayPanelResize(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  SHAPE_OFFSET = 4;

var
  Form1: TForm1;

implementation

{$R *.DFM}


procedure TForm1.DisplayPanelResize(Sender: TObject);
begin
  DemoShape.Top := SHAPE_OFFSET;
  DemoShape.Left := DemoShape.Top;
  DemoShape.Height := DisplayPanel.Height - 2 * SHAPE_OFFSET;
  DemoShape.Width := DisplayPanel.Width - 2 * SHAPE_OFFSET;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

end.
