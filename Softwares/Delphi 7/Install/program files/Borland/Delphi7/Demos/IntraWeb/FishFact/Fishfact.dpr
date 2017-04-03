program Fishfact;

uses
  IWInitStandAlone,
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase};

{$R *.res}

begin
  IWRun(TFormMain, TIWServerController);
end.
