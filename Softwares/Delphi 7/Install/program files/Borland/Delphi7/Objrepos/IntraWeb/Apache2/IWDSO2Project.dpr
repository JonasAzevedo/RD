library IWDSO2Project;

uses
  IWInitApacheTwo,
  ApacheTwoApp, 
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  IWUnit1 in 'IWUnit1.pas' {formMain: TIWForm1};

{$E so}

{$R *.RES}

exports
  apache_module name 'IWDSO2Project_module';

begin
  IWRun(TFormMain, TIWServerController);
end.
