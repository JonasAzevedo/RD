program PCachUp;

uses
  Forms,
  CUpMnFrm in 'CUpMnFrm.pas' {Form1},
  CUpDM in 'CUpDM.pas' {DataModuleCache: TDataModule},
  CUpError in 'CUpError.pas' {FormError};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModuleCache, DataModuleCache);
  Application.CreateForm(TFormError, FormError);
  Application.Run;
end.
