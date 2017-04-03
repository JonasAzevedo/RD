library IWISAPIProject;

uses
  IWInitISAPI,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  IWUnit1 in 'IWUnit1.pas' {formMain: TIWForm1};

{$R *.RES}

begin
  IWRun(TFormMain, TIWServerController);
end.
