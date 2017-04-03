unit bmpformu;

// A TBitmap is an encapsulation of the windows BITMAP and PALETTE which
// manages realizing of the palette automatically.
//
// The bitmap can be loaded from a .BMP file (LoadFromFile method) or a
// resource (LoadFromResourceName or LoadFromResourceID method) and saved
// back to a file (SaveToFile method).  It can be drawn on a canvas by
// using the TCanvas' Draw or StretchDraw method.  The size of the bitmap
// can be determined by using the Height and Width properties of TBitmap.
//
// The example below illustrates the use of the following:
//
// TBitmap, Palette, LoadFromFile, Draw, Height, Width

// Be sure that a small bitmap file named bor6.bmp is present in the same
// directory as the .exe file.

// Disclaimer: This is an example of using TBitmaps and is not intended to
// be an efficient method of tiling a form.

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TBmpForm = class(TForm)
    Button1: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Bitmap: TBitmap;
    procedure ScrambleBitmap;
    procedure WMEraseBkgnd(var m: TWMEraseBkgnd); message WM_ERASEBKGND;
  public
    { Public declarations }
  end;

var
  BmpForm: TBmpForm;

implementation


{$R *.DFM}


procedure TBmpForm.FormCreate(Sender: TObject);
begin
  Bitmap := TBitmap.Create;
  Bitmap.LoadFromFile('bor6.bmp');
end;

procedure TBmpForm.FormDestroy(Sender: TObject);
begin
  Bitmap.Free;
end;

// since we're going to be painting the whole form, handling this
// message will suppress the uneccessary repainting of the background
// which can result in flicker.
procedure TBmpform.WMEraseBkgnd(var m : TWMEraseBkgnd);
begin
  m.Result := LRESULT(False);
end;

procedure TBmpForm.FormPaint(Sender: TObject);
var
  x, y: Integer;
begin
  y := 0;
  while y < Height do
  begin
    x := 0;
    while x < Width do
    begin
      Canvas.Draw(x, y, Bitmap);
      x := x + Bitmap.Width;
    end;
    y := y + Bitmap.Height;
  end;
end;

procedure TBmpForm.Button1Click(Sender: TObject);
begin
  ScrambleBitmap;
  Invalidate;
end;


//
// scrambling the bitmap is easy when it's has 256 colors:
// we just need to change each of the color in the palette
// to some other value.
//
procedure TBmpForm.ScrambleBitmap;
var
  pal: PLogPalette;
  hpal: HPALETTE;
  i: Integer;
begin
  pal := nil;
  try
    GetMem(pal, sizeof(TLogPalette) + sizeof(TPaletteEntry) * 255);
    pal.palVersion := $300;
    pal.palNumEntries := 256;
    for i := 0 to 255 do
    begin
      pal.palPalEntry[i].peRed := Random(255);
      pal.palPalEntry[i].peGreen := Random(255);
      pal.palPalEntry[i].peBlue := Random(255);
    end;
    hpal := CreatePalette(pal^);
    if hpal <> 0 then
      Bitmap.Palette := hpal;
  finally
    FreeMem(pal);
  end;
end;

end.
