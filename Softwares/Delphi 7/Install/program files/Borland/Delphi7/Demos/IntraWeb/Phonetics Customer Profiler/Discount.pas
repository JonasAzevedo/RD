unit Discount;

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  
  IWTemplateProcessorHTML, IWCompButton, IWCompEdit,
  IWCompLabel, IWLayoutMgr, IWCompListbox;

type
  TformDiscount = class(TIWAppForm)
    lablCreditUnion: TIWLabel;
    lablPromoCode: TIWLabel;
    lboxCreditUnion: TIWListbox;
    editPromoCode: TIWEdit;
    butnNext: TIWButton;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure butnNextClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  ServerController, Proposal,
  SysUtils;

procedure TformDiscount.butnNextClick(Sender: TObject);
begin
  with TPCPSession(WebApplication.Data) do begin
    CreditUnion := lboxCreditUnion.Items[lboxCreditUnion.ItemIndex];
    PromoCode := Trim(editPromoCode.Text);
  end;
  TformProposal.Create(WebApplication).Show;
  Release;
end;

end.
