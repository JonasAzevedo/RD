library FishFactDLL;

uses
  IWInitISAPI,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  Main in 'Main.pas' {formMain: TIWFormModuleBase};

{$R *.RES}

begin
  IWRun(TFormMain, TIWServerController);
end.
