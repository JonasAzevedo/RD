library FeaturesDLL;

uses
  IWInitISAPI,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  Global in 'Global.pas',
  MenuFrame in 'MenuFrame.pas' {framMenu: TFrame};

{$R *.RES}

begin
  IWRun(TFormMain, TIWServerController);
end.
