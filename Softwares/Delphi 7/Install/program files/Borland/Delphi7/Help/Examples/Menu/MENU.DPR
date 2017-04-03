program menu;

uses
  Forms,
  menudemo in 'menudemo.pas' {MenuForm},
  about in 'about.pas' {AboutBox};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMenuForm, MenuForm);
  Application.Run;
end.
