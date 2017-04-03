program FormData;
{PUBDIST}

uses
  IWInitStandAlone,
  ServerController in 'ServerController.pas' {IWServerController: TDataModule},
  Main in 'Main.pas' {formMain: TIWAppForm},
  Dialog in 'Dialog.pas' {formDialog: TIWAppForm};

{$R *.res}

begin
  IWRun(TFormMain, TIWServerController);
end.
