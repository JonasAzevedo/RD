unit ServerController;
{PUBDIST}

interface

uses
  SysUtils, Classes, Forms, IWServerControllerBase, IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWAppForm);
  private
  public
  end;

  TPCPSession = class(TComponent)
  public
    Name: string;
    Address1: string;
    Address2: string;
    City: string;
    State: string;
    Zip: string;
    //
    PlanLD: Boolean;
    Phone: string;
    //
    CreditUnion: string;
    PromoCode: string;
    //
    Plan: string;
    PeakMins: Integer;
    OffPeakMins: Integer;
  end;

implementation
{$R *.DFM}

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWAppForm);
begin
  ASession.Data := TPCPSession.Create(ASession);
end;

end.
