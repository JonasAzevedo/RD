program combobox;

uses
  Forms,
  combform in 'combform.pas' {ComboForm},
  inptform in 'inptform.pas' {InputForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TComboForm, ComboForm);
  Application.CreateForm(TInputForm, InputForm);
  Application.Run;
end.
