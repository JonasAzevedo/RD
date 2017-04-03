unit Question3;

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  
  IWTemplateProcessorHTML, IWCompButton, IWLayoutMgr, IWCompCheckbox,
  IWCompListbox, IWCompText;

type
  TformQuestion3 = class(TIWAppForm)
    textPrompt1: TIWText;
    cmboType: TIWComboBox;
    textPrompt2: TIWText;
    textPrompt3: TIWText;
    cmboPhone: TIWComboBox;
    chckDiscount: TIWCheckBox;
    butnNext: TIWButton;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure butnNextClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  Discount,
  ServerController, Proposal;

procedure TformQuestion3.butnNextClick(Sender: TObject);
begin
  with TPCPSession(WebApplication.Data) do begin
    PlanLD := cmboType.ItemIndex > 0;
    Phone := cmboPhone.Items[cmboPhone.ItemIndex];
  end;
  if chckDiscount.Checked then begin
    TformDiscount.Create(WebApplication).Show;
  end else begin
    TformProposal.Create(WebApplication).Show;
  end;
  Release;
end;

end.
