program Guess;

uses
  IWInitStandAlone,
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  ServerController in 'ServerController.pas' {IWServerController: TDataModule};

{$R *.res}

begin
  IWRun(TFormMain, TIWServerController);
end.
