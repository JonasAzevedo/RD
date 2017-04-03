unit Question1;

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  
  IWTemplateProcessorHTML, IWCompButton, IWCompEdit,
  IWLayoutMgr, IWCompText;

type
  TformQuestion1 = class(TIWAppForm)
    textPrompt: TIWText;
    editMinutes: TIWEdit;
    butnNext: TIWButton;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure butnNextClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  Question2,
  ServerController, SysUtils;

procedure TformQuestion1.butnNextClick(Sender: TObject);
begin
  TPCPSession(WebApplication.Data).PeakMins := StrToIntDef(editMinutes.Text, 0);
  TformQuestion2.Create(WebApplication).Show;
  Release;
end;

end.
