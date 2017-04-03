program regini;

uses
  Forms,
  reginid in 'reginid.pas' {RegIniForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TRegIniForm, RegIniForm);
  Application.Run;
end.
