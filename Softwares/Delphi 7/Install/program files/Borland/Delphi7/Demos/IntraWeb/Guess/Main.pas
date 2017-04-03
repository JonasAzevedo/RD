unit Main;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}

  IWHTMLControls, IWControl, IWCompButton,
  IWCompLabel, IWCompEdit, IWContainer, IWRegion;

type
  TformMain = class(TIWAppForm)
    linkQuit: TIWLink;
    IWRegion1: TIWRegion;
    editGuess: TIWEdit;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    butnGuess: TIWButton;
    lablResponse: TIWLabel;
    lablGuessNo: TIWLabel;
    procedure IWFormModuleBaseCreate(Sender: TObject);
    procedure butnGuessClick(Sender: TObject);
    procedure linkQuitClick(Sender: TObject);
  protected
    FGuessCount: Integer;
    FMagicNo: Integer;
  public
  end;

implementation
{$R *.dfm}

procedure TformMain.IWFormModuleBaseCreate(Sender: TObject);
begin
  FMagicNo := Random(100) + 1;
  FGuessCount := 1;
end;

procedure TformMain.butnGuessClick(Sender: TObject);
var
  LGuess: Integer;
begin
  lablResponse.Caption := '';
  LGuess := StrToIntDef(Trim(editGuess.Text), MaxInt);
  if LGuess = MaxInt then begin
    WebApplication.ShowMessage(editGuess.Text + ' is not a valid number.');
  end else if (LGuess < 1) or (LGuess > 100) then begin
    WebApplication.ShowMessage('Only numbers between 1 and 100 are valid.');
  end else if LGuess < FMagicNo then begin
    lablResponse.Caption := IntToStr(LGuess) + ' is too low.';
    Inc(FGuessCount);
  end else if LGuess > FMagicNo then begin
    lablResponse.Caption := IntToStr(LGuess) + ' is too high.';
    Inc(FGuessCount);
  end else if LGuess = FMagicNo then begin
    WebApplication.Terminate('Fantastic! You guessed it in ' + IntToStr(FGuessCount) + ' guesses.');
  end;
  lablResponse.Visible := Length(lablResponse.Caption) > 0;
  lablGuessNo.Caption := 'Guess #' + IntToStr(FGuessCount);
  editGuess.Text := '';
end;

procedure TformMain.linkQuitClick(Sender: TObject);
begin
  WebApplication.Terminate('Thank you for playing!');
end;

initialization
  Randomize;
end.
