unit menudemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, ComCtrls;

type
  TMenuForm = class(TForm)
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
    procedure Randomize1Click(Sender: TObject);
    procedure Select1Click(Sender: TObject);
    procedure Randomize2Click(Sender: TObject);
    procedure Select2Click(Sender: TObject);
    procedure Circle1Click(Sender: TObject);
    procedure Ellipse1Click(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure Square1Click(Sender: TObject);
    procedure ThickOutline1Click(Sender: TObject);
    procedure RoundedShape1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Random1Click(Sender: TObject);
    procedure RandomizeColors1Click(Sender: TObject);
    procedure InvertColors1Click(Sender: TObject);
  private
    { Private declarations }
    Roundable: Boolean;

    function RandomColor: TColor;
    procedure AlterShape(shape: TShapeType; roundable: Boolean);
  public
    { Public declarations }
  end;

const
  SHAPE_OFFSET = 4;

var
  MenuForm: TMenuForm;

implementation

uses about;

{$R *.DFM}


procedure TMenuForm.DisplayPanelResize(Sender: TObject);
begin
  DemoShape.Top := SHAPE_OFFSET;
  DemoShape.Left := DemoShape.Top;
  DemoShape.Height := DisplayPanel.Height - 2 * SHAPE_OFFSET;
  DemoShape.Width := DisplayPanel.Width - 2 * SHAPE_OFFSET;
end;

procedure TMenuForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

function TMenuForm.RandomColor;
var
  red, green, blue: Byte;
begin
  red := Random(255);
  green := Random(255);
  blue := Random(255);

  Result := red or (green shl 8) or (blue shl 16);
end;

procedure TMenuForm.Randomize1Click(Sender: TObject);
begin
  DemoShape.Pen.Color := RandomColor;
end;

procedure TMenuForm.Select1Click(Sender: TObject);
begin
  try
    SolidColorDialog.Color := DemoShape.Pen.Color;
    if SolidColorDialog.Execute then
      DemoShape.Pen.Color := SolidColorDialog.Color;
  except
    ShowMessage('Color selection dialog failed to load');
  end;
end;

procedure TMenuForm.Randomize2Click(Sender: TObject);
begin
  DemoShape.Brush.Color := RandomColor;
end;

procedure TMenuForm.Select2Click(Sender: TObject);
begin
  AnyColorDialog.Color := DemoShape.Brush.Color;
  try
    if AnyColorDialog.Execute then
      DemoShape.Brush.Color := AnyColorDialog.Color;
  except
    ShowMessage('Color selection dialog failed to load.');
  end;
end;

procedure ToggleCheck(Sender: TObject);
var
  Item: TMenuItem;
begin
  Item := Sender as TMenuItem;
  Item.Checked := not Item.Checked;
end;

procedure SetCheck(Sender: TObject);
var
  Item: TMenuItem;
begin
  Item := Sender as TMenuItem;
  Item.Checked := True;
end;

procedure TMenuForm.AlterShape(shape: TShapeType; roundable: Boolean);
begin
  Self.Roundable := roundable;
  DemoShape.Shape := shape;
end;

procedure TMenuForm.Circle1Click(Sender: TObject);
begin
  SetCheck(Sender);
  AlterShape(stCircle, False);
end;

procedure TMenuForm.Ellipse1Click(Sender: TObject);
begin
  SetCheck(Sender);
  AlterShape(stEllipse, False);
end;

procedure TMenuForm.Rectangle1Click(Sender: TObject);
begin
  SetCheck(Sender);
  if RoundedShape1.Checked then
    AlterShape(stRoundRect, True)
  else
    AlterShape(stRectangle, True);
end;

procedure TMenuForm.Square1Click(Sender: TObject);
begin
  SetCheck(Sender);
  if RoundedShape1.Checked then
    AlterShape(stRoundSquare, True)
  else
    AlterShape(stSquare, True);
end;

procedure TMenuForm.ThickOutline1Click(Sender: TObject);
begin
  ToggleCheck(Sender);
  DemoShape.Pen.Width := 11 - DemoShape.Pen.Width;
end;

procedure TMenuForm.RoundedShape1Click(Sender: TObject);
begin
  ToggleCheck(Sender);
  case DemoShape.Shape of
    stRectangle:   DemoShape.Shape := stRoundRect;
    stRoundRect:   DemoShape.Shape := stRectangle;
    stSquare:      DemoShape.Shape := stRoundSquare;
    stRoundSquare: DemoShape.Shape := stSquare;
  end;
end;

procedure TMenuForm.About1Click(Sender: TObject);
var
  AboutBox: TAboutBox;
begin
  AboutBox := TAboutBox.Create(Self);
  try
    AboutBox.ShowModal;
  finally
    AboutBox.Free;
  end;
end;

procedure TMenuForm.Random1Click(Sender: TObject);
var
  newshape: TShapeType;
begin
  // Ensure we actually change the shape.
  repeat newshape := TShapeType(Random(6)) until
    newshape <> DemoShape.Shape;

  // Adjust the "Shape" and Rounded Shape" menu selections.
  case newshape of
    stEllipse: Ellipse1Click(Ellipse1);
    stCircle: Circle1Click(Circle1);
    stRectangle, stRoundRect:
      begin
        RoundedShape1.Checked := newshape = stRoundRect;
        Rectangle1Click(Rectangle1);
      end;
    stSquare, stRoundSquare:
      begin
        RoundedShape1.Checked := newshape = stRoundSquare;
        Square1Click(Square1);
      end;
    end;
end;

procedure TMenuForm.RandomizeColors1Click(Sender: TObject);
begin
  DemoShape.Brush.Color := RandomColor;
  DemoShape.Pen.Color := RandomColor;
end;

procedure TMenuForm.InvertColors1Click(Sender: TObject);
var
  i : Integer;
begin
  i := Integer(DemoShape.Brush.Color) xor $FFFFFF;
  DemoShape.Brush.Color := TColor(i);
end;

end.
