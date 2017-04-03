program FishfactDM;

uses
  IWInitStandAlone,
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  FFData in 'FFData.pas' {FFDatamodule: TDataModule},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase};

{$R *.res}

begin         
  IWRun(TFormMain, TIWServerController)
end.
