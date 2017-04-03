unit Question2;

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}

  IWTemplateProcessorHTML, IWCompButton, IWCompEdit, IWLayoutMgr,
  IWCompText;

type
  TformQuestion2 = class(TIWAppForm)
    editMinutes: TIWEdit;
    textPrompt: TIWText;
    butnNext: TIWButton;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure butnNextClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  CallingPlan,
  ServerController,
  SysUtils;

procedure TformQuestion2.butnNextClick(Sender: TObject);
begin
  TPCPSession(WebApplication.Data).OffPeakMins := StrToIntDef(editMinutes.Text, 0);
  TformCallingPlan.Create(WebApplication).Show;
  Release;
end;

end.
