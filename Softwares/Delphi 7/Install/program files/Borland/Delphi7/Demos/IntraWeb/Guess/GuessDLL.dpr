library GuessDLL;

(*

Assuming the virtual directory that contains this DLL is /iw/ the URL to start this application is
http://127.0.0.1/iw/guessdll.dll/start

*)

uses
  IWInitISAPI,
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  ServerController in 'ServerController.pas' {IWServerController: TDataModule};

{$R *.RES}

begin
  IWRun(TFormMain, TIWServerController);
end.
