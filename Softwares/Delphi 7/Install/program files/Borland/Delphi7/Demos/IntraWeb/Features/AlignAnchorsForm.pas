unit AlignAnchorsForm;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWHTMLControls, IWCompLabel,
  IWCompButton, IWControl, IWCompText, IWCompFlash, MenuFrame, IWContainer,
  IWRegion, IWCompRectangle;

type
  TformAlignAnchor = class(TIWAppForm)
    framMenu1: TframMenu;
    IWRegion1: TIWRegion;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    IWRectangle3: TIWRectangle;
    IWButton1: TIWButton;
    IWRegion2: TIWRegion;
    IWRectangle5: TIWRectangle;
    IWRectangle4: TIWRectangle;
    IWRectangle6: TIWRectangle;
    IWRectangle7: TIWRectangle;
    IWRectangle8: TIWRectangle;
  protected
  public
  end;

implementation

uses IWForm;
{$R *.dfm}

initialization
  Randomize;
end.
