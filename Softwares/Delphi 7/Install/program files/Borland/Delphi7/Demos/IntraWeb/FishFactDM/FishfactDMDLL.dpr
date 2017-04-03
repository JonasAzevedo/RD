library FishfactDMDLL;

(*

Assuming the virtual directory that contains this DLL is /iw/ the URL to start this application is
http://127.0.0.1/iw/fishfactdmdll.dll/start

*)

uses
  IWInitISAPI,
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  FFData in 'FFData.pas' {FFDatamodule: TDataModule},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase};

{$R *.res}

begin         
  IWRun(TFormMain, TIWServerController)
end.
