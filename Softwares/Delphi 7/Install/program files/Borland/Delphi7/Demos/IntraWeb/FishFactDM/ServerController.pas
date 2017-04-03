unit ServerController;
{PUBDIST}

interface

uses
  SysUtils, Classes,
  Forms, FFData,
  IWServerControllerBase, IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWAppForm);
  private
  public
  end;

  TFFSession = class(TComponent)
  public
    FFDatamodule: TFFDatamodule;
    //
    constructor Create(AOwner: TComponent); override;
  end;

implementation
{$R *.DFM}

{ TFFSession }

constructor TFFSession.Create(AOwner: TComponent);
begin
  inherited;
  FFDatamodule := TFFDatamodule.Create(AOwner);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWAppForm);
begin
  ASession.Data := TFFSession.Create(ASession);
end;

end.
 