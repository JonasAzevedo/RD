//
// this example demonstrates the use of TScrollBar, including how to
// properly set scrolling ranges and how to respond to the scroll bar
// notification events.  in addition, an interface is provided to the
// user to adjust the values to see how the different parameters affect
// the scrolling behavior.  no attempt is made to verify that the parameters
// supplied by the user make any sense.
//
unit scroldem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, ComCtrls, ExtCtrls;

type
  TScrollForm1 = class(TForm)
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Vertical: TLabel;
    ImgPanel: TPanel;
    Image: TImage;
    HScrollb: TScrollBar;
    VScrollb: TScrollBar;
    HUnits: TEdit;
    HPage: TEdit;
    HMax: TEdit;
    VUnits: TEdit;
    VPage: TEdit;
    VMax: TEdit;
    HUnitsUpDown: TUpDown;
    HPageUpDown: TUpDown;
    HMaxUpDown: TUpDown;
    VUnitsUpDown: TUpDown;
    VMaxUpDown: TUpDown;
    VPageUpDown: TUpDown;
    DefaultBtn: TButton;
    ApplyBtn: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Open1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    View1: TMenuItem;
    VScrollMenu: TMenuItem;
    HScrollMenu: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    OpenDialog: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure View1Click(Sender: TObject);
    procedure VScrollMenuClick(Sender: TObject);
    procedure HScrollMenuClick(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure VScrollbChange(Sender: TObject);
    procedure HScrollbScroll(Sender: TObject; ScrollCode: TScrollCode; var ScrollPos: Integer);
    procedure ImgPanelResize(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure ApplyBtnClick(Sender: TObject);
    procedure DefaultBtnClick(Sender: TObject);
    procedure UpDownClick(Sender: TObject; Button: TUDBtnType);

  private
    { Private declarations }
    Units: TPoint;
    FDirty: Boolean;

    procedure SetDirty(d: Boolean);
    procedure ImageLoad(filename: string);
    procedure ScrollAdjust(update: Boolean);
    procedure ScrollReset;
    procedure UpdateDisplay;
    property Dirty: Boolean read FDirty write SetDirty;

  public
    //constructor Create(Owner: TComponent); override;
    { Public declarations }
  end;

var
  ScrollForm1: TScrollForm1;

implementation

uses about;


{$R *.DFM}

const
  DEF_SCROLL_UNITS = 8;

procedure TScrollForm1.FormCreate(Sender: TObject);
begin
  ScrollReset;
end;

procedure TScrollForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TScrollForm1.View1Click(Sender: TObject);
begin
  HScrollMenu.Checked := HScrollb.Visible;
  VScrollMenu.Checked := VScrollb.Visible;
end;
  
procedure TScrollForm1.VScrollMenuClick(Sender: TObject);
begin
  VScrollb.Visible := not VScrollb.Visible;
end;

procedure TScrollForm1.HScrollMenuClick(Sender: TObject);
begin
  HScrollb.Visible := not HScrollb.Visible;
end;

procedure TScrollForm1.Open1Click(Sender: TObject);
begin
  if OpenDialog.Execute then
    ImageLoad(OpenDialog.FileName);
end;

//
// Hooking the OnChange event is the simplest way to handle the
// scrollbar notification.  Note the check to ensure that the 
// that the sender is the vertical scrollbar.  While irrelevant for
// this example, some forms may need to distinguish between various
// scrollbars.
//
procedure TScrollForm1.VScrollbChange(Sender: TObject);
begin
  if Sender as TScrollBar = VScrollb then
    Image.Top := -Units.y * VScrollb.Position;
end;

//
// Hooking the OnScroll event is another option for handling the
// scrollbar notification.  This is needed for a few reasons:
//   1) you want to do something special with particular scroll
//      events
//   2) the range of your scrollbar is larger than [0, 65535].  in
//      this case, the ScrollPos element is invalid and much of the
//      scrolling has to be done manually.
//
procedure TScrollForm1.HScrollbScroll(Sender: TObject; ScrollCode: TScrollCode; var ScrollPos: Integer);
begin
  if HScrollb.Max <= 65535 then
    Image.Left := -Units.x * ScrollPos
  else
    ShowMessage('Scrollbar ranges > 65535 not supported');
end;

//
// The panel's size doesn't change in this example, so
// this event will only happen once.  In general, the range
// of the scrollbars will need to be changed when the size of
// the visible window is changed.
//
procedure TScrollForm1.ImgPanelResize(Sender: TObject);
begin
  ScrollAdjust(True);
end;

function scale(n, u: Integer): Integer;
begin
  Result := (n + u - 1) div u;
end;

function maxval(a, b: Integer): Integer;
begin
  if a >= b then
    Result := a
  else
    Result := b;
end;

//
// Readjust the range of the scrollbars to match the new size
// of the visible window.  (Also called by ScrollReset to avoid
// duplicating the code).
//
procedure TScrollForm1.ScrollAdjust(update: Boolean);
begin
  // set the maximum scrolling to be large enough to scroll the whole
  // image, but not so much that it can scroll off the window.  we
  // divide by the number of Units (>1) because scrolling one pixel at
  // a time is way too slow for most images of any size.

  if Image.Picture <> nil then
  begin
    HScrollb.Max := maxval(0, scale(Image.Width - ImgPanel.Width, Units.x));
    VScrollb.Max := maxval(0, scale(Image.Height - ImgPanel.Height, Units.y));
  end;

  if update then
    UpdateDisplay;
end;

//
// ScrollReset() is used to put the scrollbars into a sane "initial"
// state.  this needs to be done each time the image is changed,
// since the amount we scroll depends upon the image size.  for
// simplicity, the special case of "new image size" == "old image size"
// is ignored.
//
procedure TScrollForm1.ScrollReset;
begin
  // this fixed size works nice, although in some cases basing
  // the scroll units upon the size of the image works well, too.
  Units.x := DEF_SCROLL_UNITS;
  Units.y := DEF_SCROLL_UNITS;

  if Image.Picture <> nil then
  begin
    // move the image and the scrollbars to their "home" location
    Image.Top := 0;
    Image.Left := 0;
    HScrollb.Position := 0;
    VScrollb.Position := 0;

    // negative scrolling ranges aren't worth the trouble, so set
    // the range to go from [0, M].  See 'ScrollAdjust' to see how M
    // is calculated.
    HScrollb.Min := 0;
    VScrollb.Min := 0;
    ScrollAdjust(False);

    HScrollb.LargeChange := scale(HScrollb.Max, Units.x);
    VScrollb.LargeChange := scale(VScrollb.Max, Units.y);

    HScrollb.Visible := True;
    VScrollb.Visible := True;
  end;

  UpdateDisplay;
end;


procedure TScrollForm1.SetDirty(d: Boolean);
begin
  if d <> FDirty then
  begin
    FDirty := d;
    ApplyBtn.Enabled := FDirty;
  end;
end;


procedure TScrollForm1.ImageLoad(filename: string);
begin
  Image.Picture.LoadFromFile(filename);
  ScrollReset;
end;

procedure TScrollForm1.About1Click(Sender: TObject);
var
  about: TAboutBox;
begin
  about := TAboutBox.Create(Self);
  try
    about.ShowModal;
  finally
    about.Free;
  end;
end;


procedure TScrollForm1.ApplyBtnClick(Sender: TObject);
begin
  Units.x := HUnitsUpDown.Position;
  HScrollb.LargeChange := HPageUpDown.Position;
  HScrollb.Max := HMaxUpDown.Position;

  Units.y := VUnitsUpDown.Position;
  VScrollb.LargeChange := VPageUpDown.Position;
  VScrollb.Max := VMaxUpDown.Position;

  Dirty := False;
end;

procedure TScrollForm1.DefaultBtnClick(Sender: TObject);
begin
  ScrollReset;
  Dirty := False;
end;

procedure TScrollForm1.UpDownClick(Sender: TObject; Button: TUDBtnType);
begin
  Dirty := True;
end;

procedure TScrollForm1.UpdateDisplay;
begin
  HUnitsUpDown.Position := Units.x;
  HPageUpDown.Position := HScrollb.LargeChange;
  HMaxUpDown.Position := HScrollb.Max;

  VUnitsUpDown.Position := Units.y;
  VPageUpDown.Position := VScrollb.LargeChange;
  VMaxUpDown.Position := VScrollb.Max;

  Dirty := False;
end;

end.
