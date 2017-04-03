unit Proposal;

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}

  IWTemplateProcessorHTML, IWCompLabel, IWLayoutMgr;

type
  TformProposal = class(TIWAppForm)
    IWLabel1: TIWLabel;
    lablPreparedFor: TIWLabel;
    lablName: TIWLabel;
    lablAddress1: TIWLabel;
    lablAddress2: TIWLabel;
    lablCityStateZip: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    lablDiscountLabel: TIWLabel;
    lablPlan: TIWLabel;
    lablPhoneOption: TIWLabel;
    lablDiscount: TIWLabel;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure IWFormModuleBaseCreate(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  ServerController;

procedure TformProposal.IWFormModuleBaseCreate(Sender: TObject);
begin
  with TPCPSession(WebApplication.Data) do begin
    lablName.Caption := Name;
    lablAddress1.Caption := Address1;
    lablAddress2.Caption := Address2;
    lablCityStateZip.Caption := City + ', ' + State + ' ' + Zip;
    lablPlan.Caption := Plan;
    lablPhoneOption.Caption := Phone;
    lablDiscount.Caption := CreditUnion;
    lablDiscountLabel.Visible := Length(CreditUnion) > 0;
  end;
  WebApplication.Terminate;
end;

end.
