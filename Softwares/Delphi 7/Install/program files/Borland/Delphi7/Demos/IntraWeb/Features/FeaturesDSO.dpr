library FeaturesDSO;

uses
  ApacheApp,
  IWInitApache,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  Global in 'Global.pas',
  MenuFrame in 'MenuFrame.pas' {framMenu: TFrame};

{$E so}

{$R *.res}

exports
  apache_module name 'FeaturesDSO_module';

begin
  IWRun(TFormMain, TIWServerController);
end.
