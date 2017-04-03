library IWDSOProject;

uses
  ApacheApp,
  IWInitApache,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  IWUnit1 in 'IWUnit1.pas' {formMain: TIWForm1};

{$E so}

{$R *.RES}

exports
  apache_module name 'IWDSOProject_module';

begin
  IWRun(TFormMain, TIWServerController);
end.
