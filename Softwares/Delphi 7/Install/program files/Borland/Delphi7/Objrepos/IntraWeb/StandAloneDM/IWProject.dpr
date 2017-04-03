program IWProject;
{PUBDIST}

uses
  IWInitStandAlone,
  ServerController in 'ServerController.pas' {IWServerController: TDataModule},
  IWUnit1 in 'IWUnit1.pas' {formMain: TIWForm1},
  DatamoduleUnit in 'DatamoduleUnit.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  IWRun(TFormMain, TIWServerController);
end.
